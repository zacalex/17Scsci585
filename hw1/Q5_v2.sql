--use sqlite and DB Browser
SELECT Chef
FROM ChefDish C1
       LEFT OUTER JOIN
       Dishes D1
       ON C1.Dish = D1.Dish 
GROUP BY Chef
HAVING COUNT(C1.Dish) >= (select count(*) from Dishes)
	AND COUNT(D1.Dish) >= (select count(*) from Dishes)
