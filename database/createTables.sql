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
  created VARCHAR(30),
  last_active VARCHAR(30),
  about VARCHAR(1000),
  image VARCHAR(500)
);



create table posts (
  post_id SERIAL PRIMARY KEY,
  user_id INT references users(user_id),
  image_1 VARCHAR(500),
  image_2 VARCHAR(500),
  image_3 VARCHAR(500),
  is_private VARCHAR,
  is_free VARCHAR(15),
  require_registration VARCHAR(15),
  latitude VARCHAR(50),
  longitude VARCHAR(50),
  up_vote INT,
  down_vote INT,
  red_flag INT,
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
  vote_type varchar(10),
  created VARCHAR(30)
);


create view thumbnails as select post_id, image_1, title from posts;
create view map_popups as select post_id, latitude, longitude, image_1, title from posts;
create view user_info as select user_id, user_name, image, about, created, last_active from users;
create view post_info as select A.user_id,A.user_name, A.image,B.post_id, B.title, B.image_1, B.image_2, B.image_3, B.is_private,B.is_free,B.require_registration,B.latitude,B.longitude,B.up_vote,B.down_vote,B.red_flag,B.description,B.created from users as A, posts as B where A.user_id = B.user_id;
create view commenter as select A.user_id, A.image, A.user_name, B.post_id, B.comment, B.created from users as A, comments as B where A.user_id = B.user_id;

create trigger check_red_flag AFTER UPDATE ON posts FOR EACH ROW EXECUTE PROCEDURE delete_post();

  CREATE OR REPLACE FUNCTION delete_post() RETURNS void AS $$

      BEGIN
          IF NEW.red_flag > (OLD.up_vote * 3) THEN
          DELETE FROM posts;
          END IF;

      END;

  $$ LANGUAGE plpgsql;





--create table postDetails ();

--create table profiles ();

--create table comments ();

--create table features ();

--create table locations ();
