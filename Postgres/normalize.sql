DELETE FROM ingredient
WHERE group_id in (0300,2100,2200,2500,3600);

--Delete Brand Names
DELETE FROM ingredient
        WHERE long_description ~ '[A-Z]{2,}'
        AND NOT long_description ~ 'USDA';





















































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



CREATE TABLE ingredient (
    id SMALLINT NULL,
    group_id SMALLINT  NULL,
    long_description VARCHAR (200) NOT NULL,
    short_description VARCHAR (60) NOT NULL,
    common_name VARCHAR (100),
    manufacturer_name VARCHAR (65),
    is_in_fndds_survey VARCHAR (1),
    inedible_parts VARCHAR (135),
    percent_being_refuse SMALLINT,
    scientific_name VARCHAR (65),
    nitrogen_to_protein_factor NUMERIC (4,2),
    calories_from_protein_factor NUMERIC (4,2),
    calories_from_fat_factor NUMERIC (4,2),
    calories_from_carb_factor NUMERIC (4,2)
);

CREATE TABLE nutrient (
    nutrient_id SMALLINT NOT NULL,
    units_of_measurement VARCHAR (7) NOT NULL,
    tag_name VARCHAR (20),
    name VARCHAR (60) NOT NULL,
    decimal_places_rounded VARCHAR (1) NOT NULL,
    sort_order SMALLINT NOT NULL
);

CREATE TABLE ingredient_nutrients (
    ingredient_id SMALLINT NOT NULL,
    nutrient_id SMALLINT NOT NULL,
    nutrient_value NUMERIC (10,2),
    number_of_analyses SMALLINT NOT NULL,
    standard_error NUMERIC (8,3),
    type_of_data VARCHAR(2) NOT NULL,
    derivation VARCHAR(4),
    alternative_ingredient_id VARCHAR(5),
    has_been_fortified VARCHAR(1),
    number_of_studies SMALLINT,
    minimum_value NUMERIC(10,3),
    maximum_value NUMERIC(10,3),
    degrees_of_freedom SMALLINT,
    lower_error_bound NUMERIC(10,3),
    upper_error_bound NUMERIC(10,3),
    statistical_comment VARCHAR(10),
    last_update DATE
);*/
