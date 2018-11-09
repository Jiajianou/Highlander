
//-------importing the required packages-------
var express = require("express");   //lightweight routing framework
const {Pool,Client} = require('pg'); //postgres middleware for node js
var body_parser = require("body-parser"); //it parses inputs from post request
var session = require("express-session");




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

//----------Time stamp --

var time = new Date();
var now = time.getFullYear() + "-" + time.getMonth() + "-" + time.getDate() + "-" + time.getHours() + "-" + time.getMinutes();
console.log(now);

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
    var query_string = 'select * from post_info';

    pool.connect(function(err,client,done){

      if(err) throw err;

      client.query(query_string,function(err, result){
        //inside query callback function:
        //console.log(typeof result.rows);

        //todo: limit to 9 posts.
        var posts = result.rows;
        var first_row = posts.slice(0,3);
        var second_row = posts.slice(3,6);
        var third_row = posts.slice(6,9)

        res.render("index", {row1:first_row,row2:second_row,row3:third_row});



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
          res.redirect("/profile");
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
    var question = req.body.question;
    var answer = req.body.answer;
    var about = "Introduce your self";
    var image = "https://marketplace.canva.com/MAC1K25B5-k/1/screen/canva-icon%2C-people%2C-person%2C-team%2C-human%2C-business%2C-women-MAC1K25B5-k.jpg";

    var new_user = {id: username, password:password};

    req.session.user = new_user;

    var query_string = 'INSERT INTO users VALUES (DEFAULT, $1, $2, $3, $4, $5, $6, $7, $8, $9)';

    console.log("------This is session data------");
    console.log(req.session.user);
    console.log("-------End of session data-------");

    pool.connect(function(err,client,done){
      if(err) throw err;

      client.query(query_string, [username, email, password, question, answer, now, now, about, image],  function(err, result){


        if(err) {
          console.log(err);
          res.render("sign_up");

        } else {
          console.log(result.rows);
          res.redirect("/profile");
        }


      });
      done();
    });

  });

  //--------User profile --------

  app.get("/profile", function(req, res){

    var username = req.session.user.id;
    var password = req.session.user.password;

    var query_string = 'SELECT * FROM users WHERE user_name = $1 AND password = $2';


    console.log( username + "  " + password);

    pool.connect(function(err,client,done){
      if(err) throw err;

      client.query(query_string, [username, password], function(err, result){

        console.log(result.rows);
        if(result.rows.length !== 0) {

          var user = result.rows[0];
          res.render("profile", {user:user});

        } else res.redirect("/sign_in");

      });

      done();
    });



  });




  //--------User page----------

  app.get("/user_info/:id", function(req, res){


    console.log(req.params.id);

    var query_string = 'select * from user_info where user_id = $1';

    pool.connect(function(err,client,done){
      if(err) throw err;

      client.query(query_string, [req.params.id], function(err,result){

        var user = result.rows[0];

        console.log(user);

        res.render("user_info", {user:user});



      });
      done();
    });

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

    var query_string = 'select * from map_popups';

    pool.connect(function(err,client,done){

      if(err) throw err;

      client.query(query_string, function(err, result){

        //console.log(result.rows);
        var popups = result.rows;

        res.render("explore", {popups:popups});


      });
      done();
    });


  });

  //------------Post Detail----------

  app.get("/post_detail/:id", function(req, res){
    //need post details, user name and last active from users, and commenter' name, comment, and timestamp.

    var id = req.params.id;

    var query_string_1 = 'select * from post_info where post_id = $1';
    var query_string_2 = 'select * from commenter where post_id = $1';


    pool.connect(function(err,client,done){
      if(err) throw err;

      client.query(query_string_1,[id]).then(result_1 =>{
        //first query
        var post = result_1.rows[0];

        client.query(query_string_2,[id]).then(result_2 =>{
          //second query
          var comments = result_2.rows;
          console.log("inside query 2:");

          res.render("post_detail", {post:post,comments:comments});

        }).catch(e => console.error(e.stack));

      }).catch(e => console.error(e.stack));

      done();

    });


  });





//--------server listener---------


app.listen(process.env.PORT || 3001, function(){                //It is set up to run locally for now.
  console.log("The server is running");     //To access, use your local network IP + the port number
});                                         //It should look something like this.   000.000.00.00:3001
                                            //Once you have Node Js installed on your machine, use terminal
                                            // to navagate to the app.js directory. Then type: node app.js
