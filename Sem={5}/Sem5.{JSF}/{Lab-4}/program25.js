let number1 = parseInt(prompt("enter a number"));
let number2 = parseInt(prompt("enter a number"));

let primeNumber = (num1,num2) => {
    if (num1 <= 1) {
        return false; 
    }
    for (let i = num1; i <= Math.sqrt(num2); i++) {
        if (num2 % i == 0) {
            return false; 
        }
    }
    return true;
};

let f = primeNumber(number1,number2);
if (f === true) {
    console.log("prime");
} else {
    console.log("not prime");
}