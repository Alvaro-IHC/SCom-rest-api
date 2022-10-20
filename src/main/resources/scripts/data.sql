-- Users
-- Admins
INSERT IGNORE INTO usuario (id_u, username, ap_paterno, ap_materno, nombre, email, contrasenia, direccion) VALUES (1, 'aihc', 'Huanca', 'Condori', 'Alvaro', 'alva0741@gmail.com', 'alvaro123', 'Zona: zona, Calle: calle');
INSERT IGNORE INTO administrador (id_u, salario, especialidad) VALUES (1, 40000, 'Admin');
-- Cashiers
INSERT IGNORE INTO usuario (id_u, username, ap_paterno, ap_materno, nombre, email, contrasenia, direccion) VALUES (2, 'cashier', '', '', 'Cashier', 'cashier@gmail.com', 'cashier', 'Zona: zona, Calle: calle');
INSERT IGNORE INTO cajero (id_u, salario, titulo) VALUES (2, 20000, 'lic');
-- Chefs
INSERT IGNORE INTO usuario (id_u, username, ap_paterno, ap_materno, nombre, email, contrasenia, direccion) VALUES (3, 'chef', '', '', 'chef', 'chef@gmail.com', 'chef', 'Zona: zona, Calle: calle');
INSERT IGNORE INTO chef (id_u, salario, especialidad, nacionalidad, cod_sanidad) VALUES (3, 20000, 'local', 'Boliviano', '15051ADC');
-- Waiters
INSERT IGNORE INTO usuario (id_u, direccion, email, ap_paterno, ap_materno, nombre, contrasenia,
                             username) VALUES (16, 'Zona: zona, Calle: calle', 'Liz@gmail.com',
                                               'choque', 'mamani', 'liz', 'waiter', 'waiter');
INSERT IGNORE INTO camarero(experiencia, cod_sanidad, salario, id_u) VALUES (3, 1875, 2030, 16);
INSERT IGNORE INTO usuario (id_u, direccion, email, ap_paterno, ap_materno, nombre, contrasenia,
                             username) VALUES (17, 'Zona: zona, Calle: calle', 'fidel@gmail.com',
                                             'Ramos', 'quispe', 'Fidel', 'waiter2', 'waiter2');
INSERT IGNORE INTO camarero(experiencia, cod_sanidad, salario, id_u) VALUES (3, 7845, 2030, 17);
INSERT IGNORE INTO usuario (id_u, direccion, email, ap_paterno, ap_materno, nombre, contrasenia,
                             username) VALUES (18, 'Zona: zona, Calle: calle', 'freddy@gmail.com',
                                             'condori', 'mamani', 'Freddy', 'waiter3', 'waiter3');
INSERT IGNORE INTO camarero(experiencia, cod_sanidad, salario, id_u) VALUES (4, 2254, 2030, 18);
INSERT IGNORE INTO usuario (id_u, direccion, email, ap_paterno, ap_materno, nombre, contrasenia,
                             username) VALUES (19, 'Zona: zona, Calle: calle', 'marta@gmail.com',
                                             'Colque', 'flores', 'Marta', 'waiter4', 'waiter4');
INSERT IGNORE INTO camarero(experiencia, cod_sanidad, salario, id_u) VALUES (2, 8045, 2030, 19);
INSERT IGNORE INTO usuario (id_u, direccion, email, ap_paterno, ap_materno, nombre, contrasenia,
                             username) VALUES (20, 'Zona: zona, Calle: calle', 'norma@gmail.com',
                                             'Mendoza', 'aliaga', 'Norma', 'waiter5', 'waiter5');
INSERT IGNORE INTO camarero(experiencia, cod_sanidad, salario, id_u) VALUES (1, 7369, 2030, 20);

-- Restaurant Tables
INSERT IGNORE INTO mesa (id_m, capacidad, numero, eliminado) VALUES (1, 4, '1', false);
INSERT IGNORE INTO mesa (id_m, capacidad, numero, eliminado) VALUES (2, 2, '2', false);
INSERT IGNORE INTO mesa (id_m, capacidad, numero, eliminado) VALUES (3, 4, '3', false);
INSERT IGNORE INTO mesa (id_m, capacidad, numero, eliminado) VALUES (4, 6, '4', false);
INSERT IGNORE INTO mesa (id_m, capacidad, numero, eliminado) VALUES (5, 6, '5', false);

