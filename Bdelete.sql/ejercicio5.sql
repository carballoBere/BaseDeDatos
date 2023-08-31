--Borrar al actor Matthew Johansson, pensar qué cosa habría que borrar primero para poder borrarlo.

DELETE FROM film_actor WHERE actor_id = (SELECT actor_id from actor WHERE name like "%Matthew Johansson%");
DELETE from actor WHERE name like "%Matthew Johansson%";
SELECT name FROM actor;

--esta mal :(

