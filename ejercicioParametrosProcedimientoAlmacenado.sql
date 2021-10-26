/*
ejercicio de procedimientos almacenados con parametros
crea un procedimiento llamado "get_customer_by_city"
con el que obtengamos todos los customer por ciudad, es decir
envia por parametro el valor de la columna city
*/

drop procedure if exists get_customer_by_city;
DELIMITER $$
create procedure get_customer_by_city
(
	city varchar(50)
)
begin
	select
		c.customer_id,
		concat(c.first_name, ' ', c.last_name) as nombre,
		ci.city
	from customer c
	join address a using(address_id)
	left join city ci using(city_id)
	where ci.city = city;
end$$
DELIMITER ;