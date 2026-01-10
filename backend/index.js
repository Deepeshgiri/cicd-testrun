const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

// API route
app.get('/', (req, res) => {
  res.json({ message: 'Backend API running', time: new Date() });
});

// Listen on all interfaces
app.listen(port, '0.0.0.0', () => {
  console.log(`Server running on port ${port}`);
});
