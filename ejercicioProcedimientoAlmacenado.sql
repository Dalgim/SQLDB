/*
ejercicio de procedimientos almacenados
crear un procedimiento almacenado que me muestre de la tabla film
los films de este año, al procedimiento lo vamos a lllamar
get_current_films()
*/

DELIMITER $$
CREATE PROCEDURE get_current_films()
	select 
		film_id,
		title,
		release_year as año
	from film
	where release_year = year(now());
end$$

DELIMITER ;