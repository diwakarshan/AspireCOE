//connection to mongodb and node js

const { MongoClient } = require('mongodb');

// Connection URI
const uri = 'mongodb://127.0.0.1:27017/employee';

// Create a new MongoClient
const client = new MongoClient(uri);

// Connect to the MongoDB server
async function connectToMongoDB() {
    try {
        await client.connect();

        const db=client.db('employee')
        const collection=db.collection('post');

        const cursor=collection.find({});

        await cursor.forEach(record=>{
            console.log(record)
        })
        await client.close()

        console.log('Connected to MongoDB successfully');
    } catch (error) {
        console.error('Error connecting to MongoDB:', error);
    }
}

// Call the function to connect
connectToMongoDB();
