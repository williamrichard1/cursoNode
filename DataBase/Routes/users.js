const express = require('express');
const router = express.Router();
const user = require('../model/user');


router.get('/', (req, res) => {

    const parametro = req.query;

    if(!parametro.idUsuario) return user.find({}, (err, data) => {
        if(err) return res.send({error: 'Erro na consulta Usuario'});
        return res.send(data);
    })

    user.find({_id: parametro.idUsuario}, (err, data) => {
        if(err) return res.send({error: 'Erro na consulta Usuario'});
        return res.send(data);
    });

});

router.post('/', (req, res) => {
    const {email, password, nome, cpf} = req.body;
    if(!email || !password || !nome || !cpf) return res.send({error: 'Dados Insuficientes'});
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

