/*
uso de ifnull y coalesce en sql
uso de bd Sakila
*/

-- uso de IFNULL
SELECT 
	first_name,
    ifnull(parent_id, 'Sin familiar')
FROM customer;

-- uso de COALESCE
-- a diferencia de ifnull, este valida que dos columnas ambos cumplan
-- una condicion que ambas sean verdaderas o falsas, si una u otra es distinta
-- entonces no cumple la condicion
select
	address,
    coalesce(postal_code, address2, 'Sin Address 2 y postal code')
from address;

/*
ejercicio
mostrar los customer con el monto de cada pago realizado
en caso de no tener pagos mostrar el mensaje "sin pagos"
*/

select
	c.first_name,
    coalesce(p.customer_id, p.amount, 'Sin Pagos')
from customer c
left join payment p using(customer_id);

select
	concat(c.first_name, ' ', c.last_name),
    ifnull(p.amount, 'Sin Pagos')
from customer c
left join payment p using(customer_id);