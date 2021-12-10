const express = require('express');
const router = express.Router();
const user = require('../model/user');


router.get('/', (req, res) => {
    user.find({}, (err, data)=>{
        if(err) return res.send({error: 'Erro na consulta Usuario'});
        return res.send(data);
    })
  
});

router.post('/create', (req, res) => {
    const {email, password} = req.body;
    if(!email || !password) return res.send({error: 'Dados Insuficientes'});
    user.findOne({email}, (err, data)=>{
        if(err) return res.send({error: 'ERRO AO BUSCAR USUARIO' + err});
        if(data) return res.send({error: 'Usuario ja registrado' + err});

        user.create(req.body, (err, data)=>{
            if(err) return res.send({error: 'erro ao criar usuario' + err});
            data.password = undefined;
            return res.send(data);
        })
    })

});

module.exports = router;

