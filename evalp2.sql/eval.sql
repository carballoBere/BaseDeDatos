-- Queremos unificar los departamentos de finanzas y contabilidad ("Finance" y "Accounting")
-- en un nuevo departamento que se llamará "FA"
-- Para eso:
-- 1) Crear un nuevo location ubicado en alguno de los países que hay (usar subquery para el codigo de pais)
    INSERT INTO locations(location_id ,	street_address ,postal_code ,city ,state_province ,country_id)
    VALUES ("2000" ,"1999 Larrazabal" ,"1439" ,"C.A.B.A" ,"Buenos Aires" , (SELECT country_id FROM countries WHERE country_name like "%Argentina%"));

-- 2) Crear el nuevo departamento, en la ubicacion creada (subquery para el location)
    
-- 3) Modificar los empleados de los dos departamentos para que pasen a trabajar al departamento nuevo
-- 4) Borrar los departamentos que no tienen empleados
