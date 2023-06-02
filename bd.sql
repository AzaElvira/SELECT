CREATE TABLE IF NOT exists compilation_albums(
    id serial PRIMARY KEY,
    comp_name varchar(100) NOT NULL unique,
    comp_year varchar(100) 
);
   
CREATE TABLE IF NOT exists compilation_tracks(
    id serial PRIMARY KEY,
    comp_alb_id integer references compilation_albums(id),
    track_id integer references tracks(id)
);

CREATE TABLE IF NOT exists tracks(
    id serial PRIMARY key,
    Album_id integer references albums(id),
    Track_name varchar(100) NOT NULL unique,
    Track_length varchar(100) integer references
);

CREATE TABLE IF NOT exists albums(
    id serial PRIMARY key,
    album_name varchar(100) NOT NULL unique,
    album_year varchar(100)
);

CREATE TABLE IF NOT exists artist_2_album(
    id serial PRIMARY KEY,
    artist_id integer references artist(id),
    album_id integer references albums(id)
);

CREATE TABLE IF NOT exists artist(
    id serial PRIMARY key,
    artist_name varchar(100) NOT NULL unique
);

CREATE TABLE IF NOT exists genr_2_artist(
    id serial PRIMARY KEY,
    genre_id integer references genres(id),
    artist_id integer references artist(id)
);

CREATE TABLE IF NOT exists genres(
    id serial PRIMARY key,
    genre_name varchar(100) NOT NULL unique
);

