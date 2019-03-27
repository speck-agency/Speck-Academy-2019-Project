//import halls array

var halls = require ('./halls.js');

//import Lodash

var _ = require('lodash');

// array of halls with unique names


function getFields(input, field) {
    var output = [];
    for (var i=0; i < input.length ; ++i)
        output.push(input[i][field]);
    return output;
}

var result = getFields(halls, "name");

//creating new array with unique hall names

var noDuplicates = _.uniq(result);

var hallsToString = noDuplicates.join(", ");



// server

var http = require("http");

http.createServer(function (request, response) {
    response.writeHead(200, {'Content-Type': 'text/plain'});

    response.end(hallsToString);
}).listen(8081);

console.log('Server running at http://127.0.0.1:8081/');