CREATE TABLE cloud_genres(
  genre_id char(30) NOT NULL,
  genre_name char(30) NOT NULL,
  CONSTRAINT pk_genres PRIMARY KEY (genre_id));

CREATE TABLE cloud_songs(
  song_id char(30) NOT NULL,
  song_name char(30) NOT NULL,
  CONSTRAINT pk_songs PRIMARY KEY (song_id));

CREATE TABLE cloud_artists(
  artist_id char(30) NOT NULL,
  artist_name char(30) NOT NULL,
  CONSTRAINT pk_artists PRIMARY KEY (artist_id));

CREATE TABLE cloud_releases(
  release_id char(30) NOT NULL,
  genre_id char(30) NOT NULL REFERENCES genres(genre_id),
  song_id char(30) NOT NULL REFERENCES songs(song_id),
  release_date date NOT NULL,
  release_time time NULL,
  release_place char(50) NULL,
  CONSTRAINT pk_releases PRIMARY KEY (release_id));

CREATE TABLE cloud_performances(
  perf_id char(30) NOT NULL,
  artist_id char(30) NOT NULL REFERENCES artists(artist_id),
  song_id char(30) NOT NULL REFERENCES songs(song_id),
  perf_date date NOT NULL,
  perf_time time NULL,
  perf_place char(30) NULL,
  CONSTRAINT pk_performances PRIMARY KEY (perf_id));
