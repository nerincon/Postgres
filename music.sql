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
  release_date DATE,
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
  1, 'Time', '1/1/1962', 1, 1
);
INSERT INTO albums VALUES (
  1, 'Time', '1/1/1962', 1, 2
);
INSERT INTO albums VALUES (
  1, 'Time', '1/1/1962', 1, 3
);
INSERT INTO albums VALUES (
  1, 'Time', '1/1/1962', 2, 1
);
INSERT INTO albums VALUES (
  1, 'Time', '1/1/1962', 2, 2
);
INSERT INTO albums VALUES (
  1, 'Time', '1/1/1962', 2, 3
);

INSERT INTO albums VALUES (
  2, 'Roll', '1/1/1975', 1, 4
);
INSERT INTO albums VALUES (
  2, 'Roll', '1/1/1975', 1, 5
);
INSERT INTO albums VALUES (
  2, 'Roll', '1/1/1975', 2, 4
);
INSERT INTO albums VALUES (
  2, 'Roll', '1/1/1975', 2, 5
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
  3, 'Enough', '1/1/1986', 3, 6
);
INSERT INTO albums VALUES (
  3, 'Enough', '1/1/1986', 3, 7
);
INSERT INTO albums VALUES (
  3, 'Enough', '1/1/1986', 3, 8
);
INSERT INTO albums VALUES (
  3, 'Enough', '1/1/1986', 4, 6
);
INSERT INTO albums VALUES (
  3, 'Enough', '1/1/1986', 4, 7
);
INSERT INTO albums VALUES (
  3, 'Enough', '1/1/1986', 4, 8
);

INSERT INTO albums VALUES (
  4, 'Close', '1/1/1991', 3, 9
);
INSERT INTO albums VALUES (
  4, 'Close', '1/1/1991', 3, 10
);
INSERT INTO albums VALUES (
  4, 'Close', '1/1/1991', 4, 9
);
INSERT INTO albums VALUES (
  4, 'Close', '1/1/1991', 4, 10
);

INSERT INTO songs VALUES (
  6, 'London Calling', 200, FALSE, 3, 3
);

INSERT INTO songs VALUES (
  7, 'Star Life', 300, FALSE, 3, 3
);

INSERT INTO songs VALUES (
  8, 'Boston', 180, FALSE, 3, 3
);

INSERT INTO songs VALUES (
  9, 'Lighting Rod', 160, TRUE, 4, 3
);

INSERT INTO songs VALUES (
  10, 'Crazy', 180, TRUE, 4, 3
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
  5, 'Heroes', '1/1/2015', 5, 11
);
INSERT INTO albums VALUES (
  5, 'Heroes', '1/1/2015', 5, 12
);
INSERT INTO albums VALUES (
  5, 'Heroes', '1/1/2015', 6, 11
);
INSERT INTO albums VALUES (
  5, 'Heroes', '1/1/2015', 6, 12
);

INSERT INTO songs VALUES (
  11, 'London Calling', 220, FALSE, 5, 4
);

INSERT INTO songs VALUES (
  12, 'Boston', 185, FALSE, 5, 4
);

INSERT INTO songwriters VALUES (
  4, 'Andres Quimby', 11
);

INSERT INTO songwriters VALUES (
  4, 'Andres Quimby', 12
);

-- What are tracks for a given album?
SELECT DISTINCT(songs.name) AS song_name FROM songs
  JOIN albums ON albums.id = songs.album_id
  WHERE albums.name = 'Time' AND songs.track = TRUE;

-- What are the albums produced by a given artist?
SELECT DISTINCT(albums.name) AS album_name FROM albums
  JOIN artists ON artists.id = albums.artist_id
  WHERE artists.name = 'Milford Kruse';

-- What is the song with the longest duration?
SELECT name, duration FROM songs
  ORDER BY duration DESC LIMIT 1;

-- What are the albums released in the 60s? 70s? 80s? 90s?
SELECT DISTINCT(name) AS album_name FROM albums
  WHERE release_date BETWEEN '1/1/1960' and '1/1/1999';

-- How many albums did a given artist produce in the 90s?
SELECT COUNT(album_id) FROM (SELECT DISTINCT(album_id) FROM albums
  INNER JOIN artists on albums.artist_id = artists.id
  WHERE artists.name = 'Genevive Piekarski' AND release_date BETWEEN '1/1/1990' AND '1/1/1999')
  AS count;

-- What is each artist's latest album? Note: Need to add album name
SELECT DISTINCT(artists.name) AS artist_name, MAX(release_date) AS release_date FROM albums
  INNER JOIN artists ON albums.artist_id = artists.id
  GROUP BY artists.name;

-- List all albums along with its total duration based on summing the duration of its songs. Note: need to put album name
SELECT album_id, SUM(duration) FROM songs
  WHERE songs.track = FALSE
  GROUP BY album_id ORDER BY album_id;

-- What is the album with the longest duration? Note: need to put album name.
SELECT album_id, SUM(duration) FROM songs
  WHERE songs.track = FALSE
  GROUP BY album_id ORDER BY sum DESC LIMIT 1;

-- Who are the 5 most prolific artists based on the number of albums they have recorded?
SELECT name, COUNT(album_id) FROM artists
  GROUP BY name ORDER BY count DESC LIMIT 1;

-- What are all the tracks/songs a given artist has recorded?
SELECT artists.name, songs.name FROM artists
  JOIN albums ON albums.id = artists.album_id
  JOIN songs ON songs.id = albums.song_id
  GROUP BY artists.name, songs.name
  ORDER BY artists.name;

-- Who is the most prolific song writer based on the number of songs he has written?
SELECT name, COUNT(song_id) FROM songwriters
  GROUP BY name ORDER BY count DESC LIMIT 1;

-- Who are the song writers whose songs a given artist has recorded?
SELECT songwriters.name AS song_writer, artists.name AS artist FROM artists
  JOIN albums ON albums.id = artists.album_id
  JOIN songs ON songs.id = albums.song_id
  JOIN songwriters ON songs.id = songwriters.song_id
  WHERE artists.name = 'Floria Amen'
  GROUP BY songwriters.name, artists.name;

-- Who are the artists who have recorded a given song writer's songs?
SELECT songwriters.name AS song_writer, artists.name AS artist FROM artists
  JOIN albums ON albums.id = artists.album_id
  JOIN songs ON songs.id = albums.song_id
  JOIN songwriters ON songs.id = songwriters.song_id
  WHERE songwriters.name = 'Lori Gibson'
  GROUP BY songwriters.name, artists.name;

-- Given a lead artist, what collaborators has he worked with? Note: Any Given band will have a leader and collaborators
SELECT name, lead_bol AS leader, collaborator_bol AS collaborator FROM artists
  WHERE bandname = 'The Lost Ages'