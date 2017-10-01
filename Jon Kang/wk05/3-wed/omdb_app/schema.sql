DROP TABLE IF EXISTS movies;

CREATE TABLE movies
(
   id SERIAL4 PRIMARY KEY,
   name VARCHAR(32),
   release_date VARCHAR(32),
   runtime VARCHAR(32),
   actors VARCHAR(400),
   plot VARCHAR(500),
   rating VARCHAR(100),
   poster_url VARCHAR(400),
   imdb_id VARCHAR(32)
);
