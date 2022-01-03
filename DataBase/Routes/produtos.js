const express = require('express');
const router = express.Router();
const produto = require('../model/produto');

router.get('/', (req, res) => {
    produto.find({}, (err, data) => {
        if(err) return res.send({error: 'Erro na consulta PRODUTO'});
        return res.send(data);
    })
});

router.post('/', (req, res) => {
    const {nome, preco} = req.body;
    if(!nome || !preco) return res.send({error: 'Dados Insuficientes'});
    produto.findOne({nome}, (err, data)=>{
        if(err) return res.send({error: 'ERRO AO BUSCAR PRODUTO' + err});
        if(data) return res.send({error: 'PRODUTO ja registrado' + err});

        produto.create(req.body, (err, data)=>{
            if(err) return res.send({error: 'erro ao criar PRODUTO' + err});
            data.password = undefined;
            return res.send(data);
        })
    })
});

module.exports = router;