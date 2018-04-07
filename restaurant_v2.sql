-- IF WANT TO DELETE TABLE COMPLETELY, USE QUERY BELOW.
--DROP TABLE review;


-- CREATE SCHEMAS

CREATE TABLE restaurant (
  id SERIAL NOT NULL PRIMARY KEY,
  name VARCHAR,
  address VARCHAR,
  category VARCHAR
);

CREATE TABLE reviewer (
  id SERIAL NOT NULL PRIMARY KEY,
  name VARCHAR,
  email VARCHAR,
  karma INTEGER CHECK (karma >=0 and karma <=7)
);

CREATE TABLE review (
  id SERIAL NOT NULL PRIMARY KEY,
  stars INTEGER CHECK (stars >=0 and stars <=5),
  title VARCHAR,
  review VARCHAR,
  reviewer_id INTEGER REFERENCES reviewer (id),
  restaurant_id INTEGER REFERENCES restaurant (id)
);

-- INSERT RESTAURANTS

INSERT INTO restaurant VALUES (
  DEFAULT, 'Fogo de Chao', '2990 Bagby St, Houston, TX 77055', 'steakhouse'
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'Chama Gaucha', '356 Rock St, Atlanta, GA 33434', 'steakhouse'
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'Piola', '4665 Airport Blvd, Los Angeles, CA 90045', 'italian'
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'La Mexicana', '7765 laredo Rd, Houston, TX 77553', 'mexican'
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'Jinja', '446 Palm St, Miami, FL 33155', 'japanese'
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'Gusto Gourmet', '3325 Kirby St, Houston, TX 77044', 'venezuelan'
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'Sal y Pimienta', '9877 Town and Country Blvd, Houston, TX 77088', 'south american'
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'Pappasitos', '3322 Westheimer Rd, Houston, TX 77056', 'tex-mex'
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'Bubbas', '112 Meridan St, Los Angeles, CA 99885', 'american'
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'Peli Peli', '7670 Yale St, Houston, TX 77134', 'south african'
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'Downhouse', '6122 Yale St, Houston, FL 77134', 'american'
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'Goode Company', '445 Canela Blvd, Miami, FL 33215', 'BBQ'
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'Grotto', '7784 Cane Blvd, New York, NY 10003', 'italian'
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'Las Palmas', '8111 Lots Rd, Charlotte, NC 22344', 'cuban'
);

-- INSERT REVIEWERS 

INSERT INTO reviewer VALUES (
  DEFAULT, 'Dennis Cohen', 'cohen@gmail.com', 2
);

INSERT INTO reviewer VALUES (
  DEFAULT, 'Estefana Condie', 'condie@gmail.com', 1
);

INSERT INTO reviewer VALUES (
  DEFAULT, 'Loan Tocco', 'tocco1@gmail.com', 5
);

INSERT INTO reviewer VALUES (
  DEFAULT, 'Keiko Durgin', 'durgin_keiko@gmail.com', 2
);

INSERT INTO reviewer VALUES (
  DEFAULT, 'Hugh Pry', 'pry@gmail.com', 7
);

INSERT INTO reviewer VALUES (
  DEFAULT, 'Joan William', 'joanw@gmail.com', 3
);

INSERT INTO reviewer VALUES (
  DEFAULT, 'Broderick Kubacki', 'kubacki1987@gmail.com', 1
);

INSERT INTO reviewer VALUES (
  DEFAULT, 'Chasity Dibenedetto', 'dibenedetto@gmail.com', 4
);

INSERT INTO reviewer VALUES (
  DEFAULT, 'Avril Sills', 'avril@gmail.com', 4
);

INSERT INTO reviewer VALUES (
  DEFAULT, 'Elois Stonecipher', 'elois35@gmail.com', 2
);

INSERT INTO reviewer VALUES (
  DEFAULT, 'Trish Spaeth', 'trishs@gmail.com', 6
);

INSERT INTO reviewer VALUES (
  DEFAULT, 'Lora Dunnigan', 'dunnigan@gmail.com', 2
);

INSERT INTO reviewer VALUES (
  DEFAULT, 'Alicia Collison', 'collison@gmail.com', 6
);

INSERT INTO reviewer VALUES (
  DEFAULT, 'Racquel Straub', 'straub@gmail.com', 1
);

INSERT INTO reviewer VALUES (
  DEFAULT, 'Marvella Keane', 'marvella@gmail.com', 4
);

INSERT INTO reviewer VALUES (
  DEFAULT, 'China Kromer', 'chinak@gmail.com', 3
);

INSERT INTO reviewer VALUES (
  DEFAULT, 'Laurie Lower', 'lower@gmail.com', 3
);

INSERT INTO reviewer VALUES (
  DEFAULT, 'Sherlyn Nagao', 'nagao@gmail.com', 2
);

INSERT INTO reviewer VALUES (
  DEFAULT, 'Iluminada Lawing', 'lawing@gmail.com', 7
);

INSERT INTO reviewer VALUES (
  DEFAULT, 'Jodi Atchley', 'jodia45@gmail.com', 1
);

INSERT INTO reviewer VALUES (
  DEFAULT, 'Taryn Beekman', 'taryn1994@gmail.com', 7
);

