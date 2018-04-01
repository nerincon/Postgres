CREATE TABLE restaurant (
  id SERIAL NOT NULL PRIMARY KEY,
  name VARCHAR,
  distance INTEGER,
  stars INTEGER,
  category VARCHAR,
  favorite_dish VARCHAR,
  does_takeout BOOLEAN,
  last_time_you_ate_there DATE
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'Fogo de Chao', 10, 4, 'steakhouse','buffet', FALSE, '2017-04-17'
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'Chama Gaucha', 10, 4, 'steakhouse','buffet', FALSE, '2017-09-20'
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'Piola', 5, 3.8, 'italian','parpadelle bolognese', FALSE, '2018-02-13'
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'Jinja', 5, 3.8, 'japanese','chicken ramen', FALSE, '2018-03-25'
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'Gusto Gourmet', 8, 3, 'venezuelan','arepa', TRUE, '2017-11-10'
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'Sal y Pimienta', 15, 5, 'south american','empanadas', FALSE, '2017-06-24'
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'Pappasitos', 5, 3, 'mexican','burrito', TRUE, '2016-12-02'
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'Bubbas', 7, 5, 'american','buffalo cheeseburger', FALSE, '2017-12-10'
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'Peli Peli', 9, 5, 'south african','filet mignon', FALSE, '2017-09-07'
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'Downhouse', 12, 5, 'american','chicken and waffles', FALSE, '2018-03-28'
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'Goode Company', 4, 5, 'BBQ','ribs', FALSE, '2017-05-22'
);

INSERT INTO restaurant VALUES (
  DEFAULT, 'The Pit Room', 7, 2, 'BBQ','chicken', TRUE, '2015-04-08'
);

SELECT name FROM restaurant WHERE stars=5;

SELECT favorite_dish FROM restaurant WHERE stars=5;

SELECT id FROM restaurant WHERE name='Bubbas';

SELECT * FROM restaurant WHERE category='BBQ';

SELECT * FROM restaurant WHERE does_takeout=TRUE;

SELECT * FROM restaurant WHERE does_takeout=TRUE AND category='BBQ';

SELECT * FROM restaurant WHERE distance <= 4;

SELECT * FROM restaurant WHERE last_time_you_ate_there < '3/25/2018';
-- OR
SELECT * FROM restaurant WHERE last_time_you_ate_there < '2018-03-25';

SELECT * FROM restaurant WHERE last_time_you_ate_there < '3/25/2018' AND stars=5;

SELECT * FROM restaurant ORDER BY distance;

SELECT * FROM restaurant ORDER BY distance LIMIT 2;

SELECT * FROM restaurant ORDER BY stars DESC LIMIT 2;

SELECT * FROM restaurant WHERE distance < 8 ORDER BY stars DESC LIMIT 2;

SELECT COUNT (*) FROM restaurant;

SELECT COUNT (*) FROM restaurant GROUP BY category;

SELECT category, AVG (stars) FROM restaurant GROUP BY category;

SELECT category, MAX (stars) FROM restaurant GROUP BY category;