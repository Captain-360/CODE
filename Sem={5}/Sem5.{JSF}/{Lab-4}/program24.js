num = parseInt(prompt("enter a number"));

let peli=(n)=>{
    let rev=1,rim=0;
    rim = n % 10;
    rev = (rev*10)+rim;
    n/=10;
}

peli(num);