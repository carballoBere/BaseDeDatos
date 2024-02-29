-- 1) Mostrar nombre y apellido de los empleados que ganan mas de 10000
-- ordenados desde el que gana mas al que gana menos
SELECT first_name as nombre, last_name as apellido ,salary as salario FROM employees 
WHERE salario > 10000
ORDER BY salario desc ;
-- 2) Mostrar nombre, apellido y email de los empleados que no tienen 
-- registrado el numero de telefono, ordenado alfabeticamente (apellido despues nombre)
SELECT first_name as nombre ,last_name as apellido, email FROM employees
WHERE phone_number IS NULL
ORDER BY apellido , nombre asc ;

-- 3) Mostrar departamento, direccion, ciudad, y pais de todos los departamentos,
-- ordenado según algún criterio
SELECT department_name as departamento ,street_address as direccion ,city as ciudad ,country_name as pais FROM departments de 
JOIN locations lo ON de.location_id = lo.location_id
JOIN countries co ON lo.country_id = co.country_id
ORDER BY pais asc ;
-- 4) Mostrar de cada puesto, cuantos empleados hay y el sueldo promedio
SELECT job_title as puesto,count(employee_id) as empleados,avg(salary) as salario FROM jobs j
JOIN employees e ON j.job_id = e.job_id
GROUP BY e.job_id
ORDER BY  empleados asc ;

-- 5) Agregar a la consulta (4) que solamente me muestre los puestos con
-- cuatro o mas empleados
SELECT DISTINCT job_title as puesto,count(employee_id) as empleados,avg(salary) as salario FROM jobs j
JOIN employees e ON j.job_id = e.job_id
GROUP BY e.job_id
HAVING empleados >= 4
ORDER BY  empleados asc ;
-- 6) Mostrar las 2 regiones con mas paises (de cada una mostrar el nombre y la cantidad
-- de paises que tiene)
SELECT region_name as regiones,count(country_id)as paises FROM regions r
JOIN countries c ON r.region_id = c.region_id
GROUP BY c.region_id
ORDER BY regiones asc limit 2;
