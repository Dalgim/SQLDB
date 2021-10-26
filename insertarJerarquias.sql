/*
insertar datos por medio de jerarquia
podemos insertar datos mediante jerarquia usando
last_insert_id()
*/

insert into city (country_id, city)
values (22, 'Santiago');

/*
Al hacer varias inserciones en vez de proporcionar un city_id
proporcionamos la funcion last_insert_id y con ello le decimos a sql
que estamos insertando el id 22 de la consulta anterior
*/

insert into address(
	address, district, city_id, phone)
values(
	'AV. ALESSANDRI',
    'LOS OLIVOS',
    last_insert_id(),
    '985654526'
),(
	'AV. 3 NORTE',
    'LOS ALMENDROS',
    last_insert_id(),
    '9856655478'
);

