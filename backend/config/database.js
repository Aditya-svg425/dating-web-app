// Database configuration file

const mongoose = require('mongoose');

const dbURI = 'your-database-uri';

mongoose.connect(dbURI, { useNewUrlParser: true, useUnifiedTopology: true })
    .then(() => console.log('Database connected successfully!'))
    .catch(err => console.error('Database connection error:', err));

module.exports = mongoose;