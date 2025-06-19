// lab2 pro1
/*document.querySelector("#btn1").addEventListener("click",()=>{
    document.getElementsByTagName("body")[0].style.backgroundColor="red";
});
document.querySelector("#btn2").addEventListener("click",()=>{
    document.getElementsByTagName("body")[0].style.backgroundColor="green";
});
document.querySelector("#btn3").addEventListener("click",()=>{
    document.getElementsByTagName("body")[0].style.backgroundColor="yellow";
});*/

// lab2 pro2

/*document.querySelector("#btn1").addEventListener("click",(e)=>{
    console.log(e.type);
});
document.querySelector("#btn1").addEventListener("dblclick",(e)=>{
    console.log(e.type);
});
document.querySelector("#btn1").addEventListener("mouseout",(e)=>{
    console.log(e.type);
});
document.querySelector("#btn1").addEventListener("mouseover",(e)=>{
    console.log(e.type);
});
document.querySelector("#btn1").addEventListener("keyup",(e)=>{
    console.log(e.type);
});
document.querySelector("#btn1").addEventListener("keydown",(e)=>{
    console.log(e.type);
});
document.querySelector("#inp").addEventListener("keypress",(e)=>{
    console.log(e.type);
});*/

//lab2 pro3

/*document.querySelector("#head1").addEventListener("mouseover",()=>{
    document.querySelector("#head1").style.color="red";
});
document.querySelector("#head1").addEventListener("mouseout",()=>{
    document.querySelector("#head1").style.color="black";
});*/

//lab2 pro4

let inp = document.querySelector("#inp");

inp.addEventListener("keypress",(e)=>{
    if((e.keyCode>=65&&e.keyCode<=90)||(e.keyCode>=97&&e.keyCode<=122)){
        console.log("Alfabet");
    }
    else if(e.keyCode>=48&&e.keyCode<=57){
        console.log("Number");
    }
    else if(e.keyCode>=33&&e.keyCode<=46){
        console.log("symbol");
    }

});