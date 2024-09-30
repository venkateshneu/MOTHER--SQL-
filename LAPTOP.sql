SELECT * FROM laptop.laptop;
USE laptop;
SELECT COUNT(*) FROM laptopdata;

CREATE TABLE laptopbackup LIKE laptopdata; 

SELECT  DATA_LENGTH/1024 FROM INFORMAtION_SCHEMA.TABLES
WHERE TABLE_SCHEMA ='laptop' AND TABLE_NAME ='laptopdata';
ALTER TABLE laptopdata 
DROP COLUMN `Unnamed: 0`;
SELECT DISTINCT TYPENAME FROM laptop;
ALTER TABLE laptop 
MODIFY COLUMN Inches DECIMAL(10,1);
SELECT REPLACE(RAM,'GB','') FROM laptop;
ALTER TABLE laptop DROP `Unnamed: 0`;

SELECT REPLACE(RAM,'GB','')  AS NEW_RAM FROM laptoP;
ALTER TABLE LAPTOP ADD COLUMN `index` INT AUTO_INCREMENT UNIQUE FIRST ;
WITH CTE AS (SELECT l1.index, REPLACE(L1.RAM,'GB','') AS new_ram from laptop AS l1)
UPDATE laptop  l1
SET l1.RAM =(SELECT CTE.new_ram FROM CTE WHERE L1.index=CTE.index);
ALTER TABLE LAPTOP MODIFY COLUMN Ram INTEGER ;
SELECT * FROM laptop;
WITH CTE AS (SELECT l1.index, REPLACE(L1.Weight,'kg','') AS new_weight from laptop AS l1)
UPDATE laptop  l1
SET l1.Weight =(SELECT CTE.new_weight FROM CTE WHERE L1.index=CTE.index);
SELECT * FROM laptop;
CREATE TABLE IF NOT EXISTS venky(
ID INTEGER PRIMARY KEY auto_increment,
name VARCHAR(255) NOT NULL,
domain VARCHAR(255) NOT NULL);
INSERT INTO venky(name,domain)
VALUES ('venky','mech'), ('nitish','mech'),('ravi','mech'),('venky','mech');
SELECT * FROM venky;

WITH CTE AS (SELECT MIN(ID) AS min_id FROM venky GROUP BY name, domain)
DELETE FROM venky 
WHERE ID NOT IN (SELECT min_id FROM CTE);
SET SQL_SAFE_UPDATES = 0;
UPDATE laptop
SET Price =ROUND(Price);
ALTER TABLE laptop 
MODIFY Price INTEGER;

SELECT DISTINCT(OpSys) FROM laptop;
SELECT OpSys,
CASE 
	WHEN OpSys LIKE '%mac%' THEN 'macos'
    WHEN OpSys LIKE 'windows%' THEN 'windows'
	WHEN OpSys LIKE '%linux%'THEN 'linux'
    WHEN OpSys = 'No OS' THEN 'NA'
    ELSE 'other'
END AS os_brand
FROM laptop;
UPDATE laptop
SET OpSys =CASE 
	WHEN OpSys LIKE '%mac%' THEN 'macos'
    WHEN OpSys LIKE 'windows%' THEN 'windows'
	WHEN OpSys LIKE '%linux%'THEN 'linux'
    WHEN OpSys = 'No OS' THEN 'NA'
    ELSE 'other'
END ;
SELECT * FROM laptop;
AlTER TABLE laptop
ADD COLUMN gpu_brand VARCHAR(255) AFTER  Gpu,ADD COLUMN gpu_name VARCHAR(255) AFTER gpu_brand;
SELECT SUBSTRING_INDEX(Gpu,' ',1) FROM laptop;
With CTE AS (SELECT `index`, SUBSTRING_INDEX(Gpu,' ',1) AS gpu_brandn FROM laptop)
UPDATE laptop 
SET gpu_brand=(SELECT gpu_brandn FROM CTE WHERE laptop.index=CTE.index);
With CTE AS (SELECT `index`, REPLACE(Gpu,gpu_brand,'') AS gpu_namen FROM laptop)
UPDATE laptop 
SET gpu_name=(SELECT gpu_namen FROM CTE WHERE laptop.index=CTE.index);
SELECT * FROM laptop;



















































