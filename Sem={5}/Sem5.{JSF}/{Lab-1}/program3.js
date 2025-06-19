let length = parseInt(prompt("enter a length of array"));
let array = [];
for(let i=0;i<length;i++){
    array.push(prompt("enter a country name"));
}
for(let i=0;i<array.length;i++){
    document.writeln(array[i]);
}