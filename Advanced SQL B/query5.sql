-- Find the film_title of all films which feature both RALPH CRUZ and WILL WILSON
-- Order the results by film_title in ascending order.
--  Warning: this is a tricky one and while the syntax is all things you know, you have to think a bit oustide the box to figure out how to get a table that shows pairs of actors in movies.


-- Put your query for q5 here.
select title as film_title from(select film.title, count(actor.first_name) as name_count from film join film_actor on film.film_id = film_actor.film_id join actor on film_actor.actor_id = actor.actor_id where concat(actor.first_name,' ', actor.last_name) in ('RALPH CRUZ','WILL WILSON') group by film.title order by film.title ASC) A where name_count = 2;