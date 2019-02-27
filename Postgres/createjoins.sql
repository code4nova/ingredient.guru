\pset pager off
\t

select 'SELECT';
select 'food_desc.short_desc as short_description,';
select 'nutrient_'||nd.tagname||' as amount' from import.nutrient_definition as nd;
select 'FROM import.food_description food_desc';
select 'LEFT JOIN nutrient.'||nd.tagname||' nutrient_'||nd.tagname||' ON to_number(nutrient_'||nd.tagname||', ''99999'') = to_number(food_desc.ndb_no, ''99999'')'';'from import.nutrient_definition nd;
