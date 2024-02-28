--Mostrar la cantidad promedio y la cantidad máxima de hijos por empleado.
SELECT AVG(cantHijos), max(cantHijos)
FROM (SELECT count(*) as cantHijos, em.first_name as empleado FROM employees em
JOIN dependents de ON em.employee_id = de.employee_id
GROUP BY em.employee_id
ORDER BY cantHijos asc)