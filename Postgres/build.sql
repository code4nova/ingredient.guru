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
        ndb_no          SMALLINT NULL,
        fdgrp_cd        SMALLINT  NULL,
        long_desc       VARCHAR (200) NOT NULL,
        shrt_desc       VARCHAR (60) NOT NULL,
        comname         VARCHAR (100),
        manufacname     VARCHAR (65),
        survey          VARCHAR (1),
        ref_desc        VARCHAR (135),
        refuse          SMALLINT,
        sciname         VARCHAR (65),
        n_factor        NUMERIC (4,2),
        pro_factor      NUMERIC (4,2),
        fat_factor      NUMERIC (4,2),
        cho_factor      NUMERIC (4,2)
);

CREATE TABLE import.nutrient_definition (
        nutr_no         SMALLINT NOT NULL,
        units           VARCHAR (7) NOT NULL,
        tagname         VARCHAR (20),
        nutrdesc        VARCHAR (60) NOT NULL,
        num_desc        VARCHAR (1) NOT NULL,
        sr_order        SMALLINT NOT NULL
);

CREATE TABLE import.nutrient_data (
        ndb_no          SMALLINT NOT NULL,
        nutr_no         SMALLINT NOT NULL,
        nutr_val        NUMERIC (10,2),
        num_data_pts    SMALLINT NOT NULL,
        std_error       NUMERIC (8,3),
        src_cd          VARCHAR(2) NOT NULL,
        deriv_cd        VARCHAR(4),
        ref_ndb_no      VARCHAR(5),
        add_nutr_mark   VARCHAR(1),
        num_studies     SMALLINT,
        minn            NUMERIC(10,3),
        maxx            NUMERIC(10,3),
        df              SMALLINT,
        low_eb          NUMERIC(10,3),
        up_eb           NUMERIC(10,3),
        stat_cmt        VARCHAR(10),
        addmod_date     VARCHAR(10)
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

ALTER TABLE import.food_description
ADD db_id SERIAL PRIMARY KEY;
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


 CREATE SCHEMA IF NOT EXISTS nutrient;

 DROP TABLE IF EXISTS nutrient.FAT;
 DROP TABLE IF EXISTS nutrient.CHOCDF;
 DROP TABLE IF EXISTS nutrient.ASH;
 DROP TABLE IF EXISTS nutrient.ENERC_KCAL;
 DROP TABLE IF EXISTS nutrient.STARCH;
 DROP TABLE IF EXISTS nutrient.SUCS;
 DROP TABLE IF EXISTS nutrient.GLUS;
 DROP TABLE IF EXISTS nutrient.FRUS;
 DROP TABLE IF EXISTS nutrient.LACS;
 DROP TABLE IF EXISTS nutrient.MALS;
 DROP TABLE IF EXISTS nutrient.ALC;
 DROP TABLE IF EXISTS nutrient.WATER;
 DROP TABLE IF EXISTS nutrient.CAFFN;
 DROP TABLE IF EXISTS nutrient.THEBRN;
 DROP TABLE IF EXISTS nutrient.ENERC_KJ;
 DROP TABLE IF EXISTS nutrient.SUGAR;
 DROP TABLE IF EXISTS nutrient.GALS;
 DROP TABLE IF EXISTS nutrient.FIBTG;
 DROP TABLE IF EXISTS nutrient.CA;
 DROP TABLE IF EXISTS nutrient.FE;
 DROP TABLE IF EXISTS nutrient.MG;
 DROP TABLE IF EXISTS nutrient.P;
 DROP TABLE IF EXISTS nutrient.K;
 DROP TABLE IF EXISTS nutrient.NA;
 DROP TABLE IF EXISTS nutrient.ZN;
 DROP TABLE IF EXISTS nutrient.CU;
 DROP TABLE IF EXISTS nutrient.FLD;
 DROP TABLE IF EXISTS nutrient.MN;
 DROP TABLE IF EXISTS nutrient.SE;
 DROP TABLE IF EXISTS nutrient.VITA_IU;
 DROP TABLE IF EXISTS nutrient.RETOL;
 DROP TABLE IF EXISTS nutrient.VITA_RAE;
 DROP TABLE IF EXISTS nutrient.CARTB;
 DROP TABLE IF EXISTS nutrient.CARTA;
 DROP TABLE IF EXISTS nutrient.TOCPHA;
 DROP TABLE IF EXISTS nutrient.VITD;
 DROP TABLE IF EXISTS nutrient.ERGCAL;
 DROP TABLE IF EXISTS nutrient.CHOCAL;
 DROP TABLE IF EXISTS nutrient.VITD;
 DROP TABLE IF EXISTS nutrient.CRYPX;
 DROP TABLE IF EXISTS nutrient.LYCPN;
 DROP TABLE IF EXISTS nutrient.LUTZEA;
 DROP TABLE IF EXISTS nutrient.TOCPHB;
 DROP TABLE IF EXISTS nutrient.TOCPHG;
 DROP TABLE IF EXISTS nutrient.TOCPHD;
 DROP TABLE IF EXISTS nutrient.TOCTRA;
 DROP TABLE IF EXISTS nutrient.TOCTRB;
 DROP TABLE IF EXISTS nutrient.TOCTRG;
 DROP TABLE IF EXISTS nutrient.TOCTRD;
 DROP TABLE IF EXISTS nutrient.VITC;
 DROP TABLE IF EXISTS nutrient.THIA;
 DROP TABLE IF EXISTS nutrient.RIBF;
 DROP TABLE IF EXISTS nutrient.NIA;
 DROP TABLE IF EXISTS nutrient.PANTAC;
 DROP TABLE IF EXISTS nutrient.VITB6A;
 DROP TABLE IF EXISTS nutrient.FOL;
 DROP TABLE IF EXISTS nutrient.VITB12;
 DROP TABLE IF EXISTS nutrient.CHOLN;
 DROP TABLE IF EXISTS nutrient.MK4;
 DROP TABLE IF EXISTS nutrient.VITK1D;
 DROP TABLE IF EXISTS nutrient.VITK1;
 DROP TABLE IF EXISTS nutrient.FOLAC;
 DROP TABLE IF EXISTS nutrient.FOLFD;
 DROP TABLE IF EXISTS nutrient.FOLDFE;
 DROP TABLE IF EXISTS nutrient.BETN;
 DROP TABLE IF EXISTS nutrient.TRP_G;
 DROP TABLE IF EXISTS nutrient.THR_G;
 DROP TABLE IF EXISTS nutrient.ILE_G;
 DROP TABLE IF EXISTS nutrient.LEU_G;
 DROP TABLE IF EXISTS nutrient.LYS_G;
 DROP TABLE IF EXISTS nutrient.MET_G;
 DROP TABLE IF EXISTS nutrient.CYS_G;
 DROP TABLE IF EXISTS nutrient.PHE_G;
 DROP TABLE IF EXISTS nutrient.TYR_G;
 DROP TABLE IF EXISTS nutrient.VAL_G;
 DROP TABLE IF EXISTS nutrient.ARG_G;
 DROP TABLE IF EXISTS nutrient.HISTN_G;
 DROP TABLE IF EXISTS nutrient.ALA_G;
 DROP TABLE IF EXISTS nutrient.ASP_G;
 DROP TABLE IF EXISTS nutrient.GLU_G;
 DROP TABLE IF EXISTS nutrient.GLY_G;
 DROP TABLE IF EXISTS nutrient.PRO_G;
 DROP TABLE IF EXISTS nutrient.SER_G;
 DROP TABLE IF EXISTS nutrient.HYP;
 
 
 DROP TABLE IF EXISTS nutrient.CHOLE;
 DROP TABLE IF EXISTS nutrient.FATRN;
 DROP TABLE IF EXISTS nutrient.FASAT;
 DROP TABLE IF EXISTS nutrient.F4D0;
 DROP TABLE IF EXISTS nutrient.F6D0;
 DROP TABLE IF EXISTS nutrient.F8D0;
 DROP TABLE IF EXISTS nutrient.F10D0;
 DROP TABLE IF EXISTS nutrient.F12D0;
 DROP TABLE IF EXISTS nutrient.F14D0;
 DROP TABLE IF EXISTS nutrient.F16D0;
 DROP TABLE IF EXISTS nutrient.F18D0;
 DROP TABLE IF EXISTS nutrient.F20D0;
 DROP TABLE IF EXISTS nutrient.F18D1;
 DROP TABLE IF EXISTS nutrient.F18D2;
 DROP TABLE IF EXISTS nutrient.F18D3;
 DROP TABLE IF EXISTS nutrient.F20D4;
 DROP TABLE IF EXISTS nutrient.F22D6;
 DROP TABLE IF EXISTS nutrient.F22D0;
 DROP TABLE IF EXISTS nutrient.F14D1;
 DROP TABLE IF EXISTS nutrient.F16D1;
 DROP TABLE IF EXISTS nutrient.F18D4;
 DROP TABLE IF EXISTS nutrient.F20D1;
 DROP TABLE IF EXISTS nutrient.F20D5;
 DROP TABLE IF EXISTS nutrient.F22D1;
 DROP TABLE IF EXISTS nutrient.F22D5;
 DROP TABLE IF EXISTS nutrient.PHYSTR;
 DROP TABLE IF EXISTS nutrient.STID7;
 DROP TABLE IF EXISTS nutrient.CAMD5;
 DROP TABLE IF EXISTS nutrient.SITSTR;
 DROP TABLE IF EXISTS nutrient.FAMS;
 DROP TABLE IF EXISTS nutrient.FAPU;
 DROP TABLE IF EXISTS nutrient.F15D0;
 DROP TABLE IF EXISTS nutrient.F17D0;
 DROP TABLE IF EXISTS nutrient.F24D0;
 DROP TABLE IF EXISTS nutrient.F16D1T;
 DROP TABLE IF EXISTS nutrient.F18D1T;
 DROP TABLE IF EXISTS nutrient.F22D1T;
 
 
 DROP TABLE IF EXISTS nutrient.F18D2TT;
 DROP TABLE IF EXISTS nutrient.F18D2CLA;
 DROP TABLE IF EXISTS nutrient.F24D1C;
 DROP TABLE IF EXISTS nutrient.F20D2CN6;
 DROP TABLE IF EXISTS nutrient.F16D1C;
 DROP TABLE IF EXISTS nutrient.F18D1C;
 DROP TABLE IF EXISTS nutrient.F18D2CN6;
 DROP TABLE IF EXISTS nutrient.F22D1C;
 DROP TABLE IF EXISTS nutrient.F18D3CN6;
 DROP TABLE IF EXISTS nutrient.F17D1;
 DROP TABLE IF EXISTS nutrient.F20D3;
 DROP TABLE IF EXISTS nutrient.FATRNM;
 DROP TABLE IF EXISTS nutrient.FATRNP;
 DROP TABLE IF EXISTS nutrient.F13D0;
 DROP TABLE IF EXISTS nutrient.F15D1;
 DROP TABLE IF EXISTS nutrient.F18D3CN3;
 DROP TABLE IF EXISTS nutrient.F20D3N3;
 DROP TABLE IF EXISTS nutrient.F20D3N6;
 DROP TABLE IF EXISTS nutrient.F20D4N6;
 
 DROP TABLE IF EXISTS nutrient.F21D5;
 DROP TABLE IF EXISTS nutrient.F22D4;
 DROP TABLE IF EXISTS nutrient.F18D1TN7;

 CREATE TABLE nutrient.FAT as select * from import.nutrient_data where nutr_no='204';
 CREATE TABLE nutrient.CHOCDF as select * from import.nutrient_data where nutr_no='205';
 CREATE TABLE nutrient.ASH as select * from import.nutrient_data where nutr_no='207';
 CREATE TABLE nutrient.ENERC_KCAL as select * from import.nutrient_data where nutr_no='208';
 CREATE TABLE nutrient.STARCH as select * from import.nutrient_data where nutr_no='209';
 CREATE TABLE nutrient.SUCS as select * from import.nutrient_data where nutr_no='210';
 CREATE TABLE nutrient.GLUS as select * from import.nutrient_data where nutr_no='211';
 CREATE TABLE nutrient.FRUS as select * from import.nutrient_data where nutr_no='212';
 CREATE TABLE nutrient.LACS as select * from import.nutrient_data where nutr_no='213';
 CREATE TABLE nutrient.MALS as select * from import.nutrient_data where nutr_no='214';
 CREATE TABLE nutrient.ALC as select * from import.nutrient_data where nutr_no='221';
 CREATE TABLE nutrient.WATER as select * from import.nutrient_data where nutr_no='255';
 CREATE TABLE nutrient.CAFFN as select * from import.nutrient_data where nutr_no='262';
 CREATE TABLE nutrient.THEBRN as select * from import.nutrient_data where nutr_no='263';
 CREATE TABLE nutrient.ENERC_KJ as select * from import.nutrient_data where nutr_no='268';
 CREATE TABLE nutrient.SUGAR as select * from import.nutrient_data where nutr_no='269';
 CREATE TABLE nutrient.GALS as select * from import.nutrient_data where nutr_no='287';
 CREATE TABLE nutrient.FIBTG as select * from import.nutrient_data where nutr_no='291';
 CREATE TABLE nutrient.CA as select * from import.nutrient_data where nutr_no='301';
 CREATE TABLE nutrient.FE as select * from import.nutrient_data where nutr_no='303';
 CREATE TABLE nutrient.MG as select * from import.nutrient_data where nutr_no='304';
 CREATE TABLE nutrient.P as select * from import.nutrient_data where nutr_no='305';
 CREATE TABLE nutrient.K as select * from import.nutrient_data where nutr_no='306';
 CREATE TABLE nutrient.NA as select * from import.nutrient_data where nutr_no='307';
 CREATE TABLE nutrient.ZN as select * from import.nutrient_data where nutr_no='309';
 CREATE TABLE nutrient.CU as select * from import.nutrient_data where nutr_no='312';
 CREATE TABLE nutrient.FLD as select * from import.nutrient_data where nutr_no='313';
 CREATE TABLE nutrient.MN as select * from import.nutrient_data where nutr_no='315';
 CREATE TABLE nutrient.SE as select * from import.nutrient_data where nutr_no='317';
 CREATE TABLE nutrient.VITA_IU as select * from import.nutrient_data where nutr_no='318';
 CREATE TABLE nutrient.RETOL as select * from import.nutrient_data where nutr_no='319';
 CREATE TABLE nutrient.VITA_RAE as select * from import.nutrient_data where nutr_no='320';
 CREATE TABLE nutrient.CARTB as select * from import.nutrient_data where nutr_no='321';
 CREATE TABLE nutrient.CARTA as select * from import.nutrient_data where nutr_no='322';
 CREATE TABLE nutrient.TOCPHA as select * from import.nutrient_data where nutr_no='323';
 CREATE TABLE nutrient.VITD as select * from import.nutrient_data where nutr_no='324';
 CREATE TABLE nutrient.ERGCAL as select * from import.nutrient_data where nutr_no='325';
 CREATE TABLE nutrient.CHOCAL as select * from import.nutrient_data where nutr_no='326';
 CREATE TABLE nutrient.VITD as select * from import.nutrient_data where nutr_no='328';
 CREATE TABLE nutrient.CRYPX as select * from import.nutrient_data where nutr_no='334';
 CREATE TABLE nutrient.LYCPN as select * from import.nutrient_data where nutr_no='337';
 CREATE TABLE nutrient.LUTZEA as select * from import.nutrient_data where nutr_no='338';
 CREATE TABLE nutrient.TOCPHB as select * from import.nutrient_data where nutr_no='341';
 CREATE TABLE nutrient.TOCPHG as select * from import.nutrient_data where nutr_no='342';
 CREATE TABLE nutrient.TOCPHD as select * from import.nutrient_data where nutr_no='343';
 CREATE TABLE nutrient.TOCTRA as select * from import.nutrient_data where nutr_no='344';
 CREATE TABLE nutrient.TOCTRB as select * from import.nutrient_data where nutr_no='345';
 CREATE TABLE nutrient.TOCTRG as select * from import.nutrient_data where nutr_no='346';
 CREATE TABLE nutrient.TOCTRD as select * from import.nutrient_data where nutr_no='347';
 CREATE TABLE nutrient.VITC as select * from import.nutrient_data where nutr_no='401';
 CREATE TABLE nutrient.THIA as select * from import.nutrient_data where nutr_no='404';
 CREATE TABLE nutrient.RIBF as select * from import.nutrient_data where nutr_no='405';
 CREATE TABLE nutrient.NIA as select * from import.nutrient_data where nutr_no='406';
 CREATE TABLE nutrient.PANTAC as select * from import.nutrient_data where nutr_no='410';
 CREATE TABLE nutrient.VITB6A as select * from import.nutrient_data where nutr_no='415';
 CREATE TABLE nutrient.FOL as select * from import.nutrient_data where nutr_no='417';
 CREATE TABLE nutrient.VITB12 as select * from import.nutrient_data where nutr_no='418';
 CREATE TABLE nutrient.CHOLN as select * from import.nutrient_data where nutr_no='421';
 CREATE TABLE nutrient.MK4 as select * from import.nutrient_data where nutr_no='428';
 CREATE TABLE nutrient.VITK1D as select * from import.nutrient_data where nutr_no='429';
 CREATE TABLE nutrient.VITK1 as select * from import.nutrient_data where nutr_no='430';
 CREATE TABLE nutrient.FOLAC as select * from import.nutrient_data where nutr_no='431';
 CREATE TABLE nutrient.FOLFD as select * from import.nutrient_data where nutr_no='432';
 CREATE TABLE nutrient.FOLDFE as select * from import.nutrient_data where nutr_no='435';
 CREATE TABLE nutrient.BETN as select * from import.nutrient_data where nutr_no='454';
 CREATE TABLE nutrient.TRP_G as select * from import.nutrient_data where nutr_no='501';
 CREATE TABLE nutrient.THR_G as select * from import.nutrient_data where nutr_no='502';
 CREATE TABLE nutrient.ILE_G as select * from import.nutrient_data where nutr_no='503';
 CREATE TABLE nutrient.LEU_G as select * from import.nutrient_data where nutr_no='504';
 CREATE TABLE nutrient.LYS_G as select * from import.nutrient_data where nutr_no='505';
 CREATE TABLE nutrient.MET_G as select * from import.nutrient_data where nutr_no='506';
 CREATE TABLE nutrient.CYS_G as select * from import.nutrient_data where nutr_no='507';
 CREATE TABLE nutrient.PHE_G as select * from import.nutrient_data where nutr_no='508';
 CREATE TABLE nutrient.TYR_G as select * from import.nutrient_data where nutr_no='509';
 CREATE TABLE nutrient.VAL_G as select * from import.nutrient_data where nutr_no='510';
 CREATE TABLE nutrient.ARG_G as select * from import.nutrient_data where nutr_no='511';
 CREATE TABLE nutrient.HISTN_G as select * from import.nutrient_data where nutr_no='512';
 CREATE TABLE nutrient.ALA_G as select * from import.nutrient_data where nutr_no='513';
 CREATE TABLE nutrient.ASP_G as select * from import.nutrient_data where nutr_no='514';
 CREATE TABLE nutrient.GLU_G as select * from import.nutrient_data where nutr_no='515';
 CREATE TABLE nutrient.GLY_G as select * from import.nutrient_data where nutr_no='516';
 CREATE TABLE nutrient.PRO_G as select * from import.nutrient_data where nutr_no='517';
 CREATE TABLE nutrient.SER_G as select * from import.nutrient_data where nutr_no='518';
 CREATE TABLE nutrient.HYP as select * from import.nutrient_data where nutr_no='521';
 
 
 CREATE TABLE nutrient.CHOLE as select * from import.nutrient_data where nutr_no='601';
 CREATE TABLE nutrient.FATRN as select * from import.nutrient_data where nutr_no='605';
 CREATE TABLE nutrient.FASAT as select * from import.nutrient_data where nutr_no='606';
 CREATE TABLE nutrient.F4D0 as select * from import.nutrient_data where nutr_no='607';
 CREATE TABLE nutrient.F6D0 as select * from import.nutrient_data where nutr_no='608';
 CREATE TABLE nutrient.F8D0 as select * from import.nutrient_data where nutr_no='609';
 CREATE TABLE nutrient.F10D0 as select * from import.nutrient_data where nutr_no='610';
 CREATE TABLE nutrient.F12D0 as select * from import.nutrient_data where nutr_no='611';
 CREATE TABLE nutrient.F14D0 as select * from import.nutrient_data where nutr_no='612';
 CREATE TABLE nutrient.F16D0 as select * from import.nutrient_data where nutr_no='613';
 CREATE TABLE nutrient.F18D0 as select * from import.nutrient_data where nutr_no='614';
 CREATE TABLE nutrient.F20D0 as select * from import.nutrient_data where nutr_no='615';
 CREATE TABLE nutrient.F18D1 as select * from import.nutrient_data where nutr_no='617';
 CREATE TABLE nutrient.F18D2 as select * from import.nutrient_data where nutr_no='618';
 CREATE TABLE nutrient.F18D3 as select * from import.nutrient_data where nutr_no='619';
 CREATE TABLE nutrient.F20D4 as select * from import.nutrient_data where nutr_no='620';
 CREATE TABLE nutrient.F22D6 as select * from import.nutrient_data where nutr_no='621';
 CREATE TABLE nutrient.F22D0 as select * from import.nutrient_data where nutr_no='624';
 CREATE TABLE nutrient.F14D1 as select * from import.nutrient_data where nutr_no='625';
 CREATE TABLE nutrient.F16D1 as select * from import.nutrient_data where nutr_no='626';
 CREATE TABLE nutrient.F18D4 as select * from import.nutrient_data where nutr_no='627';
 CREATE TABLE nutrient.F20D1 as select * from import.nutrient_data where nutr_no='628';
 CREATE TABLE nutrient.F20D5 as select * from import.nutrient_data where nutr_no='629';
 CREATE TABLE nutrient.F22D1 as select * from import.nutrient_data where nutr_no='630';
 CREATE TABLE nutrient.F22D5 as select * from import.nutrient_data where nutr_no='631';
 CREATE TABLE nutrient.PHYSTR as select * from import.nutrient_data where nutr_no='636';
 CREATE TABLE nutrient.STID7 as select * from import.nutrient_data where nutr_no='638';
 CREATE TABLE nutrient.CAMD5 as select * from import.nutrient_data where nutr_no='639';
 CREATE TABLE nutrient.SITSTR as select * from import.nutrient_data where nutr_no='641';
 CREATE TABLE nutrient.FAMS as select * from import.nutrient_data where nutr_no='645';
 CREATE TABLE nutrient.FAPU as select * from import.nutrient_data where nutr_no='646';
 CREATE TABLE nutrient.F15D0 as select * from import.nutrient_data where nutr_no='652';
 CREATE TABLE nutrient.F17D0 as select * from import.nutrient_data where nutr_no='653';
 CREATE TABLE nutrient.F24D0 as select * from import.nutrient_data where nutr_no='654';
 CREATE TABLE nutrient.F16D1T as select * from import.nutrient_data where nutr_no='662';
 CREATE TABLE nutrient.F18D1T as select * from import.nutrient_data where nutr_no='663';
 CREATE TABLE nutrient.F22D1T as select * from import.nutrient_data where nutr_no='664';
 
 
 CREATE TABLE nutrient.F18D2TT as select * from import.nutrient_data where nutr_no='669';
 CREATE TABLE nutrient.F18D2CLA as select * from import.nutrient_data where nutr_no='670';
 CREATE TABLE nutrient.F24D1C as select * from import.nutrient_data where nutr_no='671';
 CREATE TABLE nutrient.F20D2CN6 as select * from import.nutrient_data where nutr_no='672';
 CREATE TABLE nutrient.F16D1C as select * from import.nutrient_data where nutr_no='673';
 CREATE TABLE nutrient.F18D1C as select * from import.nutrient_data where nutr_no='674';
 CREATE TABLE nutrient.F18D2CN6 as select * from import.nutrient_data where nutr_no='675';
 CREATE TABLE nutrient.F22D1C as select * from import.nutrient_data where nutr_no='676';
 CREATE TABLE nutrient.F18D3CN6 as select * from import.nutrient_data where nutr_no='685';
 CREATE TABLE nutrient.F17D1 as select * from import.nutrient_data where nutr_no='687';
 CREATE TABLE nutrient.F20D3 as select * from import.nutrient_data where nutr_no='689';
 CREATE TABLE nutrient.FATRNM as select * from import.nutrient_data where nutr_no='693';
 CREATE TABLE nutrient.FATRNP as select * from import.nutrient_data where nutr_no='695';
 CREATE TABLE nutrient.F13D0 as select * from import.nutrient_data where nutr_no='696';
 CREATE TABLE nutrient.F15D1 as select * from import.nutrient_data where nutr_no='697';
 CREATE TABLE nutrient.F18D3CN3 as select * from import.nutrient_data where nutr_no='851';
 CREATE TABLE nutrient.F20D3N3 as select * from import.nutrient_data where nutr_no='852';
 CREATE TABLE nutrient.F20D3N6 as select * from import.nutrient_data where nutr_no='853';
 CREATE TABLE nutrient.F20D4N6 as select * from import.nutrient_data where nutr_no='855';
 
 CREATE TABLE nutrient.F21D5 as select * from import.nutrient_data where nutr_no='857';
 CREATE TABLE nutrient.F22D4 as select * from import.nutrient_data where nutr_no='858';
 CREATE TABLE nutrient.F18D1TN7 as select * from import.nutrient_data where nutr_no='859';

 ALTER TABLE nutrient.FAT ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.CHOCDF ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.ASH ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.ENERC_KCAL ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.STARCH ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.SUCS ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.GLUS ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.FRUS ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.LACS ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.MALS ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.ALC ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.WATER ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.CAFFN ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.THEBRN ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.ENERC_KJ ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.SUGAR ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.GALS ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.FIBTG ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.CA ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.FE ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.MG ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.P ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.K ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.NA ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.ZN ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.CU ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.FLD ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.MN ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.SE ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.VITA_IU ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.RETOL ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.VITA_RAE ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.CARTB ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.CARTA ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.TOCPHA ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.VITD ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.ERGCAL ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.CHOCAL ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.VITD ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.CRYPX ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.LYCPN ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.LUTZEA ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.TOCPHB ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.TOCPHG ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.TOCPHD ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.TOCTRA ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.TOCTRB ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.TOCTRG ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.TOCTRD ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.VITC ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.THIA ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.RIBF ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.NIA ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.PANTAC ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.VITB6A ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.FOL ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.VITB12 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.CHOLN ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.MK4 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.VITK1D ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.VITK1 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.FOLAC ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.FOLFD ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.FOLDFE ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.BETN ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.TRP_G ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.THR_G ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.ILE_G ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.LEU_G ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.LYS_G ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.MET_G ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.CYS_G ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.PHE_G ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.TYR_G ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.VAL_G ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.ARG_G ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.HISTN_G ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.ALA_G ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.ASP_G ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.GLU_G ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.GLY_G ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.PRO_G ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.SER_G ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.HYP ADD db_id SERIAL PRIMARY KEY;
 
 
 ALTER TABLE nutrient.CHOLE ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.FATRN ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.FASAT ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F4D0 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F6D0 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F8D0 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F10D0 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F12D0 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F14D0 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F16D0 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F18D0 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F20D0 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F18D1 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F18D2 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F18D3 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F20D4 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F22D6 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F22D0 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F14D1 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F16D1 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F18D4 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F20D1 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F20D5 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F22D1 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F22D5 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.PHYSTR ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.STID7 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.CAMD5 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.SITSTR ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.FAMS ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.FAPU ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F15D0 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F17D0 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F24D0 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F16D1T ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F18D1T ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F22D1T ADD db_id SERIAL PRIMARY KEY;
 
 
 ALTER TABLE nutrient.F18D2TT ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F18D2CLA ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F24D1C ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F20D2CN6 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F16D1C ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F18D1C ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F18D2CN6 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F22D1C ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F18D3CN6 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F17D1 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F20D3 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.FATRNM ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.FATRNP ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F13D0 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F15D1 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F18D3CN3 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F20D3N3 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F20D3N6 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F20D4N6 ADD db_id SERIAL PRIMARY KEY;
 
 ALTER TABLE nutrient.F21D5 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F22D4 ADD db_id SERIAL PRIMARY KEY;
 ALTER TABLE nutrient.F18D1TN7 ADD db_id SERIAL PRIMARY KEY;

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
