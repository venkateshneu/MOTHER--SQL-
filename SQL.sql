CREATE DATABASE IF NOT EXISTS campusx ;
use campusx;
CREATE TABLE users(
user_id INTEGER PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
email VARCHAR(255)NOT NULL UNIQUE,
password VARCHAR(255) NOT NULL 
) ;

INSERT INTO campusx.users(name,email,password)
VALUES ('amit','amitgmail.com',2345);
INSERT INTO campusx.users(password,name,email) VALUES 
(7890,'rupa','ahofha');
INSERT INTO campusx.users
VALUES(NULL, 'VENKY','guri',4567),
(NULL, 'tENKY','furi',4567),
(NULL, 'zENKY','juri',4567);

SELECT  model, price ,rating FROM campusx.smartphones;
SELECT model AS Phone_model,battery_capacity AS venky  FROM campusx.smartphones;
SELECT model, 'smartphone' AS type FROM campusx.smartphones;
SELECT DISTINCT brand_name,processor_brand FROM smartphones
SELECT * FROM campusx.smartphones WHERE price >10000 AND price <20000;
SELECT * FROM campusx.smartphones WHERE price BETWEEN 1000 AND 5000;
SELECT * FROM campusx.smartphones WHERE brand_name ='samsung' AND ram_capacity>8;
SELECT * FROM campusx.smartphones WHERE brand_name ='samsung' AND processor_brand ='snapdragon';
UPDATE campusx.smartphones 
SET processor_brand ='dimensity'
WHERE processor_brand ='mediatek';








