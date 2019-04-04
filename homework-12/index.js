//import halls array

var halls = require ('./halls.js');

//server

const express = require('express')
const app = express()
const port = 3000

//functions

app.get("/halls", (req, res) =>  res.json(halls));

app.post("/hallsCreate", function () {
  
},
    function (req, res) {
        res.send("/halls")
}
);


app.post("/hallsUpdate", function () {
  
},
    function (req, res) {
        res.send("/halls")
}
);

app.delete("/hallsDelete", function () {
  
},
    function (req, res) {
        res.send("/index")
    }
);


app.use(express.static('public'))

app.listen(port, () => console.log(`App listening on port ${port}!`))

