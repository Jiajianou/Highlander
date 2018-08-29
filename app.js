
//-------importing the require packages-------
var express = require("express");
var app = express(); //express is lightweight web framework package.
                      //It is responsible for directing routes to different html web pages.
var mysql = require("mysql");
var body_parser = require("body-parser"); //It is middleware. It allows you to read the user input here.


//--------setting up the packages----------



app.set("view engine","ejs"); //ejs is a node package. It stands for embedded Javascript. It allows you to use
                              //javascript code to generate html code on the fly.



//--------Routes-------------

  //===Index Route===
app.get("/", function(req, res){                      //Home page. Or Index page. This is the root route.
  console.log("someone has made a request call");
  res.render("index");

});

  //===Sign up Route===




//--------server listener---------


app.listen(3001, function(){                //It is set up to run locally for now.
  console.log("The server is running");     //To access, use your local network IP + the port number
});                                         //It should look something like this.   000.000.00.00:3001
                                            //Once you have Node Js installed on your machine, use terminal
                                            // to navagate to the app.js directory. Then type: node app.js
