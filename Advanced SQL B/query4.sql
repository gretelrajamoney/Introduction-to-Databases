-- Find the first_name and last_name of all actors who have never been in an Animation film.
-- Order by the actor_id in ascending order.

-- Put your query for q4 here
select actor.actor_id, actor.first_name, actor.last_name from actor inner join film_actor on actor.actor_id = film_actor.actor_id inner join film on film_actor.film_id = film.film_id inner join film_category on film.film_id = film_category.film_id inner join category on film_category.category_id = category.category_id 
where actor.actor_id not in (select actor.actor_id from actor inner join film_actor on actor.actor_id = film_actor.actor_id inner join film on film_actor.film_id = film.film_id inner join film_category on film.film_id = film_category.film_id inner join category on film_category.category_id = category.category_id where category.name = 'Animation' group by actor.actor_id)
group by actor.actor_id;