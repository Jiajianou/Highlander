
//-------importing the require packages-------
var express = require("express");

var app = express(); //express is lightweight web framework package.
                      //It is responsible for directing routes to different html web pages(as well as .ejs files).

var mysql = require("pg"); //The is the database we will be using.

var body_parser = require("body-parser"); //It is a middleware. It allows you to read the user's input here.


//--------setting up the packages----------



app.set("view engine","ejs"); //ejs is a node package. It stands for embedded Javascript. It allows you to use
                              //javascript code to generate html code on the fly.


//------------Setting up the Database---------



//--------Routes-------------
//1.Index
//2.Sign Up
//3.Sign In
//4.User page
//5.Explore
//6.Post Detail

  //===Index Route===
app.get("/", function(req, res){
  res.render("index");

});

  //===Sign up Route===

  app.get("/sign_up", function(req, res){
    res.render("sign_up");

  });


  //-----Sign in--------

  app.get("/sign_in", function(req, res){
    res.render("sign_in");

  });


  //--------User page----------

  app.get("/user_page", function(req, res){
    res.render("user_page");

  });


  //-----------Explore-----------

  app.get("/explore", function(req, res){
    res.render("explore");

  });

  //------------Post Detail----------

  app.get("/post_detail", function(req, res){
    res.render("post_detail");

  });






//--------server listener---------


app.listen(3001, function(){                //It is set up to run locally for now.
  console.log("The server is running");     //To access, use your local network IP + the port number
});                                         //It should look something like this.   000.000.00.00:3001
                                            //Once you have Node Js installed on your machine, use terminal
                                            // to navagate to the app.js directory. Then type: node app.js
