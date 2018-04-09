-- CREATE SCHEMAS

CREATE TABLE artists (
  id INTEGER NOT NULL,
  name VARCHAR,
  bandname VARCHAR,
  lead_bol BOOLEAN,
  collaborator_bol BOOLEAN,
  album_id INTEGER
);

CREATE TABLE albums (
  id INTEGER NOT NULL,
  name VARCHAR,
  artist_id INTEGER,
  song_id INTEGER
);

CREATE TABLE songs (
  id INTEGER NOT NULL,
  name VARCHAR,
  duration INTEGER,
  track BOOLEAN,
  album_id INTEGER,
  songwriter_id INTEGER
);

CREATE TABLE songwriters (
  id INTEGER NOT NULL,
  name VARCHAR,
  song_id INTEGER
);

-- INSERT DATA

INSERT INTO artists VALUES (
  1, 'Floria Amen', 'Blinkers', TRUE, FALSE, 1
);

INSERT INTO artists VALUES (
  2, 'Milford Kruse', 'Blinkers', FALSE, TRUE, 1
);

INSERT INTO artists VALUES (
  1, 'Floria Amen', 'Blinkers', TRUE, FALSE, 2
);

INSERT INTO artists VALUES (
  2, 'Milford Kruse', 'Blinkers', FALSE, TRUE, 2
);

INSERT INTO albums VALUES (
  1, 'Time', 1, 1
);
INSERT INTO albums VALUES (
  1, 'Time', 1, 2
);
INSERT INTO albums VALUES (
  1, 'Time', 1, 3
);
INSERT INTO albums VALUES (
  1, 'Time', 2, 1
);
INSERT INTO albums VALUES (
  1, 'Time', 2, 2
);
INSERT INTO albums VALUES (
  1, 'Time', 2, 3
);

INSERT INTO albums VALUES (
  2, 'Roll', 1, 4
);
INSERT INTO albums VALUES (
  2, 'Roll', 1, 5
);
INSERT INTO albums VALUES (
  2, 'Roll', 2, 4
);
INSERT INTO albums VALUES (
  2, 'Roll', 2, 5
);

INSERT INTO songs VALUES (
  1, 'Low Tide', 280, FALSE, 1, 1
);

INSERT INTO songs VALUES (
  2, 'It is on', 200, FALSE, 1, 1
);

INSERT INTO songs VALUES (
  3, 'Now Hide', 150, FALSE, 1, 2
);

INSERT INTO songs VALUES (
  4, 'Life on Skates', 200, FALSE, 2, 1
);

INSERT INTO songs VALUES (
  5, 'Lost in Music', 150, FALSE, 2, 1
);

INSERT INTO songwriters VALUES (
  1, 'Lori Gibson', 1
);
INSERT INTO songwriters VALUES (
  1, 'Lori Gibson', 2
);
INSERT INTO songwriters VALUES (
  1, 'Lori Gibson', 3
);
INSERT INTO songwriters VALUES (
  1, 'Lori Gibson', 4
);
INSERT INTO songwriters VALUES (
  2, 'Manu Johnson', 5
);

--------------------------------------------------------

INSERT INTO artists VALUES (
  3, 'Genevive Piekarski', 'Lion and the Champs', TRUE, FALSE, 3
);

INSERT INTO artists VALUES (
  4, 'Eugena Cawthorne', 'Lion and the Champs', FALSE, TRUE, 3
);

INSERT INTO artists VALUES (
  3, 'Genevive Piekarski', 'Lion and the Champs', TRUE, FALSE, 4
);

INSERT INTO artists VALUES (
  4, 'Eugena Cawthorne', 'Lion and the Champs', FALSE, TRUE, 4
);

INSERT INTO albums VALUES (
  3, 'Enough', 3, 6
);
INSERT INTO albums VALUES (
  3, 'Enough', 3, 7
);
INSERT INTO albums VALUES (
  3, 'Enough', 3, 8
);
INSERT INTO albums VALUES (
  3, 'Enough', 4, 6
);
INSERT INTO albums VALUES (
  3, 'Enough', 4, 7
);
INSERT INTO albums VALUES (
  3, 'Enough', 4, 8
);

INSERT INTO albums VALUES (
  4, 'Close', 3, 9
);
INSERT INTO albums VALUES (
  4, 'Close', 3, 10
);
INSERT INTO albums VALUES (
  4, 'Close', 4, 9
);
INSERT INTO albums VALUES (
  4, 'Close', 4, 10
);

INSERT INTO songs VALUES (
  6, 'London Calling', 200, FALSE, 1, 3
);

INSERT INTO songs VALUES (
  7, 'Star Life', 300, FALSE, 1, 3
);

INSERT INTO songs VALUES (
  8, 'Boston', 180, FALSE, 1, 3
);

INSERT INTO songs VALUES (
  9, 'Lighting Rod', 160, TRUE, 1, 3
);

INSERT INTO songs VALUES (
  10, 'Crazy', 180, TRUE, 1, 3
);

INSERT INTO songwriters VALUES (
  3, 'Jared Hensler', 6
);
INSERT INTO songwriters VALUES (
  3, 'Jared Hensler', 7
);
INSERT INTO songwriters VALUES (
  3, 'Jared Hensler', 8
);
INSERT INTO songwriters VALUES (
  3, 'Jared Hensler', 9
);
INSERT INTO songwriters VALUES (
  3, 'Jared Hensler', 10
);

----------------------------------------------

INSERT INTO artists VALUES (
  5, 'Wiley Cutshaw', 'The Lost Ages', TRUE, FALSE, 5
);

INSERT INTO artists VALUES (
  6, 'Korey Bentler', 'The Lost Ages', FALSE, TRUE, 5
);

INSERT INTO albums VALUES (
  5, 'Heroes', 5, 11
);
INSERT INTO albums VALUES (
  5, 'Heroes', 5, 12
);
INSERT INTO albums VALUES (
  5, 'Heroes', 6, 11
);
INSERT INTO albums VALUES (
  5, 'Heroes', 6, 12
);

INSERT INTO songs VALUES (
  11, 'London Calling', 220, FALSE, 1, 4
);

INSERT INTO songs VALUES (
  12, 'Boston', 185, FALSE, 1, 4
);

INSERT INTO songwriters VALUES (
  4, 'Andres Quimby', 11
);

INSERT INTO songwriters VALUES (
  4, 'Andres Quimby', 12
);

