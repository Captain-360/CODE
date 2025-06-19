let length = parseInt(prompt("enter a length of array"));
let arr = [];
for(let i=0;i<length;i++){
    arr.push(parseInt(prompt("enter a value in intiger")));
}
document.writeln("unsorted value-->");
for(let i=0;i<arr.length;i++){
    document.writeln(arr[i]);
}
document.writeln("sorted value-->");
for(let i=0;i<arr.length-1;i++){
    for(let j=0;j<length-i-1;j++){
        if(arr[j]>arr[j+1]){
            let temp = arr[j];
            arr[j]=arr[j+1];
            arr[j+1]=temp;
        }
    }
}
for(let i=0;i<arr.length;i++){
    document.writeln(arr[i]);
}