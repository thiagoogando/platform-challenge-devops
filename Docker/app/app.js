const express = require('express')
const app = express()
const port = process.env.PORT;

app.listen(port);
console.log(`Teste executando em http://localhost:${port}`);
app.get('/', (req, res) => {
  const name = process.env.NAME || require("os").userInfo().username;
  res.send(`Olá ${name}!`);
});