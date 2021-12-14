const mongoose = require('mongoose');
const schema = mongoose.Schema;

const produtoSchema = new schema({
    nome: {
        type: String,
        required: true,
        unique: true,
        lowercase: true
    },
    preco: {
        type: Number,
        required: true,
    },
    criado_em: {
        type: Date,
        default: Date.now
    }
})

module.exports = mongoose.model('Produto', produtoSchema);