const express = require('express');
const router = express.Router();


router.get('/', (req, res) => {
    return res.send({mensagem: 'GET RAIZ'})
});

router.post('/', (req, res) => {
    return res.send({mensagem: 'POST RAIZ'})
});

module.exports = router;

