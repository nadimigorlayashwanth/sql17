CREATE DATABASE state;
use state;
CREATE TABLE state_info (
    id INT,
    state_name VARCHAR(30),
    no_of_district INT,
    state_capital VARCHAR(30),
    no_of_assembly_seats INT,
    no_of_lokasabha_seats INT,
    no_of_rajyasabha_member INT,
    s_language VARCHAR(30),
    s_population BIGINT,
    s_area_squarekm BIGINT,
    s_per_capita BIGINT,
    s_flower VARCHAR(20),
    s_mammal VARCHAR(20),
    s_literacyrate_percentage INT,
    s_vehicle_registration VARCHAR(20)
);

select * from state_info;


INSERT INTO state_info VALUES (1, 'Karnataka', 31, 'Bangalore', 224, 28, 12, 'Kannada', 61130704, 191791, 332926, 'lotus', 'elephant', 87, 'KA');
INSERT INTO state_info VALUES (2, 'Andhra Pradesh', 28, 'Amaravati', 244, 25, 12, 'Telugu', 62230704, 91791, 342926, 'rose', 'leopard', 67, 'AP');
INSERT INTO state_info VALUES (3, 'Goa', 23, 'Panaji', 124, 8, 10, 'Hindi', 6113074, 19791, 33296, 'jasmine', 'elephant', 87, 'GA');
INSERT INTO state_info VALUES (4, 'Jharkhand', 21, 'Ranchi', 354, 76, 9, 'Hindi', 50130704, 51791, 672926, 'lily', 'kola', 45, 'JH');
INSERT INTO state_info VALUES (5, 'Himachal Pradesh', 31, 'Shimla', 224, 28, 12, 'Kannada', 61130704, 191791, 332926, 'lotus', 'elephant', 87, 'HP');
INSERT INTO state_info VALUES (6, 'Gujarat', 23, 'Gandhinagar', 789, 24, 9, 'Gujarati', 54130704, 201791, 432926, 'hibiscus', 'cheetah', 56, 'GJ');
INSERT INTO state_info VALUES (7, 'Kerala', 29, 'Thiruvananthapuram', 345, 9, 6, 'Malayalam', 1130704, 91791, 32926, 'red rose', 'elephant', 78, 'KL');
INSERT INTO state_info VALUES (8, 'Madhya Pradesh', 31, 'Bhopal', 678, 32, 10, 'Hindi', 60030704, 171791, 323926, 'jasmine', 'camel', 90, 'MP');
INSERT INTO state_info VALUES (9, 'Maharashtra', 34, 'Mumbai', 765, 34, 8, 'Hindi', 61000704, 11791, 33926, 'rose', 'polar bear', 86, 'MH');
INSERT INTO state_info VALUES (10, 'Manipur', 23, 'Imphal', 174, 21, 8, 'Manipuri', 56130704, 101791, 232926, 'jasmine', 'lion', 34, 'MN');
INSERT INTO state_info VALUES (11, 'Meghalaya', 28, 'Shillong', 120, 21, 11, 'Khasi', 11130704, 121791, 102926, 'jasmine', 'kola', 89, 'MG');
INSERT INTO state_info VALUES (12, 'Mizoram', 21, 'Aizawl', 133, 28, 12, 'Mizo', 4530704, 91791, 132926, 'rose', 'tiger', 78, 'MI');
INSERT INTO state_info VALUES (13, 'Nagaland', 19, 'Kohima', 199, 12, 12, 'Nagamese', 49130704, 121791, 222926, 'jasmine', 'leopard', 78, 'NL');
INSERT INTO state_info VALUES (14, 'Odisha', 31, 'Bhubaneswar', 224, 28, 12, 'Odia', 61130704, 191791, 332926, 'lotus', 'elephant', 87, 'OD');
INSERT INTO state_info VALUES (15, 'Punjab', 31, 'Chandigarh', 224, 28, 12, 'Punjabi', 61130704, 191791, 332926, 'lotus', 'elephant', 87, 'PB');
INSERT INTO state_info VALUES (16, 'Rajasthan', 31, 'Jaipur', 224, 28, 12, 'Hindi', 61130704, 191791, 332926, 'lotus', 'elephant', 87, 'RA');
INSERT INTO state_info VALUES (17, 'Sikkim', 31, 'Gangtok', 224, 28, 12, 'Nepali', 61130704, 191791, 332926, 'lotus', 'elephant', 87, 'SI');
INSERT INTO state_info VALUES (18, 'Tamil Nadu', 31, 'Chennai', 224, 28, 12, 'Tamil', 61130704, 191791, 332926, 'lotus', 'elephant', 87, 'TN');
INSERT INTO state_info VALUES (19, 'Telangana', 31, 'Hyderabad', 224, 28, 12, 'Telugu', 61130704, 191791, 332926, 'lotus', 'elephant', 87, 'TL');
INSERT INTO state_info VALUES (20, 'Uttar Pradesh', 31, 'Lucknow', 224, 28, 12, 'Hindi', 61130704, 191791, 332926, 'lotus', 'elephant', 87, 'UP');

UPDATE state_info SET s_population = 23450987 WHERE id = 18;
UPDATE state_info SET s_population = 98769876 WHERE id = 20;
UPDATE state_info SET s_area_squarekm = 23450987 WHERE id = 16;
UPDATE state_info SET s_per_capita = 56784 WHERE id = 17;
UPDATE state_info SET s_literacyrate_percentage = 67 WHERE id = 19;
UPDATE state_info SET s_literacyrate_percentage = 87 WHERE id = 16;
UPDATE state_info SET no_of_rajyasabha_member = 22 WHERE id = 18;
UPDATE state_info SET no_of_lokasabha_seats = 6 WHERE id = 17;
UPDATE state_info SET no_of_assembly_seats = 567 WHERE id = 15;
UPDATE state_info SET s_population = 345345 WHERE id = 17;

SELECT * FROM state_info;

DELETE FROM state_info WHERE id = 12;
DELETE FROM state_info WHERE id = 10;
DELETE FROM state_info WHERE s_vehicle_registration = 'JH';

ROLLBACK;

SELECT * FROM state_info WHERE id IN (5, 6, 9, 7, 10);
SELECT * FROM state_info WHERE id NOT IN (7, 10);
SELECT * FROM state_info WHERE id = 8 AND id = 1;
SELECT * FROM state_info WHERE id = 8 OR id = 1;


select * from state_info;
