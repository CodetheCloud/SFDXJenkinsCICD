#!groovy
import groovy.json.JsonSlurperClassic
node {

    def BUILD_NUMBER=env.BUILD_NUMBER
    def RUN_ARTIFACT_DIR="tests/${BUILD_NUMBER}"
    def SFDC_USERNAME

    def HUB_ORG='tilak@cloudy.com'
    def SFDC_HOST = 'https://login.salesforce.com'
    def JWT_KEY_CRED_ID = 'd0b98981-fd5c-4f0e-bfa0-3a0d45b4f7a3'
    def CONNECTED_APP_CONSUMER_KEY= '3MVG9l2zHsylwlpQ.nS.T3L2YOfW6P2S6HbCFzm2Ca6zH92S_jgv8u3fiucQiznRLP2js533RZ4nk1uRTrByi'
	
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
    

    stage('checkout source') {
        // when running in multi-branch job, one must issue this command
        checkout scm
    }

    withCredentials([file(credentialsId: JWT_KEY_CRED_ID, variable: 'jwt_key_file')]) {
        stage('Deploye Code') {
            if (isUnix()) {
                rc = sh returnStatus: true, script: "sfdx force:auth:jwt:grant --clientid ${CONNECTED_APP_CONSUMER_KEY} --username ${HUB_ORG} --jwtkeyfile ${jwt_key_file} --setdefaultdevhubusername --instanceurl ${SFDC_HOST}"
            }else{
                 rc = bat returnStatus: true, script: "sfdx force:auth:jwt:grant --clientid ${CONNECTED_APP_CONSUMER_KEY} --username ${HUB_ORG} --jwtkeyfile \"${jwt_key_file}\" --setdefaultdevhubusername --instanceurl ${SFDC_HOST}"
            }
            if (rc != 0) { error 'hub org authorization failed' }

			println rc
			print('this is going to deploy now for sure')
			
			// need to pull out assigned username
			if (isUnix()) {
				rmsg = sh returnStdout: true, script: "sfdx force:mdapi:deploy --wait 10 -d manifest/. -u ${HUB_ORG}"
			}else{
			   rmsg = bat returnStdout: true, script: "sfdx force:mdapi:deploy --wait 10 -d manifest/. -u ${HUB_ORG}"
			}
			  
            printf rmsg
            println('Hello from a Job DSL script!')
            println(rmsg)
        }
    }
}
