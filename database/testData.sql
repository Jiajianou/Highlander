--/Users/jiajianou/Desktop/projects/Highlander/database/testData.sql

TRUNCATE TABLE users restart identity CASCADE;
TRUNCATE TABLE posts restart identity CASCADE;
TRUNCATE TABLE comments restart identity CASCADE;
TRUNCATE TABLE votes restart identity CASCADE;

--***************users
INSERT INTO users VALUES (
  DEFAULT,
  'james',
  'james@gmail.com',
  '123',
  'what is my lucky numebr?',
  '1',
  '2018-10-4-23-26',
  '2018-10-4-23-26',
  'Hello',
  'https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'


);

INSERT INTO users VALUES (
  DEFAULT,
  'sam',
  'sam@gmail.com',
  '123',
  'what is my lucky numebr?',
  '22',
  '2018-10-4-23-27',
  '2018-10-4-23-27',
  'I am an climber.',
  'https://images.pexels.com/photos/617278/pexels-photo-617278.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'


);

INSERT INTO users VALUES (
  DEFAULT,
  'linda',
  'linda@gmail.com',
  '123',
  'what is my lucky numebr?',
  '3',
  '2018-10-4-23-28',
  '2018-10-4-23-28',
  'I am a camper',
  'https://images.pexels.com/photos/730896/pexels-photo-730896.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350'
);

INSERT INTO users VALUES (
  DEFAULT,
  'sara',
  'sara@gmail.com',
  '123',
  'what is my lucky numebr?',
  '67',
  '2018-10-4-23-29',
  '2018-10-4-23-29',
  'I am a hiker.',
  'https://images.pexels.com/photos/126407/pexels-photo-126407.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350'
);

INSERT INTO users VALUES (
  DEFAULT,
  'adam',
  'adam@gmail.com',
  '123',
  'what is my lucky numebr?',
  '19',
  '2018-10-4-23-30',
  '2018-10-4-23-30',
  'I like cats.'
  'https://images.pexels.com/photos/4602/jumping-cute-playing-animals.jpg?auto=compress&cs=tinysrgb&dpr=2&h=350'
);



--*******************posts




