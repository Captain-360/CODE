let number = parseInt(prompt("enter a number"));

let primeNumber = (num) => {
    if (num <= 1) {
        return false; 
    }
    for (let i = 2; i <= Math.sqrt(num); i++) {
        if (num % i == 0) {
            return false; 
        }
    }
    return true;
};

let f = primeNumber(number);
if (f === true) {
    console.log("prime");
} else {
    console.log("not prime");
}