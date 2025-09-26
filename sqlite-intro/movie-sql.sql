-- CREATE TABLE movie (
--     title TEXT,
--     movie_number INTEGER,
--     PRIMARY KEY (movie_number)
--     );

-- ALTER TABLE movie ADD year INTEGER;
-- ALTER TABLE movie ADD duration INTEGER;

-- INSERT INTO movie VALUES
-- ('The Matrix', 1, 2000, 120),
-- ('Howl''s Moving Castle', 2, 2005, 120),
-- ('Mad Max: Fury Road', 3, 2015, 120);

-- ALTER TABLE movie RENAME TO temp;
-- CREATE TABLE movie (
--     title TEXT,
--     movie_number INTEGER,
--     runtime INTEGER,
--     year INTEGER,
--     PRIMARY KEY (movie_number)
--     );

-- INSERT INTO movie SELECT
-- title, movie_number, duration, year
-- FROM temp;
-- DROP TABLE temp;

-- INSERT INTO movie VALUES
-- (2001, 4, '1968', '2h 29min');

-- UPDATE movie SET
-- year = 1968, runtime = 150
-- WHERE title = '2001';

-- UPDATE movie SET
-- year = 1999, runtime = 136
-- WHERE title = 'The Matrix';

-- SELECT * FROM movie;

-- SELECT title, runtime FROM movie
-- WHERE year > 2010;

-- DELETE FROM movie
-- WHERE movie_number = 1;

-- SELECT * FROM movie
-- WHERE movie_number = 1;

-- SELECT name FROM sqlite_master
-- where type = 'table';

