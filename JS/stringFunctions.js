let str = "Hello, world!";

// length
console.log("Length:", str.length); // Output: 13

// charAt
console.log("Character at index 0:", str.charAt(0)); // Output: H

// charCodeAt
console.log("Unicode value of character at index 0:", str.charCodeAt(0)); // Output: 72

// indexOf
console.log("Index of 'o':", str.indexOf("o")); // Output: 4

// lastIndexOf
console.log("Last index of 'o':", str.lastIndexOf("o")); // Output: 8

// substring
console.log("Substring from index 1 to 4:", str.substring(1, 5)); // Output: ello

// slice
console.log("Slice from index 1 to 5:", str.slice(1, 6)); // Output: ello,

// substr
console.log("Substring from index 1 with length 5:", str.substr(1, 5)); // Output: ello,

// replace
console.log("Replacing 'world' with 'everyone':", str.replace("world", "everyone")); // Output: Hello, everyone!

// toUpperCase
console.log("Uppercase:", str.toUpperCase()); // Output: HELLO, WORLD!

// toLowerCase
console.log("Lowercase:", str.toLowerCase()); // Output: hello, world!

// concat
console.log("Concatenated:", str.concat(" Have a nice day!")); // Output: Hello, world! Have a nice day!

// trim
let paddedStr = "   Hello, world!   ";
console.log("Trimmed:", paddedStr.trim()); // Output: Hello, world!

// split
let words = str.split(" ");
console.log("Words:", words); // Output: ["Hello,", "world!"]


const strPrim = "foo"; 
const strPrim2 = String(1); 
const strPrim3 = String(true); 
const strObj = new String(strPrim);

console.log(typeof strPrim); // "string"
console.log(typeof strPrim2); // "string"
console.log(typeof strPrim3); // "string"
console.log(typeof strObj); // "object"
