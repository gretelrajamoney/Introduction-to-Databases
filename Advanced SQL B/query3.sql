-- Find the first_name, last_name and total_combined_film_length of Animation films for every actor.
-- That is the result should list the names of all of the actors(even if an actor has not been in any Animation films) and the total length of Animation films they have been in.
-- Look at the category table to figure out how to filter data for Animation films.
-- Order your results by the actor_id in ascending order.
-- Put query for Q3 here
select actor.actor_id,actor.first_name, actor.last_name, ifnull(sum(film.length), 0) as total_combined_film_length FROM actor left join film_actor on actor.actor_id = film_actor.actor_id left join film_category on film_actor.film_id = film_category.film_id left join category on film_category.category_id = category.category_id left join film on film_actor.film_id = film.film_id and category.category_id = 2 group by actor.actor_id;