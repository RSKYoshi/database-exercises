-- The name of all albums by Pink Floyd.
-- The year Sgt. Pepper's Lonely Hearts Club Band was released
-- Which albums were released in the 1990s
-- Which albums had less than 20 million certified sales
-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?


-- INSERT INTO albums (artist, name, release_date, genre, sales)
-- VALUES ('Michael Jackson', 'Thriller', 1982, 'Pop, post-disco, funk, rock', 50.2),
--        ('AC/DC', 'Back in Black', 1980, 'Hard rock', 30.1),
--        ('Eagles', 'Their Greatest Hits (1971–1975)', 1976, 'Country rock, soft rock, folk rock', 41.2),
--        ('Eagles', 'Hotel California', 1976, 'Soft rock', 31.8),
--        ('Led Zeppelin', 'Led Zeppelin IV', 1971, 'Hard rock', 30.4)

-- To truncate
TRUNCATE albums;

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Michael Jackson', 'Thriller', 1982, 'Pop, post-disco, funk, rock', '50.2'),
    ('AC/DC', 'Back in Black', 1980, 'Hard rock', '30.1'),
    ('Whitney Houston', 'The Bodyguard', 1992, 'R&B, soul, pop, soundtrack', '28.7'),
    ('Pink Floyd', 'The Dark Side of the Moon', 1973, 'Progressive rock', '24.8'),
    ('Eagles', 'Their Greatest Hits (1971 - 1975)', 1976, 'Country rock, soft rock, folk rock', '41.2'),
    ('Eagles', 'Hotel California', 1976, 'Soft rock', '31.8'),
    ('Shania Twain', 'Come On Over', 1997, 'Country, pop', '29.9'),
    ('Fleetwood Mac', 'Rumours', 1977, 'Soft rock', '29.3'),
    ('Bee Gees', 'Saturday Night Fever', 1977, 'Disco', '22.6'),
    ('Led Zeppelin', 'Led Zeppelin IV', 1971, 'Hard rock, heavy metal, folk rock', '30.4'),
    ('Michael Jackson', 'Bad', 1987, 'Pop, rhythm and blues, funk and rock', '21.1'),
    ('Meat Loaf', 'Bat Out of Hell', 1977, 'Hard rock, glam rock, progressive rock', '22'),
    ('Alanis Morissette', 'Jagged Little Pill', 1995, 'Alternative rock', '25.4'),
    ('Various artists', 'Dirty Dancing', 1987, 'Pop, rock, R&B', '24.1'),
    ('Celine Dion', 'Falling into You', 1996, 'Pop, soft rock', '21.1'),
    ('Adele', '21', 2011, 'Pop, soul', '27.1'),
    ('The Beatles', '1', 2000, 'Rock', '23.2'),
    ('Metallica', 'Metallica', 1991, 'Heavy metal', '22.7'),
    ('Celine Dion', 'Let''s Talk About Love', 1997, 'Pop, soft rock', '19.5'),
    ('Guns N'' Roses', 'Appetite for Destruction', 1987, 'Hard rock', '22.8'),
    ('Bob Marley & The Wailers', 'Legend: The Best of Bob Marley & The Wailers', 1984, 'Reggae', '22.9'),
    ('Bruce Springsteen', 'Born in the U.S.A.', 1984, 'Heartland rock', '22'),
    ('ABBA', 'Gold: Greatest Hits', 1992, 'Pop, disco', '21.6'),
    ('Dire Straits', 'Brothers in Arms', 1985, 'rock, Roots rock, blues rock, soft-rock, blues', '21.1'),
    ('Santana', 'Supernatural', 1999, 'Latin rock', '20.8'),
    ('Madonna', 'The Immaculate Collection', 1990, 'Pop, dance', '19.8'),
    ('Pink Floyd', 'The Wall', 1979, 'Progressive rock', '18.9'),
    ('The Beatles', 'Sgt.Peppers Lonely Hearts Club Band', 1967, 'Rock', '18.3'),
    ('Michael Jackson', 'Dangerous', 1991, 'New jack swing, R&B and pop', '17.0'),
    ('The Beatles', 'Abbey Road', 1969, 'Rock', '16.8')

-- The name of all albums by Pink Floyd
SELECT * FROM albums WHERE artist = 'Pink Floyd';
-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date FROM albums WHERE name = 'Sgt.Peppers Lonely Hearts Club Band';
-- Which albums were released in the 1990s
-- SELECT name,release_date FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999
-- Which albums had less than 20 million certified sales
SELECT * FROM albums WHERE sales BETWEEN 0 AND 19.99
-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
-- Not able to parse through a string. Only looking for a singular instance of Rock?
-- now they do include it, with LIKE
SELECT * FROM albums WHERE (genre) LIKE '%rock%'



