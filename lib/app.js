const express = require('express');
const cors = require('cors');
const app = express();

// Built in middleware
app.use(express.json());
app.use(cors({ origin: ['http://localhost:7891', 'https://relaxed-marzipan-c388a5.netlify.app'], credentials: true }));
// App routes
app.use('/api/v1/cheeses', require('./controllers/cheeses'));
// Error handling & 404 middleware for when
// a request doesn't match any app routes
app.use(require('./middleware/not-found'));
app.use(require('./middleware/error'));

module.exports = app;
