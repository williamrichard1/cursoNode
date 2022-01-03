const mongoose = require('mongoose');
const schema = mongoose.Schema;

const compraSchema = new schema({
    usuario: {
        type: schema.Types.ObjectId,
        ref: 'User',
        require: true
    },
    produto: {
        type: schema.Types.ObjectId,
        ref: 'Produto',
        require: true
    },
    data_compra: {
        type: Date,
        default: Date.now()
    },
});

module.exports = mongoose.model('Compra', compraSchema);