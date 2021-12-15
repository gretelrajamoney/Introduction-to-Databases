-- We want to find out how many of each category of film MAE HOFFMAN has starred in.

-- So return a table with category_name and the count of the number_of_films that MAE was in that category.

-- Your query should return every category even if MAE has been in no films in that category

-- Order by the category name in descending order.
select category.name as category_name, count(actor.actor_id) as number_of_films from category left join film_category on category.category_id = film_category.category_id left join film on film_category.film_id = film.film_id left join film_actor on film.film_id = film_actor.film_id left join actor on (film_actor.actor_id = actor.actor_id) and (actor.first_name = 'MAE' and actor.last_name = 'HOFFMAN')
group by category.category_id
order by category.name DESC;