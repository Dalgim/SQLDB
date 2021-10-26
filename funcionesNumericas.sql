/*
funciones numericas en sql
*/

-- ROUND, ROUND(numero, numero_de_decimales)
select round(4.67, 1);

-- TRUNCATE (trunca el numero hasta el digito indicado)
-- truncate(numero, numero de digitos a mostrar)
select truncate(4.67589423, 1);

-- CEILING muestra el numero que sigue despues del indicado
-- asi sea 4.1 mostrara un 5
select ceiling(4.658943265);

-- FLOOR, caso contrario a ceiling mostrara el numero
-- que esta debajo del numero indicado, asi sea 4.9, el numero
-- mostrado sera un 4
SELECT floor(4.658943265);

-- ABS muestra el numero absoluto de un numero, asi se anegativo
select abs(4.6);

-- RAND muestra un numero aleatorio
select rand();