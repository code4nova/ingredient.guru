SELECT                                                                                                                                                       
        food_desc.short_description,                                                                                                                                 
        nut_def.tag_name,                                                                                                                                    
        nut_dat.nutrient_value,                                                                                                                                    
        nut_def.units_of_measurement                                                                                                                                        
FROM ingredient food_desc                                                                                                                       
LEFT JOIN ingredient_nutrient nut_dat ON food_desc.id = nut_dat.ingredient_id                                                                                  
LEFT JOIN nutrient nut_def ON nut_dat.nutrient_id = nut_def.nutrient_id                                                                         
WHERE food_desc.id = {0}; 



