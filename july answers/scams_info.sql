use states;
CREATE TABLE scams_info (
    id INT,
    scam_name VARCHAR(50),
    year INT,
    country VARCHAR(50),
    amount_lost BIGINT,
    perpetrator VARCHAR(50),
    no_of_victims INT,
    scam_type VARCHAR(50),
    method_used VARCHAR(100),
    duration_years INT
);

ALTER TABLE scams_info
ADD COLUMN punishment VARCHAR(50),
ADD COLUMN discovery_year INT,
ADD COLUMN scam_category VARCHAR(50),
ADD COLUMN legal_actions VARCHAR(50),
ADD COLUMN affected_areas VARCHAR(100);

ALTER TABLE scams_info
RENAME COLUMN scam_name TO scam_title,
RENAME COLUMN amount_lost TO total_loss,
RENAME COLUMN perpetrator TO main_accused,
RENAME COLUMN no_of_victims TO victims_count,
RENAME COLUMN method_used TO scam_method;

ALTER TABLE scams_info
MODIFY COLUMN year YEAR,
MODIFY COLUMN total_loss DECIMAL(15, 2),
MODIFY COLUMN victims_count BIGINT,
MODIFY COLUMN duration_years FLOAT,
MODIFY COLUMN discovery_year YEAR;

INSERT INTO scams_info VALUES 
(1, 'Ponzi Scheme', 1920, 'USA', 2000000.00, 'Charles Ponzi', 50000, 'Financial Fraud', 'Promise of High Returns', 1, 'Prison', 1920, 'Pyramid', 'Arrested', 'Nationwide'),
(2, 'Enron Scandal', 2001, 'USA', 78000000000.00, 'Jeffrey Skilling', 20000, 'Corporate Fraud', 'Accounting Fraud', 16, 'Prison', 2001, 'Corporate', 'Bankruptcy', 'Global'),
(3, 'Madoff Investment', 2008, 'USA', 65000000000.00, 'Bernie Madoff', 37000, 'Ponzi Scheme', 'High Return Promise', 48, 'Prison', 2008, 'Investment', 'Arrested', 'Global'),
(4, 'Wirecard Scandal', 2020, 'Germany', 2100000000.00, 'Markus Braun', 5000, 'Corporate Fraud', 'Falsified Accounts', 2, 'Arrest', 2020, 'Corporate', 'Investigated', 'Global'),
(5, 'Satyam Scandal', 2009, 'India', 1400000000.00, 'Ramalinga Raju', 53000, 'Accounting Fraud', 'Falsified Revenue', 7, 'Prison', 2009, 'Corporate', 'Arrested', 'Global'),
(6, 'Volkswagen Emission', 2015, 'Germany', 30000000000.00, 'Martin Winterkorn', 10000, 'Corporate Fraud', 'Emission Cheating', 7, 'Fines', 2015, 'Automobile', 'Fined', 'Global'),
(7, 'Libor Scandal', 2012, 'UK', 9000000000.00, 'Tom Hayes', 50000, 'Interest Rate Fraud', 'Rate Manipulation', 5, 'Prison', 2012, 'Banking', 'Arrested', 'Global'),
(8, 'Fyre Festival Fraud', 2017, 'USA', 26000000.00, 'Billy McFarland', 1500, 'Event Fraud', 'False Promises', 1, 'Prison', 2017, 'Entertainment', 'Arrested', 'International'),
(9, 'Carillion Collapse', 2018, 'UK', 5000000000.00, 'Philip Green', 20000, 'Corporate Fraud', 'Account Manipulation', 19, 'Investigated', 2018, 'Construction', 'Investigated', 'National'),
(10, 'WorldCom Scandal', 2002, 'USA', 11000000000.00, 'Bernard Ebbers', 17000, 'Accounting Fraud', 'Falsified Profits', 3, 'Prison', 2002, 'Telecom', 'Arrested', 'Global'),
(11, 'Tyco International', 2002, 'USA', 600000000.00, 'Dennis Kozlowski', 300, 'Corporate Fraud', 'Unauthorized Bonuses', 4, 'Prison', 2002, 'Corporate', 'Arrested', 'Global'),
(12, 'Theranos Fraud', 2015, 'USA', 900000000.00, 'Elizabeth Holmes', 1000, 'Corporate Fraud', 'False Claims', 12, 'Prison', 2015, 'Healthcare', 'Arrested', 'Global'),
(13, 'PNB Scam', 2018, 'India', 2000000000.00, 'Nirav Modi', 19000, 'Banking Fraud', 'Loan Default', 7, 'Investigated', 2018, 'Banking', 'Investigated', 'National'),
(14, 'Lehman Brothers', 2008, 'USA', 600000000000.00, 'Richard Fuld', 25000, 'Corporate Fraud', 'Risky Investments', 158, 'Bankruptcy', 2008, 'Banking', 'Bankruptcy', 'Global'),
(15, 'Adelphia Communications', 2002, 'USA', 2300000000.00, 'John Rigas', 2500, 'Corporate Fraud', 'Off-Balance Sheet Debt', 6, 'Prison', 2002, 'Telecom', 'Arrested', 'Global'),
(16, 'MF Global Scandal', 2011, 'USA', 1700000000.00, 'Jon Corzine', 2500, 'Corporate Fraud', 'Missing Funds', 1, 'Investigated', 2011, 'Finance', 'Investigated', 'Global'),
(17, '1MDB Scandal', 2015, 'Malaysia', 4500000000.00, 'Najib Razak', 10000, 'Political Fraud', 'Misappropriation', 9, 'Prison', 2015, 'Political', 'Arrested', 'Global'),
(18, 'Luckin Coffee', 2020, 'China', 310000000.00, 'Charles Lu', 1000, 'Accounting Fraud', 'Falsified Sales', 1, 'Fined', 2020, 'Corporate', 'Investigated', 'International'),
(19, 'Wirecard Fraud', 2018, 'Germany', 2200000000.00, 'Markus Braun', 3000, 'Corporate Fraud', 'Falsified Accounts', 2, 'Prison', 2018, 'Finance', 'Arrested', 'Global'),
(20, 'FIFA Corruption', 2015, 'Global', 150000000.00, 'Sepp Blatter', 50, 'Bribery', 'Kickbacks', 21, 'Investigated', 2015, 'Sports', 'Arrested', 'International');

UPDATE scams_info SET total_loss = 2300000.00 WHERE id = 1;
UPDATE scams_info SET total_loss = 80000000000.00 WHERE id = 2;
UPDATE scams_info SET total_loss = 66000000000.00 WHERE id = 3;
UPDATE scams_info SET total_loss = 2200000000.00 WHERE id = 4;
UPDATE scams_info SET total_loss = 1500000000.00 WHERE id = 5;
UPDATE scams_info SET total_loss = 31000000000.00 WHERE id = 6;
UPDATE scams_info SET total_loss = 10000000000.00 WHERE id = 7;
UPDATE scams_info SET total_loss = 27000000.00 WHERE id = 8;
UPDATE scams_info SET total_loss = 5100000000.00 WHERE id = 9;
UPDATE scams_info SET total_loss = 12000000000.00 WHERE id = 10;

DELETE FROM scams_info WHERE id = 12;
DELETE FROM scams_info WHERE id = 10;
DELETE FROM scams_info WHERE main_accused = 'Markus Braun';

SELECT * FROM scams_info WHERE country = 'USA' AND total_loss > 50000000000.00;

SELECT * FROM scams_info WHERE country = 'India' OR total_loss < 1000000000.00;

SELECT * FROM scams_info WHERE country IN ('USA', 'Germany', 'India');


select * from scams_info;
