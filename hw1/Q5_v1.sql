--use sqlite and DB Browser
SELECT distinct Chef
from ChefDish C1
where not exists (
	select Dishes.Dish from Dishes
	where not exists (
		select * from ChefDish C2
		where C2.Chef = C1.Chef and C2.Dish = Dishes.Dish
	)
)
