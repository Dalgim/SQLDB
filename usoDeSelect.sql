USE employees;

-- Una forma de obtener los datos
SELECT * FROM employees.salaries;

-- Otra forma
SELECT * FROM departments;

-- otra forma cambiando el *
SELECT dept_name from departments;

-- otra forma usando where
SELECT * FROM salaries WHERE salary >= 60000;

-- podemos obtener mas de un dato y hacer operaciones matematicas
SELECT
	salaries.emp_no,
	salaries.salary + 10,
    salaries.from_date
FROM salaries;

-- podemos crear campos calculados
SELECT
	salaries.emp_no,
	salaries.salary + 10,
    salaries.from_date,
    (salaries.salary + 10) * 3 AS Salario_Calculado
FROM salaries;

-- podemos concatenar dos campos en un nuevo campo
SELECT
	CONCAT(first_name, ' ', last_name) as FullName
FROM employees;

-- podemos tambien saber que datos no repetidos tenemos
-- usando DISTINCT
SELECT DISTINCT
	titles.title
FROM titles;