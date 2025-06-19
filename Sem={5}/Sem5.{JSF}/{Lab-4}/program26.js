let array = [
    {
        name : "priyank",
        age : "20",
        education : "BCA"
    },
    {
        name : "manisha",
        age : "22",
        education : "MCA"
    },
]

let name = prompt("enter a name");
let age = parseInt(prompt("enter a name"));
let education = prompt("enter a education");

array.push({
    name,
    age,
    education
})

console.log(array);