var express = require("express");

var app = express();

app.set("view engine","ejs");

app.get("/", function(req, res){
  console.log("someone has made a request call");
  res.render("index2");

});

app.listen(3001);

console.log("server is running");
