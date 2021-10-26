/*
mandar parametros en procedimientos almacenados en sql
*/

drop procedure if exists get_films_by_year;
DELIMITER $$
create procedure get_films_by_year
(
	-- colocamos los parametros de entrada
    -- definimos la variable y el tipo de dato que recibira
    release_year int
)
begin
	/*
    hacemos un select de film donde el valor de la columna "release_year"
    sea igual al valor que le mandaremos como parametro definido
    a la hora de crear el procedimiento almacenado
    */
	select * from film f
    where f.release_year = release_year;
end$$
DELIMITER ;