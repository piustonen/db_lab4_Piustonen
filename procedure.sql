CREATE OR REPLACE PROCEDURE get_cloud_songs(country_arg varchar(50)) 
LANGUAGE 'plpgsql'AS $$
DECLARE record_name cloud_songs.song_name%TYPE;
DECLARE record_country cloud_performances.perf_place%TYPE;

BEGIN
    SELECT song_name, perf_place 
	INTO record_name, record_country 
	FROM cloud_songs 
	JOIN cloud_performances 
	USING(song_id) 
	WHERE perf_place = country_arg;
	
    RAISE INFO 'Song_name: %,  Performance_country: %', 
	TRIM(record_name), 
	TRIM(record_country);
END;
$$;
