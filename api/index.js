const express = require('express');
const app = express();
const port = 3000;

// Simple REST API endpoint
app.get('/api', (req, res) => {
  res.json({ message: 'Hello, World!' });
});

app.listen(port, () => {
  console.log(`API is running at http://localhost:${port}`);
});