/*
REATE TABLE basket_a (
    id INT PRIMARY KEY,
    fruit VARCHAR (100) NOT NULL
);

CREATE TABLE basket_b (
    id INT PRIMARY KEY,
    fruit VARCHAR (100) NOT NULL
);

INSERT INTO basket_a (id, fruit)
VALUES
    (1, 'Apple'),
    (2, 'Orange'),
    (3, 'Banana'),
    (4, 'Cucumber');

INSERT INTO basket_b (id, fruit)
VALUES
    (1, 'Orange'),
    (2, 'Apple'),
    (3, 'Watermelon'),
    (4, 'Pear');
*/

/*
SELECT
    uno.id id_a,
    uno.fruit fruit_a,
    dos.id id_b,
    dos.fruit fruit_b
FROM
    basket_a uno
INNER JOIN basket_b dos ON uno.fruit = dos.fruit;
*/

/*
SELECT
        fd_description.ndb_no,
        fd_description.shrt_desc,
        nutrient_dat.nutr_no
FROM
        import.food_description fd_description
INNER JOIN import.nutrient_data nutrient_dat ON fd_description.ndb_no::text = nutrient_dat.ndb_no::text;
*/

SELECT 
        nutrient_dat.ndb_no,
        nutrient_def.tagname,
        nutrient_dat.nutr_val,
        nutrient_def.nutrdesc
FROM
        import.nutrient_data nutrient_dat
INNER JOIN import.nutrient_definition nutrient_def ON nutrient_dat.nutr_no = nutrient_def.nutr_no
order by nutrient_dat.ndb_no;
