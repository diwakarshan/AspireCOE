const express = require('express');
const app = express();

// Simulated asynchronous functions
function fetchUserData(userId) {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            const userData = { id: userId, name: 'John Doe', email: 'john@example.com' };
            resolve(userData);
        }, 1000);
    });
}

function fetchUserPosts(userId) {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            const userPosts = [
                { id: 1, title: 'First Post', content: 'This is the first post.' },
                { id: 2, title: 'Second Post', content: 'This is the second post.' }
            ];
            resolve(userPosts);
        }, 1500);
    });
}

// Route handler
app.get('/user/:id', async (req, res) => {
    const userId = req.params.id;

    try {
        const userData = await fetchUserData(userId);
        const userPosts = await fetchUserPosts(userId);
        
        // Once all data is fetched, send response
        res.json({ userData, userPosts });
    } catch (error) {
        console.error('Error:', error);
        res.status(500).send('Internal Server Error');
    }
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