-- Waiter >-< Table Relationship
INSERT IGNORE INTO atiende (id_camarero, id_mesa) VALUES (16, 1);
INSERT IGNORE INTO atiende (id_camarero, id_mesa) VALUES (17, 2);
INSERT IGNORE INTO atiende (id_camarero, id_mesa) VALUES (18, 3);
INSERT IGNORE INTO atiende (id_camarero, id_mesa) VALUES (19, 4);
INSERT IGNORE INTO atiende (id_camarero, id_mesa) VALUES (20, 5);

-- Images
INSERT IGNORE INTO imagen (id_i, nombre, public_id, url) VALUES (1, 'plato1', 'b3invzperhdljka3xbzw', 'http://res.cloudinary.com/dcm0rx3pb/image/upload/v1664934151/b3invzperhdljka3xbzw.jpg');
INSERT IGNORE INTO imagen (id_i, nombre, public_id, url) VALUES (2, 'plato2', 'u7vtvq6txfafxg09gseh', 'http://res.cloudinary.com/dcm0rx3pb/image/upload/v1664934208/u7vtvq6txfafxg09gseh.png');
INSERT IGNORE INTO imagen (id_i, nombre, public_id, url) VALUES (3, 'plato3', 'q7qipy0xjk0j8irk11dr', 'http://res.cloudinary.com/dcm0rx3pb/image/upload/v1664934222/q7qipy0xjk0j8irk11dr.jpg');
INSERT IGNORE INTO imagen (id_i, nombre, public_id, url) VALUES (4, 'bebida1', 'sevgcx66due0mfpzy6le', 'http://res.cloudinary.com/dcm0rx3pb/image/upload/v1664934233/sevgcx66due0mfpzy6le.jpg');
INSERT IGNORE INTO imagen (id_i, nombre, public_id, url) VALUES (5, 'bebida2', 'rj6k9bqiol16qa6gzagf', 'http://res.cloudinary.com/dcm0rx3pb/image/upload/v1664934242/rj6k9bqiol16qa6gzagf.jpg');
INSERT IGNORE INTO imagen (id_i, nombre, public_id, url) VALUES (6, 'bebida3', 'okjtdtunxowxjjmhr5yy', 'http://res.cloudinary.com/dcm0rx3pb/image/upload/v1664934252/okjtdtunxowxjjmhr5yy.jpg');

-- Foods
INSERT IGNORE INTO producto (id_p, disponible, eliminado, precio, id_imagen, descripcion) VALUES
                                             (1, true, false, 25.0, 1, 'descripcion');
INSERT IGNORE INTO plato (id_p, nombre, tipo) VALUES (1, 'Silpancho', 'Llano');
INSERT IGNORE INTO producto (id_p, disponible, eliminado, precio, id_imagen, descripcion) VALUES
                                             (2, true, false, 25.0, 2, 'descripcion');
INSERT IGNORE INTO plato (id_p, nombre, tipo) VALUES (2, 'Milanesa de pollo', 'Hondo');
INSERT IGNORE INTO producto (id_p, disponible, eliminado, precio, id_imagen, descripcion) VALUES
                                             (3, true, false, 25.0, 3, 'descripcion');
INSERT IGNORE INTO plato (id_p, nombre, tipo) VALUES (3, 'Aji de fideo', 'Llano');
-- Drinks
INSERT IGNORE INTO producto (id_p, disponible, eliminado, precio, id_imagen, descripcion) VALUES
                                             (4, true, false, 15.0, 4, 'descripcion');
INSERT IGNORE INTO bebida (id_p, grado_alcoholico, marca, volumen) VALUES (4, '0%', '7up', '2L');
INSERT IGNORE INTO producto (id_p, disponible, eliminado, precio, id_imagen, descripcion) VALUES
                                             (5, true, false, 20.0, 5, 'descripcion');
INSERT IGNORE INTO bebida (id_p, grado_alcoholico, marca, volumen) VALUES (5, '0%', 'Mendocina', '3L');
INSERT IGNORE INTO producto (id_p, disponible, eliminado, precio, id_imagen, descripcion) VALUES
                                             (6, true, false, 17.0, 6, 'descripcion');
INSERT IGNORE INTO bebida (id_p, grado_alcoholico, marca, volumen) VALUES (6, '0%', 'Coca-Cola', '1L');

-- Customers
INSERT IGNORE INTO usuario (id_u, direccion, email, ap_paterno, ap_materno, nombre, contrasenia,
                            username) VALUES (10, 'Zona: zona, Calle: calle', 'jorge@gmail.com', 'quispe', 'mamani', 'jorge', '1234', 'cliente1');
INSERT IGNORE INTO cliente (id_u, nit) VALUES (10, 20000);