INSERT INTO reviewer VALUES (
  DEFAULT, 'Karisa Lafuente', 'lafuente@gmail.com', 3
);

INSERT INTO review VALUES (
  DEFAULT, 4, 'Awesome Burger', 'This place has great buffalo burgers!', 5,9
);

INSERT INTO review VALUES (
  DEFAULT, 5, 'Look Nowhere else for pasta', 'You must get the pasta bolognese at this place. Unbelivable', 8,3
);

INSERT INTO review VALUES (
  DEFAULT, 5, 'Best BBQ in Texas!', 'Best ribs in town. Best get them quick. They go fast', 1,12
);

INSERT INTO review VALUES (
  DEFAULT, 4, 'Great Quick Burger', 'The burgers here are top of the line. They cook it well and quick', 17,9
);

INSERT INTO review VALUES (
  DEFAULT, 3, 'Expensive Fast Food', 'This place has good food but too expensive. Quick service though', 22,6
);

INSERT INTO review VALUES (
  DEFAULT, 4, 'Best SA food in town', 'Great south african food, quite expensive though', 15,10
);

INSERT INTO review VALUES (
  DEFAULT, 1, 'Not the best Mexican Food in Town', 'Could get better and cheaper food anywhere else', 12,4
);

INSERT INTO review VALUES (
  DEFAULT, 2, 'Too Salty!', 'Good steakhouse, but too salty. Also, service not great', 3,1
);

INSERT INTO review VALUES (
  DEFAULT, 3, 'Why so popular', 'Ok, this place is good but not great. Why so popular??', 14,8
);

INSERT INTO review VALUES (
  DEFAULT, 4, 'Top Brunches in Houston', 'Want a chill and inexpensive brunch? Look no further.', 19,11
);

INSERT INTO review VALUES (
  DEFAULT, 5, 'Best Steakhouse', 'Better than Fogo. Not too salty and great service', 3,2
);

INSERT INTO review VALUES (
  DEFAULT, 2, 'Dropped Quality', 'This place hwas great two years ago. Not so much anymore', 18,13
);

INSERT INTO review VALUES (
  DEFAULT, 4, 'Cool place for Ramen', 'Not the best ramen, but it will do', 11,5
);

INSERT INTO review VALUES (
  DEFAULT, 1, 'Too expensive', 'To expensive for what they offer', 7,6
);

-- List all the reviews for a given restaurant given a specific restaurant ID.

SELECT * FROM review
  WHERE restaurant_id = 1;

-- List all the reviews for a given restaurant, given a specific restaurant name.

SELECT title, review, stars FROM review
  JOIN restaurant ON restaurant.id = restaurant_id
  WHERE restaurant.name = 'Piola';

-- List all the reviews for a given reviewer, given a specific author name.

SELECT title, review, stars FROM review
  JOIN reviewer ON reviewer.id = reviewer_id
  WHERE reviewer.name = 'Loan Tocco';

-- List all the reviews along with the restaurant they were written for. In the query result, select the restaurant name and the review text.

SELECT name, title, review, stars FROM review
  JOIN restaurant ON restaurant.id = restaurant_id
  ORDER BY name;

-- Get the average stars by restaurant. The result should have the restaurant name and its average star rating.

SELECT name, ROUND(AVG(stars),2) AS avg FROM review
  JOIN restaurant ON restaurant.id = restaurant_id
  GROUP BY name ORDER BY name;

-- Get the number of reviews written for each restaurant. The result should have the restaurant name and its review count.

SELECT name, COUNT(stars) FROM review
  JOIN restaurant ON restaurant.id = restaurant_id
  GROUP BY name ORDER BY name;

-- List all the reviews along with the restaurant, and the reviewer's name. The result should have the restaurant name, the review text, and the reviewer name. Hint: you will need to do a three-way join - i.e. joining all three tables together.

SELECT restaurant.name AS restaurant, review, reviewer.name as reviewer FROM review
  JOIN restaurant ON restaurant.id = restaurant_id
  JOIN reviewer ON reviewer.id = reviewer_id;

-- Get the average stars given by each reviewer. (reviewer name, average star rating)

SELECT name, ROUND(AVG(stars),2) as avg_stars FROM review
  JOIN reviewer ON reviewer.id = reviewer_id
  GROUP BY name ORDER BY name;

-- Get the lowest star rating given by each reviewer. (reviewer name, lowest star rating)

SELECT name, ROUND(MIN(stars),2) as avg_stars FROM review
  JOIN reviewer ON reviewer.id = reviewer_id
  GROUP BY name ORDER BY name;

-- Get the number of restaurants in each category. (category name, restaurant count)

SELECT category, COUNT(name) FROM restaurant
  GROUP BY category;

-- Get number of 5 star reviews given by restaurant. (restaurant name, 5-star count)

SELECT name, COUNT(stars) AS count_of_5_star FROM review
  JOIN restaurant ON restaurant.id = restaurant_id
  WHERE stars = 5 GROUP BY name;

-- Get the average star rating for a food category. (category name, average star rating)

SELECT category, ROUND(AVG(stars),2) FROM review
  JOIN restaurant ON restaurant.id = restaurant_id
  GROUP BY category ORDER BY category;