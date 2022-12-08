-- Procedure
CALL get_cloud_songs('USA');
CALL get_cloud_songs('UK');
CALL get_cloud_songs('Germany');
CALL get_cloud_songs('Spain');
SELECT * FROM cloud_performances;


-- Trigger
INSERT INTO cloud_genres  
VALUES ('011', 'Jazz');

INSERT INTO cloud_genres 
VALUES ('012', 'Pop');

DELETE FROM cloud_genres 
WHERE genre_id = '011';

DELETE FROM cloud_genres
WHERE genre_id = '012';

SELECT * FROM cloud_genres;


-- Function
SELECT * FROM cloud_releases;
SELECT clean_no_place();
INSERT INTO cloud_releases(release_id, genre_id, song_id, release_date, release_time, release_place) 
VALUES ('602o', '002', '6', to_date('2018-12-03', 'yyyy-mm-dd'), '20:00:00', NULL),
('901s', '001', '9', to_date('2018-11-08', 'yyyy-mm-dd'), '16:30:00', NULL);
