CREATE VIEW peliculas_categoria as
SELECT COUNT (f.title) AS peliculas,c.name AS categoria
	FROM film f JOIN film_category fc
	ON f.film_id = fc.film_id
	JOIN category c ON fc.category_id = c.category_id
	GROUP BY categoria;
    