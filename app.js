const express = require('express');
const bodyParser = require('body-parser')
const app = express();
app.use(bodyParser.json());

app.get('/', (req, res) => {
    let obj = req.query;
    var mensagem = 'tudo ok GET, voce enviou o nome ' + obj.nome + ', com idade de ' + obj.idade + ' anos!'
    return res.send({message: mensagem});
});

app.post('/', (req, res)=>{
    let obj = req.query;
    var mensagem = 'tudo ok POST, voce enviou o nome ' + obj.nome + ', com idade de ' + obj.idade + ' anos!'
    return res.send({message: mensagem})
})


app.listen(3000);

module.exports = app;