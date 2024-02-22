--Mostrar cuál es la tercer película más alquilada.
SELECT title as peliculas ,count(*) as alquiler FROM film f 
JOIN inventory i ON f.film_id = i.film_id
JOIN rental re ON i.inventory_id = re.inventory_id
GROUP BY F.film_id
ORDER BY alquiler asc limit 1 offset 2;