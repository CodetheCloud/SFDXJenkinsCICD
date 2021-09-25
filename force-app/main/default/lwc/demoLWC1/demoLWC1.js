import { LightningElement } from 'lwc';


export default class DemoLWC1 extends LightningElement {
    //javascript
    greeting = 'Everyone';

    areDetailsVisible = true;

    handleChange(event){
        console.log(event.target.label);
        this.greeting = event.target.value;
    }

    handleClick1(){
        console.log('show');
        this.areDetailsVisible = true;
    }

    handleClick2(){
        console.log('dont show');
        this.areDetailsVisible = false;
    }

    

}