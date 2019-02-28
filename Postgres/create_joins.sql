/*
SELECT 
        nutrient_dat.ndb_no,
        nutrient_def.tagname,
        nutrient_dat.nutr_val,
        nutrient_def.nutrdesc
FROM
        import.nutrient_data nutrient_dat
INNER JOIN import.nutrient_definition nutrient_def ON nutrient_dat.nutr_no = nutrient_def.nutr_no
order by nutrient_dat.ndb_no;
*/

/*
SELECT 
        food_desc.shrt_desc as short_description,
        nutrient_fe.nutr_val as ammount,
        nutrient_def.units as unit
FROM
        import.food_description food_desc
INNER JOIN nutrient.fe nutrient_fe ON nutrient_fe.db_id::text = food_desc.db_id::text
INNER JOIN import.nutrient_definition nutrient_def ON to_number(nutrient_fe.ndb_no, '99999') = to_number(nutrient_def.ndb_no, '99999')
order by nutrient_fe.nutr_val::float;
*/
\pset pager off
\t
SELECT '
SELECT
        food_desc.shrt_desc as short_description,
        nutrient_'||nd.tagname||'.nutr_val as amount
FROM
        import.food_description food_desc
left JOIN nutrient.'||nd.tagname||' nutrient_'||nd.tagname||' ON to_number(nutrient_'||nd.tagname||'.ndb_no,'||'''99999'''||') = to_number(food_desc.ndb_no,'||'''99999'''||');' from import.nutrient_definition as nd; 
