import { LightningElement } from 'lwc';

export default class HelloComp extends LightningElement {

    areDetailsVisible = false;

    handleClick(){
        
        this.areDetailsVisible = true;
    }
}