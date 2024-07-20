create database movies_info;
use movies_info;
create table movies_info(title VARCHAR(255),director VARCHAR(255),genre VARCHAR(255),release_year INT,budget BIGINT);

select * from movies_info;
alter table movies_info add column movie_rating varchar(25);
alter table movies_info add column movie_casting varchar(30);
alter table movies_info add column movie_no int;
alter table movies_info add column movie_duration bigint;
alter table movies_info add column is_hit boolean;

select * from movies_info;
desc movies_info;

INSERT INTO movies_info (title, director, genre, release_year, budget, movie_rating,movie_casting,movie_no,movie_duration,is_hit)
VALUES
('RRR', 'S. S. Rajamouli', 'Action', 2022, 550000000, 'UA', 'telugu', 12,300000, TRUE),
('KGF: Chapter 2', 'Prashanth Neel', 'Action', 2022, 100000000, 'UA', 'pan_india',4,200000, TRUE),
('Pathaan', 'Siddharth Anand', 'Action', 2023, 250000000, 'UA', 'hindi',29,325000, TRUE),
('Pushpa: The Rise', 'Sukumar', 'Action', 2021, 100000000, 'UA','Telugu',24,255000, TRUE),
('Drishyam 2', 'Abhishek Pathak', 'Thriller', 2022, 20000000, 'UA','Hindi',67,210000, TRUE),
('Radhe Shyam', 'Radha Krishna Kumar', 'Romance', 2022, 300000000, 'UA','Telugu',14,278000, FALSE),
('Sooryavanshi', 'Rohit Shetty', 'Action', 2021, 160000000, 'UA', 'Hindi', 145, 300000000, TRUE),
('Jersey', 'Gowtam Tinnanuri', 'Drama', 2022, 100000000, 'UA', 'Hindi',170, 270000000, FALSE),
('Shershaah', 'Vishnuvardhan', 'Biographical', 2021, 50000000, 'UA','Hindi', 135, 200000000,  TRUE),
('83', 'Kabir Khan', 'Sports', 2021, 125000000, 'UA',  'Hindi',162, 193000000, TRUE);

select * from movies_info;


UPDATE movies_info SET budget = 600000000 WHERE title = 'RRR';
UPDATE movies_info SET release_year = 2021 WHERE title = 'KGF: Chapter 2';
UPDATE movies_info SET movie_duration = 150 WHERE title = 'Pathaan';
UPDATE movies_info SET movie_duration = 330000 WHERE title = 'Pushpa: The Rise';
UPDATE movies_info SET genre = 'Crime Thriller' WHERE title = 'Drishyam 2';
UPDATE movies_info SET is_hit = TRUE WHERE title = 'Radhe Shyam';
UPDATE movies_info SET movie_casting = 'Tamil' WHERE title = 'Sooryavanshi';
UPDATE movies_info SET budget = 110000000 WHERE title = 'Jersey';
UPDATE movies_info SET movie_rating = 'n/A' WHERE title = 'Shershaah';
UPDATE movies_info SET release_year= 2024 WHERE title = '83';



DELETE FROM movies_info WHERE title = '83';
DELETE FROM movies_info WHERE title = 'Shershaah';
DELETE FROM movies_info WHERE title = 'pathaan';

SELECT * FROM movie_info WHERE genre = 'Action';

SELECT * FROM movies_info WHERE genre = 'Action' AND is_hit = TRUE;
SELECT * FROM movies_info WHERE genre = 'Action' OR genre = 'Thriller';
SELECT * FROM movies_info WHERE title IN ('RRR', 'KGF: Chapter 2', 'Pathaan');

SELECT * FROM movies_info WHERE title NOT IN ('RRR');

select * from movies_info;
