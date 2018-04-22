//recall to start a node project, we simply need a call to .http.listener and so forth

var express        =        require("express");
var app            =        express();

var http = require("http");
var request = require('request');

// app.use(express.static('.'));


app.get('/handle',function(request,response){
    response.send("hello, im am in handle");
});

app.listen(process.env.PORT || 7000,

    () => console.log("listening via express"));
