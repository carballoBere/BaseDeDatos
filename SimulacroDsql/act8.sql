--Mostrar los nombres de las diez películas con menos actores
SELECT title as peliculas ,count(actor_id) as actores from film f
JOIN film_actor fa ON f.film_id = fa.film_id
GROUP BY f.film_id
ORDER BY actores asc limit 10;