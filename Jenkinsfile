#!groovy
import groovy.json.JsonSlurperClassic
node {

    def BUILD_NUMBER=env.BUILD_NUMBER
    def RUN_ARTIFACT_DIR="tests/${BUILD_NUMBER}"
    def SFDC_USERNAME

    def HUB_ORG=env.HUB_ORG_DH
    def SFDC_HOST = env.SFDC_HOST_DH
    def JWT_KEY_CRED_ID = env.JWT_CRED_ID_DH
    def CONNECTED_APP_CONSUMER_KEY=env.CONNECTED_APP_CONSUMER_KEY_DH

	
    def PROPS = readProperties file:'props.txt';
    def BUILD_START_TAG = "${PROPS['START_TAG']}"
    def CI_ACTIVE = "${PROPS['IS_ACTIVE']}"
    def SPECIFIED_TESTS = "${PROPS['SPECIFIED_TESTS']}"
    def TEST_CLASS_NAMES = "${PROPS['TEST_CLASS_NAMES']}"

    println BUILD_START_TAG
    println CI_ACTIVE
    println SPECIFIED_TESTS
    println TEST_CLASS_NAMES

	
    println 'KEY IS' 
    println JWT_KEY_CRED_ID
    println HUB_ORG
    println SFDC_HOST
    println CONNECTED_APP_CONSUMER_KEY
    def toolbelt = tool 'toolbelt'
	
    stage('checkout source') {
        // when running in multi-branch job, one must issue this command
        checkout scm
    }

    withCredentials([file(credentialsId: JWT_KEY_CRED_ID, variable: 'jwt_key_file')]) {
        stage('Deploye Code') {
            if (isUnix()) {
                rc = sh returnStatus: true, script: "${toolbelt}/sfdx force:auth:jwt:grant --clientid ${CONNECTED_APP_CONSUMER_KEY} --username ${HUB_ORG} --jwtkeyfile ${jwt_key_file} --setdefaultdevhubusername --instanceurl ${SFDC_HOST}"
            }else{
                 rc = bat returnStatus: true, script: "\"${toolbelt}/sfdx\" force:auth:jwt:grant --clientid ${CONNECTED_APP_CONSUMER_KEY} --username ${HUB_ORG} --jwtkeyfile \"${jwt_key_file}\" --setdefaultdevhubusername --instanceurl ${SFDC_HOST}"
            }
            if (rc != 0) { error 'hub org authorization failed' }

		println rc
		println 'current branch is '+ env.BRANCH_NAME
		if(env.BRANCH_NAME == 'main'){
			
			// need to pull out assigned username
			if (isUnix()) {
				rmsg = sh returnStdout: true, script: "${toolbelt}/sfdx force:mdapi:deploy --wait 10 -d manifest/. -u ${HUB_ORG}"
			}else{
			   rmsg = bat returnStdout: true, script: "\"${toolbelt}/sfdx\" force:source:deploy --manifest manifest/package.xml -u ${HUB_ORG}"
			}		
		}
		else if(env.BRANCH_NAME == 'DryRun'){
			// need to pull out assigned username
			if (isUnix()) {
				rmsg = sh returnStdout: true, script: "${toolbelt}/sfdx force:mdapi:deploy --checkonly --wait 10 -d manifest/. -u ${HUB_ORG}"
			}else{
			   rmsg = bat returnStdout: true, script: "\"${toolbelt}/sfdx\" force:source:deploy --checkonly --manifest manifest/package.xml -u ${HUB_ORG}"
			}
			
		}
			
			  
            printf rmsg
            println('Hello from a Job DSL script!')
            println(rmsg)
        }
    }
}
