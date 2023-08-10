--  таблица  GENRIES
CREATE TABLE IF NOT EXISTS genries (
    genre_id SERIAL PRIMARY KEY, 
    genre_name VARCHAR(30) UNIQUE NOT NULL
    );

--  таблица  SINGERS
CREATE TABLE singers (
    singer_id SERIAL PRIMARY KEY, 
    allias VARCHAR(30) UNIQUE NOT NULL
    );

--  промежуточная таблица  SINGER_GENRE
CREATE TABLE singer_genre (
    id_genre_sg INTEGER NOT NULL REFERENCES genries (genre_id), 
    id_singer_sg INTEGER NOT NULL REFERENCES singers (singer_id),
    CONSTRAINT pk PRIMARY KEY (id_genre_sg, id_singer_sg)
    );

--  таблица  ALBUMS
CREATE TABLE albums (
    album_id SERIAL PRIMARY KEY, 
    album_name VARCHAR(30) UNIQUE NOT NULL,
    year_of_created SMALLINT NOT NULL
    );

--  промежуточная таблица  SINGER_ALBUM
CREATE TABLE singer_album (
    id_singer_sa INTEGER NOT NULL REFERENCES singers (singer_id), 
    id_album_sa INTEGER NOT NULL REFERENCES albums (album_id),
    CONSTRAINT pkk PRIMARY KEY (id_singer_sa, id_album_sa)
    );

--  таблица  TRACKS
CREATE TABLE tracks (
    track_id SERIAL PRIMARY KEY, 
    track_name VARCHAR(30) UNIQUE NOT NULL,
    long TIME NOT NULL,
    from_album INTEGER NOT NULL REFERENCES albums (album_id)
    );

--  таблица  COLLECTIONS
CREATE TABLE collections (
    collection_id SERIAL PRIMARY KEY, 
    collection_name VARCHAR(30) UNIQUE NOT NULL,
    created_year SMALLINT NOT NULL
    );

--  промежуточная таблица  COLLECTIONS_TRACKS
CREATE TABLE collections_tracks (
    id_track_ct INTEGER NOT NULL REFERENCES tracks (track_id), 
    id_collection_ct INTEGER NOT NULL REFERENCES collections (collection_id),
    CONSTRAINT pkkk PRIMARY KEY (id_track_ct, id_collection_ct)
    );
