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
SELECT * FROM campusx.smartphones ORDER BY brand_name, price ASC;
SELECT brand_name , COUNT(brand_name),ROUND(AVG(price),2),MAX(rating) FROM campusx.smartphones GROUP BY brand_name ORDER BY COUNT(brand_name) DESC;
SELECT brand_name,processor_brand, 	COUNT(model)  FROM campusx.smartphones GROUP BY brand_name, processor_brand;
SELECT brand_name, ROUND(AVG(price),2) AS avg_price FROM campusx.smartphones GROUP BY brand_name ORDER BY avg_price DESC LIMIT 5;
SELECT brand_name, MIN(screen_size) FROM campusx.smartphones GROUP BY brand_name ORDER BY MIN(screen_size) ASC LIMIT 1;
SELECT has_5g, AVG(price) as avg_price FROM campusx.smartphones GROUP BY has_5g;
SELECT has_nfc , AVG(PRICE) as avg_price FROM campusx.smartphones WHERE brand_name ='samsung' AND has_5g = 'TRUE' GROUP BY has_nfc;
SELECT brand_name, COUNT(*), AVG(price) as avg_price FROM campusx.smartphones GROUP BY  brand_name HAVING COUNT(*)>20 ORDER by avg_price DESC;
SELECT brand_name,AVG(ram_capacity) as avg_ram FROM campusx.smartphones WHERE refresh_rate > 90
 AND fast_charging_available =1 GROUP BY brand_name HAVING COUNT(*)>10 ORDER BY avg_ram DESC LIMIT 3;
 SELECT brand_name, AVG(price) as avg_price, AVG(rating) as avg_rating FROM campusx.smartphones WHERE has_5g ='TRUE' GROUP BY brand_name HAVING COUNT(*) >10 AND avg_rating>70
















