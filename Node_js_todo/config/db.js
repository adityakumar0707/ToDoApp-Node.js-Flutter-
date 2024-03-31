const mongoose = require('mongoose');

const connection = mongoose.createConnection('mongodb://127.0.0.1:27017/newToDo').on('open',() => {
    console.log('doneee');
}).on('error',()=> {
    console.log('error aagya');
});

module.exports = connection;