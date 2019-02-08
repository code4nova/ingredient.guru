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
