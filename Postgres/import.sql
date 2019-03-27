DROP TABLE IF EXISTS ingredient;
DROP TABLE IF EXISTS groups;
DROP TABLE IF EXISTS nutrient;
DROP TABLE IF EXISTS ingredient_nutrient;
CREATE EXTENSION pg_trgm;
--DROP   TABLE IF EXISTS import.food_groups;
--DROP   TABLE IF EXISTS import.food_desc;
--DROP   TABLE IF EXISTS import.food_nutr;

CREATE TABLE groups (
	fdgrp_cd	TEXT,
	fdgrp_desc	TEXT
);
CREATE TABLE ingredient (
    id                                INT NULL,
    group_id                          SMALLINT NULL,
    long_description                  VARCHAR (200) NOT NULL,
    short_description                 VARCHAR (85) NOT NULL,
    common_name                       VARCHAR (100),
    manufacturer_name                 VARCHAR (65),
    is_in_fndds_survey                VARCHAR (3),
    inedible_parts                    VARCHAR (135),
    percent_being_refuse              SMALLINT,
    scientific_name                   VARCHAR (65),
    nitrogen_to_protein_factor        NUMERIC (4,2),
    calories_from_protein_factor      NUMERIC (4,2),
    calories_from_fat_factor          NUMERIC (4,2),
    calories_from_carb_factor         NUMERIC (4,2)
);

CREATE TABLE nutrient (
    nutrient_id                      SMALLINT NOT NULL,
    units_of_measurement             VARCHAR (7) NOT NULL,
    tag_name                         VARCHAR (20),
    name                             VARCHAR (60) NOT NULL,
    decimal_places_rounded           VARCHAR (1) NOT NULL,
    sort_order                       SMALLINT NOT NULL
);

CREATE TABLE ingredient_nutrient (
    ingredient_id                    INT NOT NULL,
    nutrient_id                      SMALLINT NOT NULL,
    nutrient_value                   NUMERIC (10,2),
    number_of_analyses               SMALLINT NOT NULL,
    standard_error                   NUMERIC (8,3),
    type_of_data                     VARCHAR(2) NOT NULL,
    derivation                       VARCHAR(4),
    alternative_ingredient_id        VARCHAR(5),
    has_been_fortified               VARCHAR(1),
    number_of_studies                SMALLINT,
    minimum_value                    NUMERIC(10,3),
    maximum_value                    NUMERIC(10,3),
    degrees_of_freedom               SMALLINT,
    lower_error_bound                NUMERIC(10,3),
    upper_error_bound                NUMERIC(10,3),
    statistical_comment              VARCHAR(10),
    last_update                      DATE
);

COPY groups		
FROM '$PWD/raw_data/FD_GROUP.txt'		
WITH DELIMITER '^' QUOTE '~' HEADER CSV ENCODING 'LATIN1';		

COPY ingredient
FROM '$PWD/raw_data/new_desc.csv'	
WITH DELIMITER ',' HEADER CSV ENCODING 'LATIN1';

COPY nutrient
FROM '$PWD/raw_data/NUTR_DEF.txt'
WITH DELIMITER '^' QUOTE '~' HEADER CSV ENCODING 'LATIN1';

COPY ingredient_nutrient
FROM '$PWD/raw_data/NUT_DATA.txt'
WITH DELIMITER '^' QUOTE '~' HEADER CSV ENCODING 'LATIN1';

CREATE INDEX first_index ON ingredient_nutrient(ingredient_id);
CREATE INDEX second_index ON ingredient USING gin (long_description gin_trgm_ops);
