const bodyParser=require('body-parser');
var express=require('express');

var server=express();
server.use(bodyParser.urlencoded({extended:false}));

server.get("/signin",(request,response)=>{
    
var username=request.body['uname'];
response.send("<h1> welcome "+username+"</h1>")
})

server.post("/payment/:option",(request,response)=>{
    var paymentOption=request.params['option'];

    if(paymentOption=='debit'){
        response.send("debit page")
    }
    else if(paymentOption=='credit'){
        response.send("credit page")
    }
    else{
        response.send("Not yet")
    }

})

server.get("/home",(request,response)=>{
    response.send("<h1>landing on home page</h1>")

})

server.listen(5000,()=>{
    console.log("express server is waiting for client connections")
})