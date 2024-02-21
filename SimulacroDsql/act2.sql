--Mostrar los nombre de todos los ratings de película posibles, en orden alfabético (cuidando de no poner repetidos)

SELECT DISTINCT title as peliculas,rating FROM film
GROUP BY rating   
ORDER BY peliculas ASC