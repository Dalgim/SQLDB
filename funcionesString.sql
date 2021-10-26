/*
funciones string en sql
*/

-- LENGTH (mide el tamaño de una cadena)
select length('Rodrigo');

-- UPPER (poner una cadena en mayusculas)
select upper('Rodrigo');

-- LOWER (poner una cadena en minusculas)
select lower('RODRIGO');

-- LTRIM (elimina espacios vacios ubicados al inicio)
-- a la izquierda de la cadena (lefttrim -> LTRIM)
select ltrim('    Rodrigo');

-- RTRIM (elimina espacios vacios al final de la cadena)
-- a la derecha de la cadena (righttrim -> RTRIM)
select rtrim('Rodrigo      ');

-- TRIM (elimina los espacios a la izquierda y derecha de una
-- cadena)
select trim('    Rodrigo   ');

-- LEFT (me muestra el numero de caracteres a la izquierda
-- que yo indique left('cadena', numero_de_caracteres_a_ver)
select left('Rojoazul', 4);

-- RIGHT (me muestra el numero de caracteres a la derecha
-- que yo indique right('cadena', numero_de_caracteres_a_ver)
select right('Rojoazul', 4);

-- SUBSTRING muestra una cadena en base a la posicion inicial
-- y cuantos caracteres quieres ver 
-- substring('cadena', posicion_inicial, num_caracteres_a_visualizar)
select substring('Rojoazulolo', 5, 6);

-- LOCATE me ayuda a saber la posicion de un caracter dado dentro de una
-- cadena locate('caracter', 'cadena_donde_buscar'), no es case sensitive
-- es decir, no distingue entre mayusculas y minusculas
select locate('z', 'rojoazul');

-- REPLACE reemplaza un valor por otro
-- replace ('cadena', 'valor_a_reemplazar', 'nuevo_valor')
select replace('rojoazul', 'rojo', 'blanco');

-- CONCAT concatena cadenas
select concat('Rojo', '-', 'azul');

