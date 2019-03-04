SELECT                                                                                                                                                       
        food_desc.shrt_desc,                                                                                                                                 
        nut_def.tagname,                                                                                                                                     
        nut_dat.nutr_val,                                                                                                                                    
        nut_def.units                                                                                                                                        
FROM import.food_description food_desc                                                                                                                       
LEFT JOIN import.nutrient_data nut_dat ON food_desc.ndb_no = nut_dat.ndb_no                                                                                  
LEFT JOIN import.nutrient_definition nut_def ON nut_dat.nutr_no = nut_def.nutr_no                                                                            
WHERE food_desc.ndb_no = {0}; 



