CREATE VIEW peliculas_rating as
SELECT count (title) as peliculas,rating
	FROM "film"
	GROUP BY rating
    
	