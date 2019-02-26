--Authorized Group Table 



--DROP TABLE IF EXISTS authorized_groups CASCADE;
--DROP TABLE IF EXISTS authorized_foods CASCADE;
CREATE SCHEMA IF NOT EXISTS nutrient;
DROP TABLE IF EXISTS nutrient.fe CASCADE;

--Iron Table
CREATE TABLE nutrient.fe ( 
        ndb_no          TEXT,
        nutr_no         TEXT,
        nutr_val        TEXT,
        num_data_pts    TEXT,
        std_error       TEXT,
        src_cd          TEXT,
        deriv_cd        TEXT,
        ref_ndb_no      TEXT,
        add_nutr_mark   TEXT,
        num_studies     TEXT,
        mini            TEXT,
        maxa            TEXT,
        df              TEXT,
        low_eb          TEXT,
        up_eb           TEXT,
        stat_cmt        TEXT,
        addmod_date     TEXT
);


INSERT INTO nutrient.fe 
SELECT * FROM import.nutrient_data 
WHERE nutr_no = '303';


ALTER TABLE nutrient.fe
ADD db_id SERIAL PRIMARY KEY;















































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