INSERT IGNORE INTO usuario (id_u, direccion, email, ap_paterno, ap_materno, nombre, contrasenia,
                            username) VALUES (11, 'Zona: zona, Calle: calle', 'cege@gmail.com', 'lopez', 'mamani', 'cesar', '123', 'cliente2');
INSERT IGNORE INTO cliente (id_u, nit) VALUES (11, 20001);

INSERT IGNORE INTO usuario (id_u, direccion, email, ap_paterno, ap_materno, nombre, contrasenia,
                            username) VALUES (12, 'Zona: zona, Calle: calle', 'valge@gmail.com', 'quispe', 'mamani', 'valdez', '12', 'cliente3');
INSERT IGNORE INTO cliente (id_u, nit) VALUES (12, 20002);

INSERT IGNORE INTO usuario (id_u, direccion, email, ap_paterno, ap_materno, nombre, contrasenia,
                            username) VALUES (13, 'Zona: zona, Calle: calle', 'vicge@gmail.com', 'quispe', 'mamani', 'victor', '1111', 'cliente4');
INSERT IGNORE INTO cliente (id_u, nit) VALUES (13, 20003);

INSERT IGNORE INTO usuario (id_u, direccion, email, ap_paterno, ap_materno, nombre, contrasenia,
                            username) VALUES (14, 'Zona: zona, Calle: calle', 'marce@gmail.com', 'quispe', 'mamani', 'marco', '12345', 'cliente5');
INSERT IGNORE INTO cliente (id_u, nit) VALUES (14, 20004);

-- Bills
INSERT IGNORE INTO factura (id_f, id_cajero, id_cliente) VALUES (1, 2, 10);
INSERT IGNORE INTO factura (id_f, id_cajero, id_cliente) VALUES (2, 2, 10);
INSERT IGNORE INTO factura (id_f, id_cajero, id_cliente) VALUES (3, 2, 11);
INSERT IGNORE INTO factura (id_f, id_cajero, id_cliente) VALUES (4, 2, 11);
INSERT IGNORE INTO factura (id_f, id_cajero, id_cliente) VALUES (5, 2, 12);

