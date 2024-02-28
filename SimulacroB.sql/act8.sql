--Mostrar nombre y apellido y cantidad de hijos de los 5 empleados/as que tengan mayor cantidad.
SELECT em.first_name as nombre , em.last_name as apellido ,count(*) as hijos FROM employees em
JOIN dependents de ON em.employee_id = de.employee_id
WHERE relationship LIKE 'child'
GROUP BY em.employee_id
ORDER BY hijos desc limit 5;