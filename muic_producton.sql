CREATE DATABASE music_production;
USE music_production;
CREATE TABLE artists (
    artist_id INT AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(255),
    country VARCHAR(100),
    genre VARCHAR(100)
);
CREATE TABLE albums (
    album_id INT AUTO_INCREMENT PRIMARY KEY,
    album_title VARCHAR(255),
    release_year INT,
    artist_id INT,
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);
CREATE TABLE tracks (
    track_id INT AUTO_INCREMENT PRIMARY KEY,
    track_title VARCHAR(255),
    duration TIME,
    album_id INT,
    FOREIGN KEY (album_id) REFERENCES albums(album_id)
);
INSERT INTO artists (artist_name, country, genre) VALUES
('Artist 1', 'Country 1', 'Genre 1'),
('Artist 2', 'Country 2', 'Genre 2'),
('Artist 3', 'Country 3', 'Genre 3'),
('Artist 4', 'Country 4', 'Genre 4'),
('Artist 5', 'Country 5', 'Genre 5'),
('Artist 6', 'Country 6', 'Genre 6'),
('Artist 7', 'Country 7', 'Genre 7'),
('Artist 8', 'Country 8', 'Genre 8'),
('Artist 9', 'Country 9', 'Genre 9'),
('Artist 10', 'Country 10', 'Genre 10'),
('Artist 11', 'Country 11', 'Genre 11'),
('Artist 12', 'Country 12', 'Genre 12'),
('Artist 13', 'Country 13', 'Genre 13'),
('Artist 14', 'Country 14', 'Genre 14'),
('Artist 15', 'Country 15', 'Genre 15');
INSERT INTO albums (album_title, release_year, artist_id) VALUES
('Album 1', 2020, 1),  -- Assuming the artist_id for Artist 1 is 1
('Album 2', 2018, 2),  -- Assuming the artist_id for Artist 2 is 2
('Album 3', 2019, 3),  -- Assuming the artist_id for Artist 3 is 3
('Album 4', 2021, 4),  -- Assuming the artist_id for Artist 4 is 4
('Album 5', 2020, 5),  -- Assuming the artist_id for Artist 5 is 5
('Album 6', 2017, 6),  -- Assuming the artist_id for Artist 6 is 6
('Album 7', 2016, 7),  -- Assuming the artist_id for Artist 7 is 7
('Album 8', 2019, 8),  -- Assuming the artist_id for Artist 8 is 8
('Album 9', 2022, 9),  -- Assuming the artist_id for Artist 9 is 9
('Album 10', 2021, 10),  -- Assuming the artist_id for Artist 10 is 10
('Album 11', 2018, 11),  -- Assuming the artist_id for Artist 11 is 11
('Album 12', 2020, 12),  -- Assuming the artist_id for Artist 12 is 12
('Album 13', 2017, 13),  -- Assuming the artist_id for Artist 13 is 13
('Album 14', 2016, 14),  -- Assuming the artist_id for Artist 14 is 14
('Album 15', 2023, 15);  -- Assuming the artist_id for Artist 15 is 15
INSERT INTO tracks (track_title, duration, album_id) VALUES
('Track 1', '00:03:30', 1),  -- Assuming the album_id for Album 1 is 1
('Track 2', '00:04:15', 2),  -- Assuming the album_id for Album 2 is 2
('Track 3', '00:03:50', 3),  -- Assuming the album_id for Album 3 is 3
('Track 4', '00:05:00', 4),  -- Assuming the album_id for Album 4 is 4
('Track 5', '00:04:20', 5),  -- Assuming the album_id for Album 5 is 5
('Track 6', '00:03:45', 6),  -- Assuming the album_id for Album 6 is 6
('Track 7', '00:04:10', 7),  -- Assuming the album_id for Album 7 is 7
('Track 8', '00:03:20', 8),  -- Assuming the album_id for Album 8 is 8
('Track 9', '00:04:30', 9),  -- Assuming the album_id for Album 9 is 9
('Track 10', '00:03:55', 10),  -- Assuming the album_id for Album 10 is 10
('Track 11', '00:04:05', 11),  -- Assuming the album_id for Album 11 is 11
('Track 12', '00:03:40', 12),  -- Assuming the album_id for Album 12 is 12
('Track 13', '00:04:25', 13),  -- Assuming the album_id for Album 13 is 13
('Track 14', '00:03:15', 14),  -- Assuming the album_id for Album 14 is 14
('Track 15', '00:04:00', 15);  -- Assuming the album_id for Album 15 is 15
