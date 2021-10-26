/*
uso de subquery en from
uso de bd sakila
*/

select 
	title,
    amount,
    payment_max,
    difference
from (
	select
		payment_id,
		amount,
        rental_id,
		(
			-- hacemos una subquery para obtener dos columnas
			select max(amount) from payment
		) as payment_max,
		-- seleccionamos el campo calculado payment_max en una segunda subquery
		(select payment_max) - amount as difference
	from payment
) as summary_payment
join rental using(rental_id)
join inventory using(inventory_id)
join film using(film_id)
where film.film_id = 1;

/*
ejercicio 
buscar todos los pagos por cliente que tengan al menos
mas de 40 pagos y que la suma total sea mayor de los pagos
de un cliente llamado CLARA SHAW

se requiere el nombre, amount, total de pagos, suma de pagos
*/

select 
	* 
from (
	select 
		customer_id,
		concat(first_name, ' ', last_name) as full_name,
		count(*) as total_payments,
		sum(amount) as sum_payments
	from payment
	join customer using(customer_id)
	group by customer_id, full_name
	having total_payments > 40 
) summary_payments
where summary_payments.sum_payments > (
	select sum(p.amount) as amount
    from payment p
    where p.customer_id = 144
)
order by total_payments desc;
