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
  review INTEGER,
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