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
        WHERE long_desc ~ '[A-Z]+[A-Z]'
        AND long_desc ~ 'USDA';
