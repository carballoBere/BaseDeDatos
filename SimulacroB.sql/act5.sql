 --Mostrar nombre, apellido, departamento y salario de los empleados/as que cobren entre 9000 y 17000
 --ordenado por el criterio que quieran.
 SELECT first_name as nombre,last_name as apellido, salary as salario ,department_name as departamento FROM employees em
 JOIN departments dep ON em.department_id = dep.department_id
 WHERE salario BETWEEN 900 AND 17000
 ORDER BY nombre,apellido,salario asc ;