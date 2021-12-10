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
const produtoRoute = require('./Routes/produtos');
const comprasRoute = require('./Routes/compras');

app.use('/', indexRoute);
app.use('/users', usersRoute);
app.use('/produtos', produtoRoute);
app.use('/compras', comprasRoute);


app.listen(3000);

module.exports = app;