--/Users/jiajianou/Desktop/projects/Highlander/database/createTables.sql


DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS votes;




create table users (
  user_id SERIAL PRIMARY KEY,
  user_name VARCHAR(100) UNIQUE NOT NULL,
  email VARCHAR(100),
  password VARCHAR(100),
  question VARCHAR(500),
  answer VARCHAR(100),
  created VARCHAR(30)
);


create table posts (
  post_id SERIAL PRIMARY KEY,
  user_id INT references users(user_id),
  image_1 VARCHAR(500),
  image_2 VARCHAR(500),
  image_3 VARCHAR(500),
  is_private boolean,
  is_free boolean,
  require_reservation boolean,
  gps_latitude VARCHAR(50),
  gps_logitude VARCHAR(50),
  up_vote INT,
  down_vote INT,
  title VARCHAR(100),
  description VARCHAR(1000),
  created VARCHAR(30)


);

create table comments(
  c_id SERIAL PRIMARY KEY,
  user_id INT references users(user_id),
  post_id INT references posts(post_id),
  comment VARCHAR(1000),
  created VARCHAR(30)

);

create table votes(
  vote_id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(user_id),
  post_id INT REFERENCES posts(post_id),
  is_up_vote boolean,
  created VARCHAR(30)
);

create view thumbnails as select post_id, image_1, title from posts;






--create table postDetails ();

--create table profiles ();

--create table comments ();

--create table features ();

--create table locations ();
