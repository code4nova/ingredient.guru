CREATE SCHEMA IF NOT EXISTS import;

DROP   TABLE IF EXISTS import.food_groups;
DROP   TABLE IF EXISTS import.food_desc;
DROP   TABLE IF EXISTS import.food_nutr;

CREATE TABLE import.food_groups (
	fdgrp_cd	TEXT,
	fdgrp_desc	TEXT
);

CREATE TABLE import.food_desc (
	nbd_no		TEXT,
	fdgrp_cd	TEXT,
	long_desc	TEXT,
	shrt_desc	TEXT,
	comname		TEXT,
	manufacname	TEXT,
	survey		TEXT,
	ref_desc	TEXT,
	refuse		TEXT,
	sciname		TEXT,
	n_factor	TEXT,
	pro_factor	TEXT,
	fat_factor	TEXT,
	cho_factor	TEXT
);

CREATE TABLE import.food_nutr (
	nutr_no		TEXT,
	units		TEXT,
	tagname		TEXT,
	nutrdesc	TEXT,
	num_dec		TEXT,
	sr_order	TEXT
);

COPY import.food_groups		
FROM '$PWD/raw_data/food_groups.csv'		
WITH DELIMITER ',' HEADER CSV ENCODING 'LATIN1';		
		
COPY import.food_desc		
FROM '$PWD/raw_data/food_description.csv'	
WITH DELIMITER '^' QUOTE '~' HEADER CSV ENCODING 'LATIN1';

COPY import.food_nutr
FROM '$PWD/raw_data/food_nutrition.csv'
WITH DELIMITER '^' QUOTE '~' HEADER CSV ENCODING 'LATIN1';
--Authorized Group Table 
DROP TABLE IF EXISTS authorized_groups CASCADE;

CREATE TABLE authorized_groups(groupid INT,groupdesc TEXT);

INSERT INTO authorized_groups(groupid,groupdesc)
SELECT DISTINCT fdgrp_cd::int, fdgrp_desc
FROM import.food_groups
WHERE fdgrp_cd::int  != 0300 
and   fdgrp_cd::int  != 2200
and   fdgrp_cd::int  != 2100
and   fdgrp_cd::int  != 2500
and   fdgrp_cd::int  != 3600
ORDER BY fdgrp_cd::int;

ALTER TABLE authorized_groups 
ADD id serial primary key;


--Authorized Food Name/Desc
DROP TABLE IF EXISTS authorized_foods CASCADE;

CREATE TABLE authorized_foods(
        foodid          SERIAL PRIMARY KEY, 
        groupid         INT,
        long_desc       TEXT,
        shrt_desc       TEXT
);


INSERT INTO authorized_foods(groupid, long_desc, shrt_desc)
SELECT DISTINCT fdgrp_cd::int, long_desc, shrt_desc
FROM import.food_desc;
DELETE FROM authorized_foods
WHERE groupid in (0300,2100,2200,2500,3600);

--Delete Brand Names
DELETE FROM authorized_foods
        WHERE long_desc ~ '[A-Z]{2,}'
        AND NOT long_desc ~ 'USDA';