-- Orders
INSERT IGNORE INTO pedido (id_pe, fecha, fecha_factura, entregado, preparado, confirmado,
                               id_factura, id_chef, id_cliente, id_mesa) VALUES (1, '2008-05-31
20:15:50', '2008-05-31 22:06:50', true, true, true, 1, 3, 10, 1);
INSERT IGNORE INTO pedido (id_pe, fecha, fecha_factura, entregado, preparado, confirmado,
                               id_factura, id_chef, id_cliente, id_mesa) VALUES (2, '2008-03-24
20:15:50', '2008-03-24 22:06:50', true, true, true, 2, 3, 10, 1);
INSERT IGNORE INTO pedido (id_pe, fecha, fecha_factura, entregado, preparado, confirmado,
                               id_factura, id_chef, id_cliente, id_mesa) VALUES (3, '2008-06-16
20:06:50', '2008-06-16 20:45:50', true, true, true, 3, 3, 11, 3);
INSERT IGNORE INTO pedido (id_pe, fecha, fecha_factura, entregado, preparado, confirmado,
                               id_factura, id_chef, id_cliente, id_mesa) VALUES (4, '2015-02-22
20:06:50', '2015-02-22 20:36:50', true, true, true, 4, 3, 11, 2);
INSERT IGNORE INTO pedido (id_pe, fecha, fecha_factura, entregado, preparado, confirmado,
                               id_factura, id_chef, id_cliente, id_mesa) VALUES (5, '2015-07-14
20:06:50', '2015-07-14 20:15:50', true, true, true, 5, 3, 12, 2);
INSERT IGNORE INTO pedido (id_pe, fecha, fecha_factura, entregado, preparado, confirmado,
                               id_factura, id_chef, id_cliente, id_mesa) VALUES (6, '2020-07-18
20:06:50', null, false, false, false, null, null, 11, 1);
INSERT IGNORE INTO pedido (id_pe, fecha, fecha_factura, entregado, preparado, confirmado,
                               id_factura, id_chef, id_cliente, id_mesa) VALUES (7, '2020-11-30
20:06:50', null, false, false, false, null, null, 13, 3);
INSERT IGNORE INTO pedido (id_pe, fecha, fecha_factura, entregado, preparado, confirmado,
                               id_factura, id_chef, id_cliente, id_mesa) VALUES (8, '2020-01-05
20:06:50', null, false, false, false, null, null, 14, 4);
INSERT IGNORE INTO pedido (id_pe, fecha, fecha_factura, entregado, preparado, confirmado,
                               id_factura, id_chef, id_cliente, id_mesa) VALUES (9, '2022-07-31
20:06:50', null, false, false, false, null, null, 10, 5);
INSERT IGNORE INTO pedido (id_pe, fecha, fecha_factura, entregado, preparado, confirmado,
                               id_factura, id_chef, id_cliente, id_mesa) VALUES (10, '2022-08-02
20:06:50', null, false, false, false, null, null, 13, 4);

-- Order >-< Product Relationship
INSERT IGNORE INTO tiene (id_pedido, id_producto, cantidad) VALUES (1, 1, 2);
INSERT IGNORE INTO tiene (id_pedido, id_producto, cantidad) VALUES (1, 2, 4);
INSERT IGNORE INTO tiene (id_pedido, id_producto, cantidad) VALUES (2, 2, 3);
INSERT IGNORE INTO tiene (id_pedido, id_producto, cantidad) VALUES (2, 3, 1);
INSERT IGNORE INTO tiene (id_pedido, id_producto, cantidad) VALUES (3, 1, 2);
INSERT IGNORE INTO tiene (id_pedido, id_producto, cantidad) VALUES (4, 4, 2);
INSERT IGNORE INTO tiene (id_pedido, id_producto, cantidad) VALUES (4, 5, 3);
INSERT IGNORE INTO tiene (id_pedido, id_producto, cantidad) VALUES (5, 1, 4);
INSERT IGNORE INTO tiene (id_pedido, id_producto, cantidad) VALUES (6, 2, 1);
INSERT IGNORE INTO tiene (id_pedido, id_producto, cantidad) VALUES (7, 5, 2);
INSERT IGNORE INTO tiene (id_pedido, id_producto, cantidad) VALUES (8, 2, 3);
INSERT IGNORE INTO tiene (id_pedido, id_producto, cantidad) VALUES (8, 3, 4);
INSERT IGNORE INTO tiene (id_pedido, id_producto, cantidad) VALUES (9, 4, 5);
INSERT IGNORE INTO tiene (id_pedido, id_producto, cantidad) VALUES (9, 2, 2);
INSERT IGNORE INTO tiene (id_pedido, id_producto, cantidad) VALUES (10, 1, 3);

-- Questions&Answers
INSERT IGNORE INTO preg_resp (id_pr, pregunta, respuesta, id_admin) VALUES (1,'¿Es posible pedir
platos con un mes de anticipación?','Si es posible hacerlo mediante nuestra aplicación móvil.',1);
INSERT IGNORE INTO preg_resp (id_pr, pregunta, respuesta, id_admin) VALUES (2,'¿En que horario
podemos comer o cenar en el restaurante?','Todos los días de 13:00 a 15:30h. Y por las noches,
viernes y sábado de 20:00h a 22:30h.',1);
INSERT IGNORE INTO preg_resp (id_pr, pregunta, respuesta, id_admin) VALUES (3,'¿Cuáles son las
medidas COVID-19 que debo conocer antes de acudir a las instalaciones?','El restaurante fue
preparado como un lugar seguro en cumplimiento de todas las medidas de prevención, los máximos
niveles de seguridad. Todo el centro se somete periódicamente a intervenciones de limpieza,
higiene y desinfección. La colaboración de los usuarios es fundamental de cara a garantizar la
efectividad de estas medidas.',1);

-- Mission&Vision
INSERT IGNORE INTO mis_vis(id_mv, fecha, mision, vision, id_admin) VALUES (1,'2022-02-02',
                                                                           'Superar las
expectativas de nuestros clientes de forma tal que nuestro nombre sea conocido como una
experiencia memorable. Ser opción destacable y diferente.','Ser reconocidos entre los mejores
restaurantes a nivel local y nacional por nuestra oferta gastronómica, ambiente y atención.',1);

-- Ingredients
INSERT IGNORE INTO ingrediente(nombre, precio, stock)
VALUES ('zanahoria',2.5,100);
INSERT IGNORE INTO ingrediente(nombre, precio, stock)
VALUES ('haba',1.2,25);
INSERT IGNORE INTO ingrediente(nombre, precio, stock)
VALUES ('tomate',3,70);
INSERT IGNORE INTO ingrediente(nombre, precio, stock)
VALUES ('morron',2.4,12);
INSERT IGNORE INTO ingrediente(nombre, precio, stock)
VALUES ('lechuga',3,30);
INSERT IGNORE INTO ingrediente(nombre, precio, stock)
VALUES ('pollo',15,20);
INSERT IGNORE INTO ingrediente(nombre, precio, stock)
VALUES ('huevo',0.7,200);