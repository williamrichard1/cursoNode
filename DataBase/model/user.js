const mongoose = require('mongoose');
const schema = mongoose.Schema;

const userSchema = new schema({
    email: {
        type: String,
        required: true,
        unique: true,
        lowercase: true
    },
    password: {
        type: String,
        required: true,
        select: false // para campo nao aparecer no get
    },
    nome: {
        type: String,
        required: true,
    },
    cpf:{
        type: String,
        required: true,
        unique: true,
    },
    created: {
        type: Date,
        default: Date.now,
        select: false
    }
});

module.exports = mongoose.model('User', userSchema);