let array1 = ["p","nk"]
console.log(`join mathod : ${array1.join("riya")}`);
let array2 = "priy ank"
console.log(`split mathod : ${array2.split(" ")}`);
let array3 = [1,2,3,4,5,6]
console.log(`includ mathod : ${array3.includes(5)}`);
console.log(`includ mathod : ${array3.includes(50)}`);
console.log(`find mathod : ${array3.find((i)=>i<=5)}`);
console.log(`find mathod : ${array3.find((i)=>i>=10)}`);

let array5 = [2,4,6,8,10];

console.log(array5.every((n)=>{
    if(n%2==0){
        return 1;
    }
}));

let a = parseInt(prompt(`enter a value 1`));
let b = parseInt(prompt(`enter a value 2`));
let sum = (a,b) => {
    return a+b;
}
console.log(`sum of this is:${sum(a,b)}`);