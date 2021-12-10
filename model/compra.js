const mongoose = require('mongoose');
const schema = mongoose.Schema;

const compraSchema = new schema({
    user_id: {
        type: schema.Types.ObjectId,
        ref: 'User',
        require: true
    },
    produto_id: {
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