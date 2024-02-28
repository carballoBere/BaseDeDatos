--Mostrar los nombres de todos los países con su región correspondiente. 
--Pensar cómo ordenar para que los países de una misma región queden juntos.
 SELECT country_name as paises , region_name as regiones FROM countries co
 JOIN regions re ON co.region_id = re.region_id
 ORDER BY regiones , paises ;
 