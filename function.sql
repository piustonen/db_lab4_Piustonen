CREATE OR REPLACE FUNCTION clean_no_place() 
RETURNS void
LANGUAGE plpgsql AS $$
BEGIN 
   DELETE FROM cloud_releases 
   WHERE cloud_releases.song_id IN 
      (SELECT releases.song_id from cloud_releases where cloud_releases.release_place is NULL);
END;
$$;
