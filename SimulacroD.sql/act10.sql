--Mostrar la cantidad promedio y cantidad máxima de actores de las películas que tienen entre un hora y media y dos horas.
SELECT AVG(cantActores), max(cantActores)
FROM (SELECT count(*) as cantActores, f.title, f.length FROM actor a
JOIN film_actor fa ON fa.actor_id = a.actor_id
JOIN film f ON fa.film_id = f.film_id
WHERE f.length BETWEEN 90 AND 120
GROUP BY f.film_id
ORDER BY f.length ASC)