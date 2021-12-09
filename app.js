const express = require('express');
const app = express();
const mongoose = require('mongoose');
const bodyParser = require('body-parser');

const urlBd = 'mongodb+srv://usuario_admin:31coelhos@clustercursonode.ngwxl.mongodb.net/myFirstDatabase?retryWrites=true&w=majority';
const options = {
    useNewUrlParser: true,
    useUnifiedTopology: true,
};
mongoose.connect(urlBd, options);


mongoose.connection.on('error', (err) => {
    console.log('Erro na conexao: ' + err);
});

mongoose.connection.on('disconnected', () => {
    console.log('aplicacao desconectada');
});

mongoose.connection.on('connected', () => {
    console.log('CONECTADO!!');
});

//BODY PARSER
app.use(bodyParser.urlencoded({
    extended: false
}));
app.use(bodyParser.json());

const indexRoute = require('./Routes/index');
const usersRoute = require('./Routes/users');

app.use('/', indexRoute);
app.use('/users', usersRoute);

/*app.get('/', (req, res) => {
    let obj = req.query;
    //var mensagem = 'tudo ok GET, voce enviou o nome ' + obj.nome + ', com idade de ' + obj.idade + ' anos!'
    return res.send({
        mensagem: obj.mensagem,
        nome: obj.nome,
        idade: obj.idade
    });
});

app.post('/', (req, res) => {
    let obj = req.query;
    return res.send({
        mensagem: obj.mensagem,
        nome: obj.nome,
        idade: obj.idade
    })
})*/

app.listen(3000);

module.exports = app;