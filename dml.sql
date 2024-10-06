-- 1. Insertando datos en la tabla 'MUNICIPALIDAD' (Dirección corregida para Santiago)
INSERT INTO municipalidad (id_municipalidad, nombre, direccion, region)
VALUES (1, 'Municipalidad de Santiago', 'Calle Central 123', 'Región Metropolitana');

INSERT INTO municipalidad (id_municipalidad, nombre, direccion, region)
VALUES (2, 'Municipalidad de Providencia', 'Av. Providencia 456', 'Región Metropolitana');

INSERT INTO municipalidad (id_municipalidad, nombre, direccion, region)
VALUES (3, 'Municipalidad de Ñuñoa', 'Av. Irarrázaval 789', 'Región Metropolitana');

INSERT INTO municipalidad (id_municipalidad, nombre, direccion, region)
VALUES (4, 'Municipalidad de Las Condes', 'Av. Apoquindo 101', 'Región Metropolitana');

-- 2. Insertando datos en la tabla 'CUENTA_BANCARIA'
INSERT INTO cuenta_bancaria (id_cuenta_bancaria, numero_cuenta, tipo_cuenta, titular, banco)
VALUES (1, '001122334455', 'Corriente', '234567890-1', 'Banco de Chile');

INSERT INTO cuenta_bancaria (id_cuenta_bancaria, numero_cuenta, tipo_cuenta, titular, banco)
VALUES (2, '001122334466', 'Ahorro', '345678901-2', 'Banco Santander');

INSERT INTO cuenta_bancaria (id_cuenta_bancaria, numero_cuenta, tipo_cuenta, titular, banco)
VALUES (3, '001122334477', 'Corriente', '456789012-3', 'Banco Estado');

INSERT INTO cuenta_bancaria (id_cuenta_bancaria, numero_cuenta, tipo_cuenta, titular, banco)
VALUES (4, '001122334488', 'Ahorro', '567890123-4', 'Banco BCI');

-- 3. Insertando datos en la tabla 'DIRECTOR' (Antes que 'Academia')
INSERT INTO director (rut, nombre, fecha_incio_cargo, fecha_fin_cargo, id_academia, id_cuenta_bancaria)
VALUES ('234567890-1', 'Pedro Pérez', TO_DATE('2023-01-01', 'YYYY-MM-DD'), NULL, 1, 1);

INSERT INTO director (rut, nombre, fecha_incio_cargo, fecha_fin_cargo, id_academia, id_cuenta_bancaria)
VALUES ('345678901-2', 'Ana López', TO_DATE('2022-06-15', 'YYYY-MM-DD'), NULL, 2, 2);

INSERT INTO director (rut, nombre, fecha_incio_cargo, fecha_fin_cargo, id_academia, id_cuenta_bancaria)
VALUES ('456789012-3', 'Claudio Martínez', TO_DATE('2022-08-10', 'YYYY-MM-DD'), NULL, 3, 3);

INSERT INTO director (rut, nombre, fecha_incio_cargo, fecha_fin_cargo, id_academia, id_cuenta_bancaria)
VALUES ('567890123-4', 'Marcela Gutiérrez', TO_DATE('2023-05-01', 'YYYY-MM-DD'), NULL, 4, 4);

-- 4. Insertando datos en la tabla 'ACADEMIA' (Después de insertar en 'Director')
INSERT INTO academia (rut, nombre, tipo_academia, direccion, telefono, correo_electronico, id_municipalidad, director_rut)
VALUES ('123456789-0', 'Academia de Danza Santiago', 'Danza', 'Calle Central 567', '987654321', 'contacto@academiadanza.cl', 1, '234567890-1');

INSERT INTO academia (rut, nombre, tipo_academia, direccion, telefono, correo_electronico, id_municipalidad, director_rut)
VALUES ('987654321-0', 'Academia de Música Providencia', 'Música', 'Calle Norte 789', '123456789', 'contacto@academiamusica.cl', 2, '345678901-2');

INSERT INTO academia (rut, nombre, tipo_academia, direccion, telefono, correo_electronico, id_municipalidad, director_rut)
VALUES ('654987321-9', 'Academia de Teatro Ñuñoa', 'Teatro', 'Calle Sur 111', '456789123', 'contacto@academiateatro.cl', 3, '456789012-3');

INSERT INTO academia (rut, nombre, tipo_academia, direccion, telefono, correo_electronico, id_municipalidad, director_rut)
VALUES ('321654987-7', 'Academia de Pintura Las Condes', 'Pintura', 'Calle Este 222', '789123456', 'contacto@academiapintura.cl', 4, '567890123-4');

