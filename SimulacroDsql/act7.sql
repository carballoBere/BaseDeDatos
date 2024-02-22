--Mostrar la fecha más vieja y la más actual de los alquileres que fueron devueltos 
--(PISTA: las fechas se pueden comparar, la más vieja sería la menor y la más actual la mayor)
SELECT min(rental_date) as fecha_vieja ,max(rental_date) as fecha_actual FROM rental 
WHERE return_date is not null ;