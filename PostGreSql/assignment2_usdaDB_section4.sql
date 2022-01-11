1. Select all records from data_src which came from the journal named 'Food Chemistry'.
SELECT * FROM data_src WHERE journal='Food Chemistry';

2. Select record from nutr_def where nutrdesc is Retinol.
SELECT * FROM nutr_def WHERE nutrdesc='Retinol';

3. Find all the food descriptions (food_des) records for manufacturer Kellogg, Co. (must include punctuation for exact match).
SELECT * FROM nutr_def WHERE nutrdesc='Retinol';

4. Find the number of records in data sources (data_src) that were published after year 2000 (it is numeric field).
SELECT COUNT(*) FROM data_src WHERE year>2000;

5. Find the number of records in food description that have a fat_factor < 4.
SELECT * FROM food_des WHERE fat_factor<4;

6. Select all records from weight table that have gm_weight of 190.
SELECT * FROM weight WHERE gm_wgt=190;

7. Find the number of records in food description table that have pro_factor greater than 1.5 and fat_factor less than 5.
SELECT COUNT(*) FROM food_des WHERE pro_factor>1.5 AND fat_factor<5;

8. Find the record in data source table that is from year 1990 and the journal Cereal Foods World.
SELECT * FROM data_src WHERE year=1990 AND journal='Journal Cereal Foods World';

9. Select count of weights where gm_wgt is greater than 150 and less than 200.
 SELECT COUNT(gm_wgt) FROM weight WHERE gm_wgt >150 AND gm_wgt <200

10. Select the records in nutr_def table (nutrition definitions) that have units of kj or kcal.
 SELECT * FROM nutr_def WHERE units='kj' OR units='kcal';

11. Select all records from data source table (data_src) that where from the year 2000 or the journal Food Chemistry.
 SELECT * FROM data_src WHERE year=2000 OR journal='Food Chemistry';
 
12. How many records in food_des are not about food group Breakfast Cereals.  The field fdgrp_cd is an id field and you will have to find it in fd_group for fddrp_desc = ' Breakfast Cereals'.
 SELECT COUNT(*) FROM food_des WHERE  NOT fdgrp_cd='0800';	
 SELECT fdgrp_cd FROM fd_group WHERE fddrp_desc = 'Breakfast Cereals';

13. Find all the records in data sources that where between 1990 and 2000 and either 'J. Food Protection' or 'Food Chemistry'.
 SELECT * FROM data_src WHERE year BETWEEN 1990 AND 2000 AND journal IN('J. Food Protection','Food Chemistry');

14. Use BETWEEN syntax to find number of weight records that weight between 50 and 75 grams (gm_wgt).
 SELECT * FROM weight WHERE gm_wgt bETWEEN 50 AND 75;

15. Select all records from the data source table that were published in years 1960,1970,1980,1990, and 2000.  Use the IN syntax.
 SELECT * FROM data_src WHERE year IN(1960,1970,1980,1990,2000);

