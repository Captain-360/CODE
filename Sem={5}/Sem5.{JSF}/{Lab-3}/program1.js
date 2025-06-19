let n = prompt("enter a number");
fun1(n);
function fun1(n){
    console.log(`power is : ${fun2(n)}`);
}
function fun2(n){
 return n*n;
}