

-- Write SELECT statements to output each of the following with a caption:
--
--     All albums in your table.
SELECT * FROM albums
--     All albums released before 1980
SELECT * FROM albums WHERE release_date BETWEEN 1900 AND 1979
--     All albums by Michael Jackson
SELECT * FROM albums WHERE artist = 'Michael Jackson'

-- After each SELECT add an UPDATE statement to:

--     Make all the albums 10 times more popular (sales * 10)
SELECT * FROM albums
UPDATE albums
SET sales = sales*10

--     Move all the albums before 1980 back to the 1800s.
SELECT * FROM albums
WHERE release_date BETWEEN 1900 AND 1979
-- UPDATE albums WHERE release_date BETWEEN 1900 AND 1979
UPDATE albums
-- SET release_date = 1800
SET release_date = 1800
WHERE release_date BETWEEN 1900 AND 1979

--     Change 'Michael Jackson' to 'Peter Jackson'
SELECT * FROM albums WHERE artist = 'Michael Jackson'

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson'


