/*
subquery con Select
podemos hacer subqueries dentro del select para obtener campos calculados de otras
tablas
uso de bd sakila
*/

select
	payment_id,
    amount,
    (
		-- hacemos una subquery para obtener dos columnas
        select max(amount) from payment
	) as payment_max,
	-- seleccionamos el campo calculado payment_max en una segunda subquery
    (select payment_max) - amount as difference
from payment;

/*
ejercicio
de la tabla customer mostrar todos los registros en una columna 
que no tengan hijo asociado y en otra mostrar todos los registros
que si tienen un parent_id
*/

select 
	concat(first_name, ' ', last_name) as Padre,
    (
		select concat(first_name, ' ', last_name)
        from customer ch
        where ch.parent_id = pc.customer_id
    ) as Hijo
from customer pc;
