--Mostrar los nombres y precio de alquiler de todas las películas con rating "PG-13" o "PG"
--ordenando primero por precio (de mayor a menor) y luego por orden alfabético del nombre de la película.
SELECT title , rental_rate, rating FROM film
WHERE rating like "pg" or rating like "pg-1%" ORDER BY rating ASC , rental_rate ASC ;
