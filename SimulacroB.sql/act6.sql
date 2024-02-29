--Mostrar la cantidad total de países que hay por región, descartando los que tengan 5 o menos.
SELECT count(country_name) as paises ,region_name as regiones FROM countries co
JOIN regions re ON co.region_id = re.region_id
GROUP BY re.region_id
HAVING paises>5
ORDER BY regiones asc ;