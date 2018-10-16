DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);

INSERT INTO people (name) VALUES ('Rabah	Meliani');
INSERT INTO people (name) VALUES ('Robert Baker');
INSERT INTO people (name) VALUES ('Louise Meney');
INSERT INTO people (name) VALUES ('Stewart Cowan');
INSERT INTO people (name) VALUES ('Colin Bell');
INSERT INTO people (name) VALUES ('Alex McIntosh');
INSERT INTO people (name) VALUES ('Steven McAndrew');
INSERT INTO people (name) VALUES ('Michael Allen');
INSERT INTO people (name) VALUES ('Robin	Hughes');
INSERT INTO people (name) VALUES ('Stevie');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '17:55');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '21:40');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '21:15');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '18:30');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '12:00');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '22:55');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '14:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '20:40');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '14:05');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '15:30');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '14:25');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '12:45');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '23:05');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '17:40');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '21:45');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '21:45');
INSERT INTO movies (title, year, show_time) VALUES ('Spider-Man: Homecoming', 2017, '12:25');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: Ragnarok', 2017, '23:20');
INSERT INTO movies (title, year, show_time) VALUES ('Black Panther', 2018, '15:05');
INSERT INTO movies (title) VALUES ('Avengers: Infinity War');

--
-- # SQL Homework
--
-- The local cinema are having a Marvel Movie Marathon! They have asked you to help maintain their database of movies with times and attendees.
--
-- ## To access the database:
--
-- First, create a database called 'marvel'
--
-- ```
-- # terminal
-- createdb marvel
-- ```
--
-- Next, run the provided SQL script to populate your database:
--
-- ```
-- # terminal
-- psql -d marvel -f marvel.sql
-- ```
--
-- Use the supplied data as the source of data to answer the questions. Copy the SQL command you have used to get the answer, and paste it below the question, along with the result they gave.
--
-- ## Questions
--
-- 1.  Return ALL the data in the 'movies' table.
SELECT * FROM MOVIES;
-- 2.  Return ONLY the name column from the 'people' table
 SELECT name FROM people;
-- 3.  Oops! Someone at CodeClan spelled Michael's name wrong! Change it to reflect the proper spelling ('Michael Allen' should be 'Michael Allan').

UPDATE people SET name = 'Michael Allan' WHERE name = 'Michael Allen';

-- 4.  Return ONLY your name from the 'people' table.
SELECT * FROM people WHERE id=6;
-- 5.  The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
DELETE FROM movies WHERE title = 'Batman Begins';

-- 6.  Create a new entry in the 'people' table with the name of one of the instructors.

INSERT INTO people (name) VALUES ('Stevie');
-- 7.  Colin Bell has decided to hijack our movie evening. Remove him from the table of people.
DELETE FROM people WHERE name = 'Colin Bell';
-- 8.  The cinema has just heard that they will be holding an exclusive midnight showing of 'Avengers: Infinity War'!! Create a new entry in the 'movies' table to reflect this.
INSERT INTO movies (title) VALUES ('Avengers: Infinity War');

-- 9.  The cinema would also like to make the Guardians movies a back to back feature. Find out the show time of "Guardians of the Galaxy" and set the show time of "Guardians of the Galaxy 2" to start two hours later.
UPDATE movies SET show_time = '16.25' WHERE title = 'Guardians of the Galaxy 2';
-- ## Extension
--
-- 1.  Research how to delete multiple entries from your table in a single command.


DELETE FROM movies WHERE id IN (1, 2, 3);


SELECT * FROM MOVIES;
-- SELECT name FROM people;
-- SELECT * FROM people;
-- SELECT * FROM people WHERE id=6;
-- SELECT * FROM movies WHERE title = 'Guardians of the Galaxy';
