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























































--Authorized Group Table 




/*
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
        shrt_desc       TEXT,
        commonname      TEXT,
        manufacname     TEXT,
        survey          TEXT,
        ref_desc        TEXT,
        refuse          TEXT,
        sciname         TEXT,
        n_factor        TEXT,
        pro_factor      TEXT,
        fat_factor      TEXT,
        cho_factor      TEXT
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
 

SELECT * FROM authorized_groups
JOIN authorized_foods
ON authorized_groups.groupdesc = authorized_foods.long_desc;
        three=two.replace(b"~",b"'")



*/
