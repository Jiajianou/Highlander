
//-------importing the required packages-------
var express = require("express");   //lightweight routing framework
const {Pool,Client} = require('pg'); //postgres middleware for node js
var body_parser = require("body-parser"); //it parses inputs from post request
var session = require("express-session");


//--------------To-Do List-------------
//1.post generation page
//2.store and display image
//3.show post location on map
//4.home page that loads posts from database.
//5.profile page
//6. finish view page


//-------------------------------------------Initialization----------------------------------------------

//initiate express
var app = express();
//set view engine to embedded javascript extension (.ejs)
app.set("view engine","ejs");
//Enable body-parser.
app.use(body_parser.urlencoded({extended: true}));


app.use(session(
  {
    secret:"this is secret",    //for encrypting the session. It can be any string.
    resave: false,
    saveUninitialized: false

  }
));

//----------Time stamp --

var time = new Date();
var now = time.getFullYear() + "-" + time.getMonth() + "-" + time.getDate() + "-" + time.getHours() + "-" + time.getMinutes();
console.log(now);


//-------------------------------------------Database----------------------------------


var database_config = {
    user: 'j',
    host: 'localhost',
    database: 'highlander',
    password: 'strong_pass',
    port: 5432
};
const pool = new Pool(database_config);

const client = new Client(database_config);



//-----------------------------------------------Helper functions-----------------------------------

// function is_username_taken(username){
//
//
//   if(){
//
//   } else return false;
// }


//-----------------------------------------------Routes---------------------------------------------




  //-------Home page or Index --------


  app.get("/", function(req, res){
    //1.Get post image and title from database
    //2.Convert them into javascript objects;
    //3.Pass these objects to the route, and use ejs to display the data.
    var query_string = 'select * from thumbnails';

    pool.connect(function(err,client,done){

      if(err) throw err;

      client.query(query_string,function(err, result){
        //inside query callback function:
        //console.log(typeof result.rows);

        //todo: limit to 9 posts.
        var posts = result.rows;

        res.render("index", posts);



      }

      );
      done();

    });

  });

  //-----Sign in--------

  app.get("/sign_in", function(req, res){
    res.render("sign_in");

  });

  app.post("/sign_in", function(req, res){

    var query_string = 'SELECT user_name, password FROM users WHERE user_name = $1 AND password = $2';

    pool.connect(function(err,client,done){
      if(err) throw err;

      client.query(query_string, [req.body.username, req.body.password], function(err, result){

        console.log(result.rows);
        if(result.rows.length !== 0) {
          var current_user = {id:req.body.username, password:req.body.password};
          req.session.user = current_user;
          res.redirect("/");
        } else res.redirect("/sign_in");

      });

      done();
    });










  });



  //---------Sign Up--------

  app.get("/sign_up", function(req, res){
    res.render("sign_up");
  });

  app.post("/sign_up", function(req, res){
    var username = req.body.username;
    var email = req.body.email;
    var password = req.body.password;
    var question = "How tall is my favorite wine glass";
    var answer = "8.2";

    var new_user = {id: username, password:password};

    req.session.user = new_user;

    console.log("------This is session data------");
    console.log(req.session.user);
    console.log("-------End of session data-------");

    pool.connect(function(err,client,done){
      if(err) throw err;

      client.query('INSERT INTO users VALUES (DEFAULT, $1, $2, $3, $4, $5)', [username, email, password, question, answer ],  function(err, result){


        if(err) {
          console.log(err);
          res.render("sign_up");

        } else {
          console.log(result.rows);
          res.redirect("/");
        }


      });
      done();
    });

  });

  //--------User profile --------

  app.get("/profile", function(req, res){

    var username = req.session.user.id;
    var password = req.session.user.password;

    var query_string = 'SELECT user_name, password FROM users WHERE user_name = $1 AND password = $2';


    console.log( username + "  " + password);

    pool.connect(function(err,client,done){
      if(err) throw err;

      client.query(query_string, [username, password], function(err, result){

        console.log(result.rows);
        if(result.rows.length !== 0) {

          res.render("profile");

        } else res.redirect("/sign_in");

      });

      done();
    });



  });




  //--------User page----------

  app.get("/user_info_page", function(req, res){
    res.render("user_info_page");

  });

 //-----------about page------------

  app.get("/about", function(req, res){
    res.render("about");
  });

  //-----------create post-----------

  app.get("/create_post", function(req,res){
    res.render("create_post");
  });


  //-----------post request for post creation-----

  app.post("/create_post", function(req,res){

  });

  //------------log out page------------

  app.get("/sign_out", function(req,res){
    req.session.destroy();
    res.render("sign_out");
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


app.listen(process.env.PORT || 3001, function(){                //It is set up to run locally for now.
  console.log("The server is running");     //To access, use your local network IP + the port number
});                                         //It should look something like this.   000.000.00.00:3001
                                            //Once you have Node Js installed on your machine, use terminal
                                            // to navagate to the app.js directory. Then type: node app.js
