var name="diwakar";
name="ashok";
console.log(name);

setTimeout(()=>{
    console.log("timeout")
},2000);

/*setInterval(()=>{
    console.log("setinterval")
},2000);*/
//anonymous functions
var greet=function(){
    for(var i=0;i<4;i++){
        console.log(i);
    }
}
greet();
//arrow functions
(()=>{
    console.log("This is arrow syntax of anaonymous function")
})();
//iicf
(function(){
    console.log("immediately invoked function");
})();
//array functions.
var products=["mango","apple","jackfruit","orange","banana"];
products.map((products)=>{
    console.log(products);
})
var productDescription=[
    {pid: 123,pName: "mango",pPrice:200},
    {pid: 124,pName: "apple",pPrice:400},
    {pid: 121,pName: "jackfruit",pPrice:600},
    {pid: 129,pName: "orange",pPrice: 400},
    {pid: 120,pName: "banana",pPrice: 60},
]
productDescription.map((products,index)=>{
    console.log(index);
    console.log(products);
})