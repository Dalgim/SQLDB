/*
uso de union en sql uso de bd sakila
union nos permite unir una o mas consultas, la condicion para hacer este tipo de consultas
es que deben de tener el mismo numero de campos
*/

SELECT
	title,
    release_year,
    'Nueva' as año
from sakila.film
where release_year = year(now())
UNION
SELECT
	title,
    release_year,
    'Antigua' as año
from sakila.film
where release_year != year(now());

/*
de la tabla customer hacer un union de los datos de quien
son padres y quien son hijos
*/

select
	concat(c.first_name, ' ', c.last_name) as custumer,
    'Padre' as Quien
from customer c
where parent_id is null
union
select
	concat(c.first_name, ' ', c.last_name) as custumer,
    'Hijo' as Quien
from customer c
where parent_id is not null