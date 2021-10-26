/*
uso de in y not in en sql
*/

select * from customer
where customer_id in (
	select customer_id from payment
    where amount > 10
);

select * from customer
where customer_id not in (
	select customer_id from payment
);

/*
mostrar todas las ciudades en donde no exista una
direccion 
*/

select * from city
where city_id not in (
	select city_id from address
);