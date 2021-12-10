const express = require('express');
const router = express.Router();
const compra = require('../model/compra');


router.get('/', (req, res) => {
    compra.find({}, (err, data)=>{
        if(err) return res.send({error: 'Erro na consulta PRODUTO'});
        return res.send(data);
    })
});

router.post('/create', (req, res) => {
    const {user_id, produto_id} = req.body;
    if(!user_id || !produto_id) return res.send({error: 'Dados Insuficientes'});
    
    compra.create(req.body, (err, data)=>{
        if(err) return res.send({error: 'erro ao criar COMPRA ' + err});
        return res.send(data);
    });
});

module.exports = router;