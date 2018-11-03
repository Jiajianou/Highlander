
//-------importing the required packages-------
var express = require("express");   //lightweight routing framework
var pg = require('pg'); //postgres middleware for node js
var body_parser = require("body-parser"); //it parses inputs from post request
var session = require("express-session");
var cookie_parser = require("cookie-parser");
var passport = require("passport"); //user authentication middleware
var Sequelize = require("sequelize"); // database manager
var passport_local_sequelize = require("passport-local-sequelize"); //database helper for passport

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


//initializing passport and session
app.use(passport.initialize());
app.use(passport.session());
app.use(session(
  {
    secret:"this is secret",    //for encrypting the session. It can be any string.
    resave: false,
    saveUninitialized: false

  }
));

//--------------------------------------------------Database-----------------------------------------------

//set up the database connection with sequelize.
//Database is set up locally at the moment.
//database name: "highlander2"
//database user name: "j"
//database user password "strong_pass"
/*Set up the database locally or remotely first so Sequelize will know what to connect to*/
const sequelize = new Sequelize('highlander2', 'j', 'strong_pass', {
  host: 'localhost',
  dialect: 'postgres',
  operatorsAliases: false,

  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  },
  });


//testing the database connection
sequelize.authenticate().then(() => {
    console.log('Connection has been established successfully.');
  }).catch(err => {
    console.error('Unable to connect to the database:', err);
  });







//Database models/tables/schemas
//------------user

var User = sequelize.define("user", {
  username: Sequelize.STRING,
  myhash: Sequelize.TEXT,
  mysalt: Sequelize.STRING
});


//------------user profile

var Profile = sequelize.define("profile",{
  id : {type:Sequelize.INTEGER, primaryKey: true},
  username: Sequelize.STRING,
  email: Sequelize.STRING,
});












// Activate passport-local-sequelize
//passwords are stored as hashes
passport_local_sequelize.attachToUser(User, {
    usernameField: 'username',
    hashField: 'myhash',
    saltField: 'mysalt',
});

// Create table in database if not exists
sequelize.sync();


//Ask passport to use "passport-local-postgres" as a form of local strategy
passport.use(User.createStrategy());
//serializeing users when a new user is created. It generates an user Id and stores it in session
passport.serializeUser(User.serializeUser());
//retrieve the user id and finds the user info.
passport.deserializeUser(User.deserializeUser());



//-----------------------------------------------------Helper Functions-----------------------------------

function isLoggedIn(req, res, next) {
  if(req.isAuthenticated()) {
    return next();
  }
  res.redirect("/sign_in");
};













//-------------------------------------------------------Routes------------------------------------------------
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


  app.post("/sign_up", function(req, res) {

    console.log(req.body.email);

    User.register(new User({username: req.body.username}), req.body.password, function(err, user) {
      if (err) {
        console.log(err);
        return res.render("sign_up");
      }

      //sequelize.query('select * from users');
      passport.authenticate("local")(req, res, function() {

        var user_id = 0;
        var username = req.body.username;
        var email= req.body.email;

        sequelize.query('select * from users where username = $1',{bind:[username], type:sequelize.QueryTypes.SELECT}).spread((result,meta)=>{
          console.log(result);
          user_id = parseInt(result.id);

          Profile.create({
            id: user_id,
            username: username,
            email: email
          });

        });


        res.redirect("/");
      });
    });

  });






  //-----Sign in--------

  app.get("/sign_in", function(req, res){
    res.render("sign_in");

  });


  app.post("/sign_in", passport.authenticate("local", {
    successRedirect: "/create_post",
    failureRedirect: "/sign_in"
  }), function(req, res) {});


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
