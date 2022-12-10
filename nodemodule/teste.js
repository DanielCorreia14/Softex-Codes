const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.listen(port, () => {
  console.log(`Teste 01 na porta ${port}`)
})

app.get('/', (req, res) => {
  res.send('Meu nome é _____')
})

app.listen(port, () => {
  console.log(`Joao, estou na porta: ${port}`)
})




//----------------
//Para rodar o programa basta ir no terminal e digitar node teste.js
