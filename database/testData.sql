--/Users/jiajianou/Desktop/projects/Highlander/database/testData.sql

TRUNCATE TABLE posts restart identity;
TRUNCATE TABLE users restart identity;

INSERT INTO posts VALUES (DEFAULT, 1,'This is post number one');
INSERT INTO posts VALUES (DEFAULT, 1,'This is post number two by user 1');
INSERT INTO posts VALUES (DEFAULT, 1,'This is post number 3 by user 1');
INSERT INTO posts VALUES (DEFAULT, 1,'This is post number 4 by user 1');
INSERT INTO posts VALUES (DEFAULT, 1,'This is post number 5 by user 1');
INSERT INTO posts VALUES (DEFAULT, 2,'This is post number 6 by user 2');
INSERT INTO posts VALUES (DEFAULT, 2,'This is post number 7 by user 2');
INSERT INTO posts VALUES (DEFAULT, 3,'This is post number 8 by user 3');
INSERT INTO posts VALUES (DEFAULT, 4,'This is post number 9 by user 4');
INSERT INTO posts VALUES (DEFAULT, 5,'This is post number 10 by user 5');

INSERT INTO users VALUES (DEFAULT, 'blahman', 'blahman@email.com', '1234');
