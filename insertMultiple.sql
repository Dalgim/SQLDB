/*
insertar multiples registros en una tabla
para insertar multiples registros sin necesidad de repetir el codigo
"insert into... values..." sql te ofrece una forma mas sencilla de manejarlo

es importante especificar los campos de la tabla a donde va dirigidas las 
inserciones insert into actor (first_name, last_name) 

usando bd sakila
*/

insert into actor (first_name, last_name)
values('MARCOS', 'PEREZ'),('LUIS', 'JIMENEZ'),('JHON', 'DOE');

/*
ejercicio 
ingresa en la tabla language agrega dos lenguajes, russian y arabic
*/

insert into sakila.language(name)
values('Russian'),
	  ('Arabic');