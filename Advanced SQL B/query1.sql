-- Find all films with minimum length or maximum rental duration (compared to all other % films).
-- In other words let L be the minimum film length, and let R be the maximum rental duration in the table film. You need to find all films that have length L or duration R or both length L and duration R.
-- If a film has either a minimum length OR a maximum rental duration it should appear in the result set. It does not need to have both the minimum length and the maximum duration.
-- You just need to return the film_id for this query.
-- Order your results by film_id in descending order.

-- Put query for Q1 here
select film_id from film where length=(select min(length) from film) or rental_duration=(select max(rental_duration) from film) order by film_id DESC;