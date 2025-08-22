const express = require('express');
const app = express();
const port = process.env.PORT || 8080;

app.get('/health', (req, res) => res.json({status: 'ok'}));
app.get('/api/v1/hello', (req, res) => res.json({message: 'Hello from DevSecOps starter!'}));

app.listen(port, () => console.log(`Service running on ${port}`));
