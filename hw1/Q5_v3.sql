--use sqlite and DB Browser
select Chef
from ChefDish inner join Dishes on ChefDish.Dish = Dishes.Dish
group by Chef having count(Chef) >= (select count(*) from Dishes)
