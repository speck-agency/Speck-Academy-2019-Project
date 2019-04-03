//import halls array

var halls = require ('./halls.js');










//server

const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => res.send('Hello World!'))

app.get("/halls", (req, res) =>  res.json(halls));

app.listen(port, () => console.log(`App listening on port ${port}!`))

app.get("/halls", (req, res) => 
    res.json(halls)
);
