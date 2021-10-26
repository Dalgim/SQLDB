/*
para eliminar un procedimiento se puede hacer de la siguiente forma

"DROP PROCEDURE (nombre_del_procedimiento)";

otra forma de eliminacion de forma segura seria la siguiente

"drop procedure if exists get_customer";

con ello, se elimina el procedimiento si existe ya para crear uno nuevo
y asi evitar problemas de ejecucion.
*/

-- drop procedure get_customer;

/*

DROP PROCEDURE IF EXISTS get_customer;
DELIMITER $$
CREATE PROCEDURE get_customer()
BEGIN
	SELECT * FROM customer;
END$$
DELIMITER ;

*/