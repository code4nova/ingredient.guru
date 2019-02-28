 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_FAT.nutr_val as amount                                                                                                   
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.FAT nutrient_FAT ON to_number(nutrient_FAT.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_CHOCDF.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.CHOCDF nutrient_CHOCDF ON to_number(nutrient_CHOCDF.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_ASH.nutr_val as amount                                                                                                   
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.ASH nutrient_ASH ON to_number(nutrient_ASH.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_ENERC_KCAL.nutr_val as amount                                                                                            
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.ENERC_KCAL nutrient_ENERC_KCAL ON to_number(nutrient_ENERC_KCAL.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_STARCH.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.STARCH nutrient_STARCH ON to_number(nutrient_STARCH.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_SUCS.nutr_val as amount                                                                                                  
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.SUCS nutrient_SUCS ON to_number(nutrient_SUCS.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_GLUS.nutr_val as amount                                                                                                  
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.GLUS nutrient_GLUS ON to_number(nutrient_GLUS.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_FRUS.nutr_val as amount                                                                                                  
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.FRUS nutrient_FRUS ON to_number(nutrient_FRUS.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_LACS.nutr_val as amount                                                                                                  
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.LACS nutrient_LACS ON to_number(nutrient_LACS.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_MALS.nutr_val as amount                                                                                                  
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.MALS nutrient_MALS ON to_number(nutrient_MALS.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_ALC.nutr_val as amount                                                                                                   
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.ALC nutrient_ALC ON to_number(nutrient_ALC.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_WATER.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.WATER nutrient_WATER ON to_number(nutrient_WATER.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_CAFFN.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.CAFFN nutrient_CAFFN ON to_number(nutrient_CAFFN.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_THEBRN.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.THEBRN nutrient_THEBRN ON to_number(nutrient_THEBRN.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_ENERC_KJ.nutr_val as amount                                                                                              
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.ENERC_KJ nutrient_ENERC_KJ ON to_number(nutrient_ENERC_KJ.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_SUGAR.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.SUGAR nutrient_SUGAR ON to_number(nutrient_SUGAR.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_GALS.nutr_val as amount                                                                                                  
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.GALS nutrient_GALS ON to_number(nutrient_GALS.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_FIBTG.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.FIBTG nutrient_FIBTG ON to_number(nutrient_FIBTG.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_CA.nutr_val as amount                                                                                                    
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.CA nutrient_CA ON to_number(nutrient_CA.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_FE.nutr_val as amount                                                                                                    
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.FE nutrient_FE ON to_number(nutrient_FE.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_MG.nutr_val as amount                                                                                                    
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.MG nutrient_MG ON to_number(nutrient_MG.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_P.nutr_val as amount                                                                                                     
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.P nutrient_P ON to_number(nutrient_P.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_K.nutr_val as amount                                                                                                     
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.K nutrient_K ON to_number(nutrient_K.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_NA.nutr_val as amount                                                                                                    
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.NA nutrient_NA ON to_number(nutrient_NA.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_ZN.nutr_val as amount                                                                                                    
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.ZN nutrient_ZN ON to_number(nutrient_ZN.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_CU.nutr_val as amount                                                                                                    
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.CU nutrient_CU ON to_number(nutrient_CU.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_FLD.nutr_val as amount                                                                                                   
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.FLD nutrient_FLD ON to_number(nutrient_FLD.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_MN.nutr_val as amount                                                                                                    
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.MN nutrient_MN ON to_number(nutrient_MN.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_SE.nutr_val as amount                                                                                                    
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.SE nutrient_SE ON to_number(nutrient_SE.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_VITA_IU.nutr_val as amount                                                                                               
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.VITA_IU nutrient_VITA_IU ON to_number(nutrient_VITA_IU.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_RETOL.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.RETOL nutrient_RETOL ON to_number(nutrient_RETOL.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_VITA_RAE.nutr_val as amount                                                                                              
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.VITA_RAE nutrient_VITA_RAE ON to_number(nutrient_VITA_RAE.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_CARTB.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.CARTB nutrient_CARTB ON to_number(nutrient_CARTB.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_CARTA.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.CARTA nutrient_CARTA ON to_number(nutrient_CARTA.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_TOCPHA.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.TOCPHA nutrient_TOCPHA ON to_number(nutrient_TOCPHA.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_VITD.nutr_val as amount                                                                                                  
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.VITD nutrient_VITD ON to_number(nutrient_VITD.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_ERGCAL.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.ERGCAL nutrient_ERGCAL ON to_number(nutrient_ERGCAL.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_CHOCAL.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.CHOCAL nutrient_CHOCAL ON to_number(nutrient_CHOCAL.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_VITD.nutr_val as amount                                                                                                  
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.VITD nutrient_VITD ON to_number(nutrient_VITD.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_CRYPX.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.CRYPX nutrient_CRYPX ON to_number(nutrient_CRYPX.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_LYCPN.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.LYCPN nutrient_LYCPN ON to_number(nutrient_LYCPN.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_LUT ZEA.nutr_val as amount                                                                                               
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.LUT ZEA nutrient_LUT ZEA ON to_number(nutrient_LUT ZEA.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_TOCPHB.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.TOCPHB nutrient_TOCPHB ON to_number(nutrient_TOCPHB.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_TOCPHG.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.TOCPHG nutrient_TOCPHG ON to_number(nutrient_TOCPHG.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_TOCPHD.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.TOCPHD nutrient_TOCPHD ON to_number(nutrient_TOCPHD.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_TOCTRA.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.TOCTRA nutrient_TOCTRA ON to_number(nutrient_TOCTRA.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_TOCTRB.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.TOCTRB nutrient_TOCTRB ON to_number(nutrient_TOCTRB.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_TOCTRG.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.TOCTRG nutrient_TOCTRG ON to_number(nutrient_TOCTRG.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_TOCTRD.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.TOCTRD nutrient_TOCTRD ON to_number(nutrient_TOCTRD.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_VITC.nutr_val as amount                                                                                                  
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.VITC nutrient_VITC ON to_number(nutrient_VITC.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_THIA.nutr_val as amount                                                                                                  
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.THIA nutrient_THIA ON to_number(nutrient_THIA.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_RIBF.nutr_val as amount                                                                                                  
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.RIBF nutrient_RIBF ON to_number(nutrient_RIBF.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_NIA.nutr_val as amount                                                                                                   
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.NIA nutrient_NIA ON to_number(nutrient_NIA.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_PANTAC.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.PANTAC nutrient_PANTAC ON to_number(nutrient_PANTAC.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_VITB6A.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.VITB6A nutrient_VITB6A ON to_number(nutrient_VITB6A.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_FOL.nutr_val as amount                                                                                                   
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.FOL nutrient_FOL ON to_number(nutrient_FOL.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_VITB12.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.VITB12 nutrient_VITB12 ON to_number(nutrient_VITB12.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_CHOLN.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.CHOLN nutrient_CHOLN ON to_number(nutrient_CHOLN.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_MK4.nutr_val as amount                                                                                                   
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.MK4 nutrient_MK4 ON to_number(nutrient_MK4.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_VITK1D.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.VITK1D nutrient_VITK1D ON to_number(nutrient_VITK1D.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_VITK1.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.VITK1 nutrient_VITK1 ON to_number(nutrient_VITK1.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_FOLAC.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.FOLAC nutrient_FOLAC ON to_number(nutrient_FOLAC.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_FOLFD.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.FOLFD nutrient_FOLFD ON to_number(nutrient_FOLFD.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_FOLDFE.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.FOLDFE nutrient_FOLDFE ON to_number(nutrient_FOLDFE.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_BETN.nutr_val as amount                                                                                                  
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.BETN nutrient_BETN ON to_number(nutrient_BETN.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_TRP_G.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.TRP_G nutrient_TRP_G ON to_number(nutrient_TRP_G.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_THR_G.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.THR_G nutrient_THR_G ON to_number(nutrient_THR_G.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_ILE_G.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.ILE_G nutrient_ILE_G ON to_number(nutrient_ILE_G.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_LEU_G.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.LEU_G nutrient_LEU_G ON to_number(nutrient_LEU_G.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_LYS_G.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.LYS_G nutrient_LYS_G ON to_number(nutrient_LYS_G.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_MET_G.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.MET_G nutrient_MET_G ON to_number(nutrient_MET_G.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_CYS_G.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.CYS_G nutrient_CYS_G ON to_number(nutrient_CYS_G.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_PHE_G.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.PHE_G nutrient_PHE_G ON to_number(nutrient_PHE_G.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_TYR_G.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.TYR_G nutrient_TYR_G ON to_number(nutrient_TYR_G.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_VAL_G.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.VAL_G nutrient_VAL_G ON to_number(nutrient_VAL_G.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_ARG_G.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.ARG_G nutrient_ARG_G ON to_number(nutrient_ARG_G.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_HISTN_G.nutr_val as amount                                                                                               
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.HISTN_G nutrient_HISTN_G ON to_number(nutrient_HISTN_G.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_ALA_G.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.ALA_G nutrient_ALA_G ON to_number(nutrient_ALA_G.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_ASP_G.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.ASP_G nutrient_ASP_G ON to_number(nutrient_ASP_G.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_GLU_G.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.GLU_G nutrient_GLU_G ON to_number(nutrient_GLU_G.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_GLY_G.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.GLY_G nutrient_GLY_G ON to_number(nutrient_GLY_G.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_PRO_G.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.PRO_G nutrient_PRO_G ON to_number(nutrient_PRO_G.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_SER_G.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.SER_G nutrient_SER_G ON to_number(nutrient_SER_G.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_HYP.nutr_val as amount                                                                                                   
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.HYP nutrient_HYP ON to_number(nutrient_HYP.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
 
 
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_CHOLE.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.CHOLE nutrient_CHOLE ON to_number(nutrient_CHOLE.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_FATRN.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.FATRN nutrient_FATRN ON to_number(nutrient_FATRN.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_FASAT.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.FASAT nutrient_FASAT ON to_number(nutrient_FASAT.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F4D0.nutr_val as amount                                                                                                  
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F4D0 nutrient_F4D0 ON to_number(nutrient_F4D0.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F6D0.nutr_val as amount                                                                                                  
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F6D0 nutrient_F6D0 ON to_number(nutrient_F6D0.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F8D0.nutr_val as amount                                                                                                  
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F8D0 nutrient_F8D0 ON to_number(nutrient_F8D0.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F10D0.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F10D0 nutrient_F10D0 ON to_number(nutrient_F10D0.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F12D0.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F12D0 nutrient_F12D0 ON to_number(nutrient_F12D0.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F14D0.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F14D0 nutrient_F14D0 ON to_number(nutrient_F14D0.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F16D0.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F16D0 nutrient_F16D0 ON to_number(nutrient_F16D0.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F18D0.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F18D0 nutrient_F18D0 ON to_number(nutrient_F18D0.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F20D0.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F20D0 nutrient_F20D0 ON to_number(nutrient_F20D0.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F18D1.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F18D1 nutrient_F18D1 ON to_number(nutrient_F18D1.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F18D2.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F18D2 nutrient_F18D2 ON to_number(nutrient_F18D2.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F18D3.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F18D3 nutrient_F18D3 ON to_number(nutrient_F18D3.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F20D4.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F20D4 nutrient_F20D4 ON to_number(nutrient_F20D4.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F22D6.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F22D6 nutrient_F22D6 ON to_number(nutrient_F22D6.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F22D0.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F22D0 nutrient_F22D0 ON to_number(nutrient_F22D0.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F14D1.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F14D1 nutrient_F14D1 ON to_number(nutrient_F14D1.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F16D1.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F16D1 nutrient_F16D1 ON to_number(nutrient_F16D1.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F18D4.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F18D4 nutrient_F18D4 ON to_number(nutrient_F18D4.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F20D1.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F20D1 nutrient_F20D1 ON to_number(nutrient_F20D1.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F20D5.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F20D5 nutrient_F20D5 ON to_number(nutrient_F20D5.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F22D1.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F22D1 nutrient_F22D1 ON to_number(nutrient_F22D1.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F22D5.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F22D5 nutrient_F22D5 ON to_number(nutrient_F22D5.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_PHYSTR.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.PHYSTR nutrient_PHYSTR ON to_number(nutrient_PHYSTR.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_STID7.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.STID7 nutrient_STID7 ON to_number(nutrient_STID7.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_CAMD5.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.CAMD5 nutrient_CAMD5 ON to_number(nutrient_CAMD5.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_SITSTR.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.SITSTR nutrient_SITSTR ON to_number(nutrient_SITSTR.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_FAMS.nutr_val as amount                                                                                                  
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.FAMS nutrient_FAMS ON to_number(nutrient_FAMS.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_FAPU.nutr_val as amount                                                                                                  
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.FAPU nutrient_FAPU ON to_number(nutrient_FAPU.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F15D0.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F15D0 nutrient_F15D0 ON to_number(nutrient_F15D0.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F17D0.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F17D0 nutrient_F17D0 ON to_number(nutrient_F17D0.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F24D0.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F24D0 nutrient_F24D0 ON to_number(nutrient_F24D0.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F16D1T.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F16D1T nutrient_F16D1T ON to_number(nutrient_F16D1T.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F18D1T.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F18D1T nutrient_F18D1T ON to_number(nutrient_F18D1T.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F22D1T.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F22D1T nutrient_F22D1T ON to_number(nutrient_F22D1T.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
 
 
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F18D2TT.nutr_val as amount                                                                                               
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F18D2TT nutrient_F18D2TT ON to_number(nutrient_F18D2TT.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F18D2CLA.nutr_val as amount                                                                                              
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F18D2CLA nutrient_F18D2CLA ON to_number(nutrient_F18D2CLA.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F24D1C.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F24D1C nutrient_F24D1C ON to_number(nutrient_F24D1C.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F20D2CN6.nutr_val as amount                                                                                              
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F20D2CN6 nutrient_F20D2CN6 ON to_number(nutrient_F20D2CN6.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F16D1C.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F16D1C nutrient_F16D1C ON to_number(nutrient_F16D1C.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F18D1C.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F18D1C nutrient_F18D1C ON to_number(nutrient_F18D1C.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F18D2CN6.nutr_val as amount                                                                                              
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F18D2CN6 nutrient_F18D2CN6 ON to_number(nutrient_F18D2CN6.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F22D1C.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F22D1C nutrient_F22D1C ON to_number(nutrient_F22D1C.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F18D3CN6.nutr_val as amount                                                                                              
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F18D3CN6 nutrient_F18D3CN6 ON to_number(nutrient_F18D3CN6.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F17D1.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F17D1 nutrient_F17D1 ON to_number(nutrient_F17D1.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F20D3.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F20D3 nutrient_F20D3 ON to_number(nutrient_F20D3.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_FATRNM.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.FATRNM nutrient_FATRNM ON to_number(nutrient_FATRNM.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_FATRNP.nutr_val as amount                                                                                                
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.FATRNP nutrient_FATRNP ON to_number(nutrient_FATRNP.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F13D0.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F13D0 nutrient_F13D0 ON to_number(nutrient_F13D0.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F15D1.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F15D1 nutrient_F15D1 ON to_number(nutrient_F15D1.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F18D3CN3.nutr_val as amount                                                                                              
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F18D3CN3 nutrient_F18D3CN3 ON to_number(nutrient_F18D3CN3.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F20D3N3.nutr_val as amount                                                                                               
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F20D3N3 nutrient_F20D3N3 ON to_number(nutrient_F20D3N3.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F20D3N6.nutr_val as amount                                                                                               
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F20D3N6 nutrient_F20D3N6 ON to_number(nutrient_F20D3N6.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F20D4N6.nutr_val as amount                                                                                               
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F20D4N6 nutrient_F20D4N6 ON to_number(nutrient_F20D4N6.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
 
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F21D5.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F21D5 nutrient_F21D5 ON to_number(nutrient_F21D5.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F22D4.nutr_val as amount                                                                                                 
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F22D4 nutrient_F22D4 ON to_number(nutrient_F22D4.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');
                                                                                                                                           
 SELECT                                                                                                                                    
         food_desc.shrt_desc as short_description,                                                                                         
         nutrient_F18D1TN7.nutr_val as amount                                                                                              
 FROM                                                                                                                                      
         import.food_description food_desc                                                                                                 
 left JOIN nutrient.F18D1TN7 nutrient_F18D1TN7 ON to_number(nutrient_F18D1TN7.ndb_no,'99999') = to_number(food_desc.ndb_no,'99999');