INSERT INTO posts VALUES (
   DEFAULT,
   1,
   'https://images.pexels.com/photos/551852/pexels-photo-551852.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
   'https://images.pexels.com/photos/117843/pexels-photo-117843.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
   'https://images.pexels.com/photos/243592/pexels-photo-243592.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
   TRUE,
   TRUE,
   FALSE,
   '34.121247',
   '-78.221884',
   5,
   1,
   'Vaction 1',
   'My dream spot number 1.',
   '2018-10-4-23-26'
 );

 INSERT INTO posts VALUES (
    DEFAULT,
    2,
    'https://images.pexels.com/photos/33707/flowers-meadow-wood-forest.jpg?auto=compress&cs=tinysrgb&dpr=2&h=350',
    'https://images.pexels.com/photos/235721/pexels-photo-235721.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
    'https://images.pexels.com/photos/372098/pexels-photo-372098.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
    TRUE,
    TRUE,
    FALSE,
    '34.305221',
    '-78.43749',
    3,
    1,
    'vacation 2',
    'My dream spot number 2.',
    '2018-10-4-23-27'
  );

  INSERT INTO posts VALUES (
     DEFAULT,
     4,
     'https://images.pexels.com/photos/1237119/pexels-photo-1237119.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
     'https://images.pexels.com/photos/216587/pexels-photo-216587.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
     'https://images.pexels.com/photos/315999/pexels-photo-315999.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
     TRUE,
     TRUE,
     FALSE,
     '34.659193',
     '-78.387451',
     5,
     1,
     'vacation 3',
     'My dream spot number 3.',
     '2018-10-4-23-28'
   );

   INSERT INTO posts VALUES (
      DEFAULT,
      4,
      'https://images.pexels.com/photos/415471/pexels-photo-415471.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
      'https://images.pexels.com/photos/127073/pexels-photo-127073.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
      'https://images.pexels.com/photos/262738/pexels-photo-262738.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
      TRUE,
      TRUE,
      FALSE,
      '34.380846',
      '-77.952118',
      5,
      1,
      'vacation 4',
      'My dream spot number 4.',
      '2018-10-4-23-29'
    );

    INSERT INTO posts VALUES (
       DEFAULT,
       5,
       'https://images.pexels.com/photos/533961/pexels-photo-533961.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
       'https://images.pexels.com/photos/988508/pexels-photo-988508.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
       'https://images.pexels.com/photos/712413/pexels-photo-712413.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
       TRUE,
       TRUE,
       FALSE,
       '35.392024',
       '-76.890264',
       5,
       1,
       'vacation 5',
       'My dream spot number 5.',
       '2018-10-4-23-30'
     );

     INSERT INTO posts VALUES (
        DEFAULT,
        5,
        'https://images.pexels.com/photos/22185/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&h=350',
        'https://images.pexels.com/photos/1090552/pexels-photo-1090552.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
        'https://images.pexels.com/photos/127070/pexels-photo-127070.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
        TRUE,
        TRUE,
        FALSE,
        '34.857376',
        ' -76.516728',
        5,
        1,
        'vacation 6',
        'My dream spot number 6.',
        '2018-10-4-23-31'
      );

      INSERT INTO posts VALUES (
         DEFAULT,
         1,
         'https://images.pexels.com/photos/90454/pexels-photo-90454.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
         'https://images.pexels.com/photos/1051076/pexels-photo-1051076.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
         'https://images.pexels.com/photos/54459/summer-sunflower-flowers-sky-54459.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
         TRUE,
         TRUE,
         FALSE,
         '35.402484',
         '-79.49707',
         5,
         1,
         'vacation 7',
         'My dream spot number 7.',
         '2018-10-4-23-33'
       );

       INSERT INTO posts VALUES (
          DEFAULT,
          2,
          'https://images.pexels.com/photos/355872/pexels-photo-355872.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
          'https://images.pexels.com/photos/450054/pexels-photo-450054.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
          'https://images.pexels.com/photos/382420/pexels-photo-382420.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
          TRUE,
          TRUE,
          FALSE,
          '36.340658',
          ' -81.17152',
          5,
          1,
          'vacation 8',
          'My dream spot number 8.',
          '2018-10-4-23-40'
        );

        INSERT INTO posts VALUES (
           DEFAULT,
           4,
           'https://images.pexels.com/photos/789371/pexels-photo-789371.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
           'https://images.pexels.com/photos/533924/pexels-photo-533924.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
           'https://images.pexels.com/photos/459581/pexels-photo-459581.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
           TRUE,
           TRUE,
           FALSE,
           '37.028869',
           '-81.595459',
           5,
           1,
           'vacation 9',
           'My dream spot number 9.',
           '2018-10-4-23-41'
         );

         INSERT INTO posts VALUES (
            DEFAULT,
            3,
            'https://images.pexels.com/photos/346833/pexels-photo-346833.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
            'https://images.pexels.com/photos/877398/pexels-photo-877398.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
            'https://images.pexels.com/photos/316072/pexels-photo-316072.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350',
            TRUE,
            TRUE,
            FALSE,
            '39.087436',
            '-81.166992',
            5,
            1,
            'vacation 10',
            'My dream spot number 10.',
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
   'I have been there before.',
   '2018-10-4-23-26'
 );

 INSERT INTO comments VALUES (
   DEFAULT,
   3,
   1,
   'Beautiful place.',
   '2018-10-4-23-26'
 );

 INSERT INTO comments VALUES (
   DEFAULT,
   4,
   1,
   'I am going this week.',
   '2018-10-4-23-26'
 );

 INSERT INTO comments VALUES (
   DEFAULT,
   5,
   1,
   'Breath taking!',
   '2018-10-4-23-26'
 );

 INSERT INTO comments VALUES (
   DEFAULT,
   1,
   2,
   'I went last month and it was meh.',
   '2018-10-4-23-26'
 );

 INSERT INTO comments VALUES (
   DEFAULT,
   1,
   3,
   'It is on my bucket list now',
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
