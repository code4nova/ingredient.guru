SELECT * 
FROM import.food_description LEFT OUTER JOIN import.nutrient_data
ON import.food_description.ndb_no = import.nutrient_data.ndb_no;
