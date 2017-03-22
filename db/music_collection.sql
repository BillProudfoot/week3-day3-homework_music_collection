DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS artists;

CREATE TABLE albums (
id serial4 PRIMARY KEY,
title VARCHAR(255)
genre VARCHAR (225)
artist_id INT4 REFERENCES artists(id)
);

CREATE TABLE artists (
ID serial4 PRIMARY KEY,
name VARCHAR(225)
);
