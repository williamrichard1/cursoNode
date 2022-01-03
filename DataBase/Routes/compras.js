const express = require('express');
const router = express.Router();
const compra = require('../model/compra');


router.get('/', (req, res) => {
    compra.find({}, (err, data)=>{
        if(err) return res.send({error: 'Erro na consulta PRODUTO'});
        return res.send(data);
    }).populate('usuario')
      .populate('produto');
});

router.post('/', (req, res) => {
    const {usuario, produto} = req.body;
    if(!usuario || !produto) return res.send({error: 'Dados Insuficientes'});
    
    compra.create(req.body, (err, data)=>{
        if(err) return res.send({error: 'erro ao criar COMPRA ' + err});
        return res.send(data);
    });
});

module.exports = router;