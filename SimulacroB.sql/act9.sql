--Mostrar cual es el empleado con el tercer mejor sueldo.
SELECT first_name as empleado ,max_salary FROM employees em
JOIN jobs jo ON em.job_id = jo.job_id
ORDER BY empleado asc limit 1 offset 2;