-- uso de JOIN en SQL (uso de BD SAKILA)
-- INNER JOIN, se puede realizar de dos maneras

-- usando directamente JOIN o colocando INNE JOIN es lo mismo
SELECT * 
FROM rental 
join customer
-- unimos los datos del customer mientras los id de ambas tablas coincida
ON rental.customer_id = customer.customer_id
order by customer.first_name;

-- podemos usar alias en los nombres de tabla (rental -> r, customer -> c )
SELECT rental_id, rental_date, r.customer_id, first_name, last_name
FROM rental r
join customer c
-- unimos los datos del customer mientras los id de ambas tablas coincida
ON r.customer_id = c.customer_id
order by c.first_name;

select a.address, c.city
from address a
join city c
on a.city_id = c.city_id
