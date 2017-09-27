TRUNCATE TABLE kicks;

ALTER SEQUENCE kicks_id_seq RESTART WITH 1;

INSERT INTO kicks(name, image_url, video_link) VALUES ('Air Jordan 1', 'https://newsneakernews-wpengine.netdna-ssl.com/wp-content/uploads/2016/08/air-jordan-1-banned-official-photos-01-323x215.jpg', 'https://www.youtube.com/watch?v=zkXkrSLe-nQ');
