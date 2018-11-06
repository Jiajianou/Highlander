--/Users/jiajianou/Desktop/projects/Highlander/database/testData.sql

TRUNCATE TABLE users restart identity CASCADE;
TRUNCATE TABLE posts restart identity CASCADE;
TRUNCATE TABLE comments restart identity CASCADE;
TRUNCATE TABLE votes restart identity CASCADE;

--***************users
INSERT INTO users VALUES (DEFAULT,
  'james',
  'james@gmail.com',
  '123',
  'what is my lucky numebr?',
  '1',
  '2018-10-4-23-26'
);

INSERT INTO users VALUES (DEFAULT,
  'sam',
  'sam@gmail.com',
  '123',
  'what is my lucky numebr?',
  '22',
  '2018-10-4-23-27'
);

INSERT INTO users VALUES (DEFAULT,
  'linda',
  'linda@gmail.com',
  '123',
  'what is my lucky numebr?',
  '3',
  '2018-10-4-23-28'
);

INSERT INTO users VALUES (DEFAULT,
  'sara',
  'sara@gmail.com',
  '123',
  'what is my lucky numebr?',
  '67',
  '2018-10-4-23-29'
);

INSERT INTO users VALUES (DEFAULT,
  'adam',
  'adam@gmail.com',
  '123',
  'what is my lucky numebr?',
  '19',
  '2018-10-4-23-30'
);

--*******************posts




INSERT INTO posts VALUES (
   DEFAULT,
   1,
   'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
   'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
   'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
   TRUE,
   TRUE,
   FALSE,
   '34.2103894',
   '-77.88681170000001',
   5,
   1,
   'wilmington',
   'This is wilmington.',
   '2018-10-4-23-26'
 );

 INSERT INTO posts VALUES (
    DEFAULT,
    2,
    'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    TRUE,
    TRUE,
    FALSE,
    '34.2103894',
    '-77.88681170000001',
    3,
    1,
    'wilmington',
    'This is wilmington.',
    '2018-10-4-23-27'
  );

  INSERT INTO posts VALUES (
     DEFAULT,
     4,
     'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
     'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
     'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
     TRUE,
     TRUE,
     FALSE,
     '34.2103894',
     '-77.88681170000001',
     5,
     1,
     'wilmington',
     'This is wilmington.',
     '2018-10-4-23-28'
   );

   INSERT INTO posts VALUES (
      DEFAULT,
      4,
      'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      TRUE,
      TRUE,
      FALSE,
      '34.2103894',
      '-77.88681170000001',
      5,
      1,
      'wilmington',
      'This is wilmington.',
      '2018-10-4-23-29'
    );

    INSERT INTO posts VALUES (
       DEFAULT,
       5,
       'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
       'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
       'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
       TRUE,
       TRUE,
       FALSE,
       '34.2103894',
       '-77.88681170000001',
       5,
       1,
       'wilmington',
       'This is wilmington.',
       '2018-10-4-23-30'
     );

     INSERT INTO posts VALUES (
        DEFAULT,
        5,
        'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
        'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
        'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
        TRUE,
        TRUE,
        FALSE,
        '34.2103894',
        '-77.88681170000001',
        5,
        1,
        'wilmington',
        'This is wilmington.',
        '2018-10-4-23-31'
      );

      INSERT INTO posts VALUES (
         DEFAULT,
         1,
         'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
         'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
         'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
         TRUE,
         TRUE,
         FALSE,
         '34.2103894',
         '-77.88681170000001',
         5,
         1,
         'wilmington',
         'This is wilmington.',
         '2018-10-4-23-33'
       );

       INSERT INTO posts VALUES (
          DEFAULT,
          2,
          'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
          'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
          'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
          TRUE,
          TRUE,
          FALSE,
          '34.2103894',
          '-77.88681170000001',
          5,
          1,
          'wilmington',
          'This is wilmington.',
          '2018-10-4-23-40'
        );

        INSERT INTO posts VALUES (
           DEFAULT,
           4,
           'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
           'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
           'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
           TRUE,
           TRUE,
           FALSE,
           '34.2103894',
           '-77.88681170000001',
           5,
           1,
           'wilmington',
           'This is wilmington.',
           '2018-10-4-23-41'
         );

         INSERT INTO posts VALUES (
            DEFAULT,
            3,
            'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
            'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
            'https://images.pexels.com/photos/532803/pexels-photo-532803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
            TRUE,
            TRUE,
            FALSE,
            '34.2103894',
            '-77.88681170000001',
            5,
            1,
            'wilmington',
            'This is wilmington.',
            '2018-10-4-23-45'
          );

--*************************comments
 INSERT INTO comments VALUES (
   DEFAULT,
   1,
   1,
   'wow!',
   '2018-10-4-23-26'
 );

 INSERT INTO comments VALUES (
   DEFAULT,
   2,
   1,
   'wow!',
   '2018-10-4-23-26'
 );

 INSERT INTO comments VALUES (
   DEFAULT,
   3,
   1,
   'wow!',
   '2018-10-4-23-26'
 );

 INSERT INTO comments VALUES (
   DEFAULT,
   4,
   1,
   'wow!',
   '2018-10-4-23-26'
 );

 INSERT INTO comments VALUES (
   DEFAULT,
   5,
   1,
   'wow!',
   '2018-10-4-23-26'
 );

 INSERT INTO comments VALUES (
   DEFAULT,
   1,
   2,
   'wow!',
   '2018-10-4-23-26'
 );

 INSERT INTO comments VALUES (
   DEFAULT,
   1,
   3,
   'wow!',
   '2018-10-4-23-26'
 );
--***********************votes
 INSERT INTO votes VALUES(
   DEFAULT,
   2,
   1,
   TRUE,
   '2018-10-4-23-26'
 );

 INSERT INTO votes VALUES(
   DEFAULT,
   2,
   3,
   TRUE,
   '2018-10-4-23-26'
 );

 INSERT INTO votes VALUES(
   DEFAULT,
   2,
   4,
   TRUE,
   '2018-10-4-23-26'
 );

 INSERT INTO votes VALUES(
   DEFAULT,
   3,
   1,
   TRUE,
   '2018-10-4-23-26'
 );

 INSERT INTO votes VALUES(
   DEFAULT,
   4,
   2,
   TRUE,
   '2018-10-4-23-26'
 );

 INSERT INTO votes VALUES(
   DEFAULT,
   2,
   5,
   TRUE,
   '2018-10-4-23-26'
 );
