
//-------importing the required packages-------
var express = require("express");   //lightweight routing framework
var pg = require('pg'); //postgres middleware for node js
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

//-------------------------------------------Database----------------------------------

const pool = new Pool({
  user: 'j',
  host: 'localhost',
  database: 'highlander',
  password: 'j',
  port: 5432
});

const client = new Client({
  user: 'j',
  host: 'localhost',
  database: 'highlander',
  password: 'j',
  port: 5432
});



// pool.connect(function(err,client,done){
//   if(err) throw err;
//
//   client.query('select * from users where id = 1', function(err, res){
//
//
//     if(err) {
//       console.log(err);
//     } else {
//       console.log(res.rows);
//     }
//
//
//   });
//   done();
// });

(async function(){
  const client= await pool.connect();
  try{
    const res = await client.query('select * from users where id = $1', [1]);
    console.log(res.rows);

  }finally{
    client.release();

  }
})().catch(e => console.log(e.stack));

//-----------------------------------------------Helper functions-----------------------------------

// function is_username_taken(username){
//
//
//   if(){
//
//   } else return false;
// }

//authenticate

//isLoggedIn
function isLoggedIn(req, res, next){

    if(req.isAuthenticated()){
        return next();
    }

    res.redirect("/");

}



//-----------------------------------------------Routes---------------------------------------------

  //-----Sign in--------

  app.get("/sign_in", function(req, res){
    res.render("sign_in");

  });



  //---------Sign Up--------

  app.get("/sign_up", function(req, res){
    res.render("sign_up");
  });

  app.post("/sign_up", function(req, res){
    var username = req.body.username;
    var email = req.body.email;
    var password = req.body.password;






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

  app.get("/create_post", isLoggedIn, function(req,res){
    res.render("create_post");
  });


  //-----------post request for post creation-----

  app.post("/create_post", function(req,res){

  });

  //------------log out page------------

  app.get("/log_out", function(req,res){
    res.render("log_out");
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
