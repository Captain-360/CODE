class Demo{
    a;
    b;
    constructor(a,b){
        this.a=a;
        this.b=b;
        console.log(`ans is : ${a+b}`);
    }
    mul(a,b){
        return a*b;
    }    
}
const demo1 = new Demo(20,30);
console.log(`multiply:${demo1.mul(30,54)}`);