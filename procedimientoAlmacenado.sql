/*
uso de procedimientos almacenados en sql
para crear un procedimiento almacenado se usa la
palabra reservada "create procedure", seguida del nombre del 
procedimiento y uso de parentesis "()".

usamos despues la palabra reservada "begin" y dentro colocamos el
bloque de codigo que requiramos y la cerramos el bloque con la
palabra resevada "end"
*/

-- AGREGAMOS UN DELIMITADOR (VALIDO SOLO EN MYSQL)
DELIMITER $$
create procedure get_customer()
begin
	select
		*
	from customer;
end $$

DELIMITER ;

/*
este script se guardará en el apartado "stored procedures"
de la base de datos (en este caso sakila), al ejecutar, usaremos
la palabra reservada "call"... call sakila.get_customer()
*/