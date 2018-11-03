--/Users/jiajianou/Desktop/projects/Highlander/database/createTables.sql

DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS users;

create table posts (
  post_id SERIAL PRIMARY KEY,
  user_id int,
  description VARCHAR(500)

);

create table users (
  user_id SERIAL PRIMARY KEY,
  user_name VARCHAR(100),
  email VARCHAR(100),
  password VARCHAR(100)
);


--create table postGallarys ();

--create table postDetails ();

--create table profiles ();

--create table comments ();

--create table features ();

--create table locations ();
