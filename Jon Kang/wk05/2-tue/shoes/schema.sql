DROP TABLE IF EXISTS kicks;

CREATE TABLE kicks
(
   id SERIAL PRIMARY KEY,
   name VARCHAR(255),
   image_url VARCHAR(400),
   video_link VARCHAR(400)
);
