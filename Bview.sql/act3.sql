CREATE VIEW actor10_peliculas as
SELECT ac.first_name as nombre, ac.last_name as apellido,
COUNT(f.title) as peliculas
FROM film f JOIN film_actor fa
ON f.film_id = fa.film_id
JOIN actor ac ON fa.actor_id = ac.actor_id
GROUP BY ac.actor_id
ORDER BY nombre,apellido asc
LIMIT 10;