//import halls array

var halls = require ('./halls.js');


//import luxon
const { DateTime } = require("luxon");

//an array of reserved halls - returns empty array

function reserved(input, field) {
    var output = [];
    for (var i =0; i < input.length; ++i)
        if  (field = true) {
            output.push(input[i][field]);
            
        }
        return output;
    }





var result = reserved(halls, "reservation.isReserved");


var hallsToString = result.join(", ");



// server

var http = require("http");

http.createServer(function (request, response) {
    response.writeHead(200, {'Content-Type': 'text/plain'});

    response.end(hallsToString);
}).listen(8081);

console.log('Server running at http://127.0.0.1:8081/');