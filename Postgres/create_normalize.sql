\pset pager off
\t

select 'CREATE SCHEMA IF NOT EXISTS nutrient;';

select 'DROP TABLE IF EXISTS nutrient.'||nd.tagname||';' from import.nutrient_definition nd;

select 'CREATE TABLE nutrient.'||nd.tagname||' as select * from import.nutrient_data where nutr_no='''||nd.nutr_no||''';' from import.nutrient_definition nd;

SELECT 'ALTER TABLE nutrient.'||nd.tagname||' ADD db_id SERIAL PRIMARY KEY;' from import.nutrient_definition nd;
