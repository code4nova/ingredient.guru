CREATE SCHEMA IF NOT EXISTS import;

DROP TABLE IF EXISTS import.nutrient_data;
DROP TABLE IF EXISTS import.food_groups;
DROP TABLE IF EXISTS import.food_description;
DROP TABLE IF EXISTS import.nutrient_definition;

--DROP   TABLE IF EXISTS import.food_groups;
--DROP   TABLE IF EXISTS import.food_desc;
--DROP   TABLE IF EXISTS import.food_nutr;

CREATE TABLE import.food_groups (
	fdgrp_cd	TEXT,
	fdgrp_desc	TEXT
);

CREATE TABLE import.food_description (
	ndb_no		INT,
	fdgrp_cd	INT,
	long_desc	TEXT, 
        shrt_desc	TEXT,
	comname		TEXT,
	manufacname	TEXT,
	survey		TEXT,
	ref_desc	TEXT,
	refuse		TEXT,
	sciname		TEXT,
	n_factor	FLOAT,
	pro_factor	FLOAT,
	fat_factor	FLOAT,
	cho_factor	FLOAT
);


CREATE TABLE import.nutrient_definition (
	nutr_no		INT,
	units		TEXT,
	tagname		TEXT,
	nutrdesc	TEXT,
	num_desc	TEXT,
	sr_order	INT
);

CREATE TABLE import.nutrient_data (
        ndb_no          INT,
        nutr_no         INT,
        nutr_val        FLOAT,
        num_data_pts    INT,
        std_error       TEXT,
        src_cd          TEXT,
        deriv_cd        TEXT,
        ref_ndb_no      TEXT,
        add_nutr_mark   TEXT,
        num_studies     TEXT,
        minn            TEXT,
        maxx            TEXT,
        df              TEXT,
        low_eb          TEXT,
        up_eb           TEXT,
        stat_cmt        TEXT,
        addmod_date     TEXT
);

COPY import.food_groups		
FROM '$PWD/raw_data/FD_GROUP.txt'		
WITH DELIMITER '^' QUOTE '~' HEADER CSV ENCODING 'LATIN1';		

COPY import.food_description
FROM '$PWD/raw_data/new_desc.csv'	
WITH DELIMITER ',' HEADER CSV ENCODING 'LATIN1';

COPY import.nutrient_definition
FROM '$PWD/raw_data/NUTR_DEF.txt'
WITH DELIMITER '^' QUOTE '~' HEADER CSV ENCODING 'LATIN1';

COPY import.nutrient_data
FROM '$PWD/raw_data/NUT_DATA.txt'
WITH DELIMITER '^' QUOTE '~' HEADER CSV ENCODING 'LATIN1';

/*
SELECT
        fooddesc.shrt_desc,
        nutrdef.nutrdesc,
        nutrdata.nutr_val,
        nutrdef.units
FROM
        import.nutrient_data AS nutrdata

JOIN    import.nutrient_definition AS nutrdef
ON      nutrdef.nutr_no = nutrdata.nutr_no

JOIN    import.food_description AS fooddesc
ON      fooddesc.ndb_no = nutrdata.ndb_no

WHERE   fooddesc.ndb_no = '01004'
ORDER BY nutrdef.sr_order ASC
*/


