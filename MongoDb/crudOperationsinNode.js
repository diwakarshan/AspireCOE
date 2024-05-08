const {MongoClient} = require('mongodb');
var url = "mongodb://127.0.0.1:27017/";
const client =new MongoClient(url);

async function connectToMongoDB(){
    try{
        await client.connect();
        const db=client.db('employee')
        const collection=db.collection('posts');
        const cursor=collection.find({});


        //insertOne
        /* const ackresult= await collection.insertOne(
            {_id: '_10',
             title: 'football',
             url: 'https://via.placeholder.com/600/56a8c2',
             likes: 10,
             dislikes: 0}
              )
         console.log("the record inserted into the collection with"+ackresult);
 */

         //insertMany
        /* const ackresult= await collection.insertMany(
         [   {_id: '_8',
            title: 'cricket',
            url: 'https://via.placeholder.com/600/56a8c2',
            likes: 10,
            dislikes: 0},
            {_id: '_9',
            title: 'football',
            url: 'https://via.placeholder.com/600/56a8c2',
            likes: 10,
            dislikes: 0},

       ] )
        console.log("the record inserted into the collection with"+ackresult); */



        //updateOne
        /* const ackresult= await collection.updateOne(
            {_id: '_8'},
             { $set: { title:"cricket player" } }
 
         )
         console.log("the record updated into the collection with"+ackresult); */
   

         //updateMany
        /*  const ackresult= await collection.updateMany(
            {title: 'football'},
             { $set: { url:"https://en.wikipedia.org/wiki/Football" } }
 
         )
         console.log("the record updated into the collection with"+ackresult); */
         

         //deleteOne
         /* const ackresult= await collection.deleteOne(
            {_id: '_8'}            
 
         )
         console.log("the record deleted into the collection with"+ackresult); */

         //deleteMany
         const ackresult= await collection.deleteMany(
            {title: 'football'}             
 
         )
         console.log("the record deleted into the collection with"+ackresult);


         
        await cursor.forEach(record=>{
            console.log(record)
        })
        await client.close()
        console.log('connected to MongoDB successfully');
    } catch(error){
        console.error('Error connecting to MongoDB:',error);
    }
}
connectToMongoDB();