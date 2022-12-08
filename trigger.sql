CREATE OR REPLACE FUNCTION lower_genre_name() RETURNS trigger AS
$$
     BEGIN
          UPDATE cloud_genres 
          SET genre_name = LOWER(genre_name) 
		  WHERE cloud_genres.genre_id = NEW.genre_id; 
      RETURN NULL;
     END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER cloud_genre_name_insert 
AFTER INSERT ON cloud_genres
FOR EACH ROW 
EXECUTE FUNCTION lower_genre_name();

