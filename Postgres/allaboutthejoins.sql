-- import.food_groups and import.food_description
SELECT food_groups.fdgrp_desc FROM food_groups
INNER JOIN food_description
ON food_groups.fdgrp_cd = food_description.fdgrp_cd; 