-- 5. Insertando datos en la tabla 'PROFESOR'
INSERT INTO profesor (rut, nombre, apellido, tipo_contrato, sueldo, obligaciones_legales, id_cuenta_bancaria)
VALUES ('456789012-3', 'Laura', 'González', 'Honorarios', 800000, 'Contrato temporal', 2);

INSERT INTO profesor (rut, nombre, apellido, tipo_contrato, sueldo, obligaciones_legales, id_cuenta_bancaria)
VALUES ('567890123-4', 'Carlos', 'Méndez', 'Planta', 1500000, 'Contrato indefinido', 1);

INSERT INTO profesor (rut, nombre, apellido, tipo_contrato, sueldo, obligaciones_legales, id_cuenta_bancaria)
VALUES ('678901234-5', 'María', 'Contreras', 'Honorarios', 950000, 'Contrato temporal', 3);

INSERT INTO profesor (rut, nombre, apellido, tipo_contrato, sueldo, obligaciones_legales, id_cuenta_bancaria)
VALUES ('789012345-6', 'Jorge', 'Martínez', 'Planta', 1700000, 'Contrato indefinido', 4);

-- 6. Insertando datos en la tabla 'PROYECTO'
INSERT INTO proyecto (id_proyecto, nombre_proyecto, fecha_inicio, fecha_termino, monto_financiamiento)
VALUES (1, 'Proyecto de Danza 2024', TO_DATE('2024-01-01', 'YYYY-MM-DD'), TO_DATE('2024-12-31', 'YYYY-MM-DD'), 10000000);

INSERT INTO proyecto (id_proyecto, nombre_proyecto, fecha_inicio, fecha_termino, monto_financiamiento)
VALUES (2, 'Festival de Música 2024', TO_DATE('2024-02-15', 'YYYY-MM-DD'), TO_DATE('2024-08-30', 'YYYY-MM-DD'), 5000000);

INSERT INTO proyecto (id_proyecto, nombre_proyecto, fecha_inicio, fecha_termino, monto_financiamiento)
VALUES (3, 'Teatro en la Comunidad 2024', TO_DATE('2024-03-01', 'YYYY-MM-DD'), TO_DATE('2024-10-01', 'YYYY-MM-DD'), 8000000);

INSERT INTO proyecto (id_proyecto, nombre_proyecto, fecha_inicio, fecha_termino, monto_financiamiento)
VALUES (4, 'Pintura Urbana 2024', TO_DATE('2024-04-01', 'YYYY-MM-DD'), TO_DATE('2024-11-30', 'YYYY-MM-DD'), 4000000);

-- 7. Insertando datos en la tabla 'PARTICIPACION_PROYECTOS'
INSERT INTO participacion_proyectos (id_participacion, rut_academia, id_proyecto, fecha_inscripcion, estado_proyecto)
VALUES (1, '123456789-0', 1, TO_DATE('2023-12-01', 'YYYY-MM-DD'), 'Activo');

INSERT INTO participacion_proyectos (id_participacion, rut_academia, id_proyecto, fecha_inscripcion, estado_proyecto)
VALUES (2, '987654321-0', 2, TO_DATE('2024-01-05', 'YYYY-MM-DD'), 'Activo');

INSERT INTO participacion_proyectos (id_participacion, rut_academia, id_proyecto, fecha_inscripcion, estado_proyecto)
VALUES (3, '654987321-9', 3, TO_DATE('2024-02-01', 'YYYY-MM-DD'), 'Pendiente');

INSERT INTO participacion_proyectos (id_participacion, rut_academia, id_proyecto, fecha_inscripcion, estado_proyecto)
VALUES (4, '321654987-7', 4, TO_DATE('2024-02-10', 'YYYY-MM-DD'), 'Pendiente');

-- 8. Insertando datos en la tabla 'TURNO_PROFESORES'
INSERT INTO turno_profesores (id_turno, rut_profesor, rut_academia, horario, duracion)
VALUES (1, '456789012-3', '123456789-0', 'Lunes 08:00-10:00', TO_DATE('2024-06-01', 'YYYY-MM-DD'));

INSERT INTO turno_profesores (id_turno, rut_profesor, rut_academia, horario, duracion)
VALUES (2, '567890123-4', '987654321-0', 'Martes 10:00-12:00', TO_DATE('2024-06-01', 'YYYY-MM-DD'));

INSERT INTO turno_profesores (id_turno, rut_profesor, rut_academia, horario, duracion)
VALUES (3, '678901234-5', '654987321-9', 'Miércoles 14:00-16:00', TO_DATE('2024-06-01', 'YYYY-MM-DD'));

INSERT INTO turno_profesores (id_turno, rut_profesor, rut_academia, horario, duracion)
VALUES (4, '789012345-6', '321654987-7', 'Jueves 16:00-18:00', TO_DATE('2024-06-01', 'YYYY-MM-DD'));