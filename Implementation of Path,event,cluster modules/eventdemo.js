var event = require('events');
var emitter=new event.EventEmitter();  //object for events
emitter.on('trackdelivery',()=>{
console.log("order out for delivery")
})

function deliveryStatus(){
console.log("please wait")
console.log("final status")
emitter.emit('trackdelivery')
}
deliveryStatus();