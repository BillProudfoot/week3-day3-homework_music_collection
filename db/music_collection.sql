DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS artists;

CREATE TABLE artists (
ID serial8 PRIMARY KEY,
name VARCHAR(225)
);

CREATE TABLE albums (
id serial8 PRIMARY KEY,
title VARCHAR(255),
genre VARCHAR (225),
artist_id INT4 REFERENCES artists(id)
);


