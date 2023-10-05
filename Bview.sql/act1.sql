CREATE VIEW peliculas_rating
SELECT count (title) as peliculas,rating
	FROM "film"
	GROUP BY rating
	