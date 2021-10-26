/*
uso de queries anidados
podemos usar queries anidados
*/

select * from payment
where amount > (
select amount from payment
where payment_id = 14);

/*
encontrar todos los film donde el promedio del rental_rate sea
superior al promedio del rental rate pero de todos los film ordenado
de forma ascendente del rental_rate
*/

select * from film
where rental_rate > (
	select avg(rental_rate) from film
)
order by rental_rate asc;