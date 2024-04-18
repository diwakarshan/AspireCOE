var path=require('path');
var os=require('os');

var filename={dir:"\\dir3\\dir2",base:"text.txt"};

var exactPath=path.format(filename);
console.log(exactPath);

var xpath=path.join("test","dummy","basefile.txt")

console.log(xpath);

console.log(os.arch())

console.log(os.release());