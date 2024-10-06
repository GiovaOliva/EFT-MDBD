-- Generado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   en:        2024-10-06 15:34:01 CLST
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g

CREATE TABLE academia (
    rut                VARCHAR2(12 BYTE) NOT NULL,
    nombre             VARCHAR2(100 BYTE) NOT NULL,
    tipo_academia      VARCHAR2(50 BYTE) NOT NULL,
    direccion          VARCHAR2(200 BYTE) NOT NULL,
    telefono           VARCHAR2(20 BYTE) NOT NULL,
    correo_electronico VARCHAR2(100 BYTE) NOT NULL,
    id_municipalidad   INTEGER NOT NULL,
    director_rut       VARCHAR2(12 BYTE) NOT NULL
);

ALTER TABLE academia ADD CONSTRAINT academia_pk PRIMARY KEY ( rut );

CREATE TABLE cuenta_bancaria (
    id_cuenta_bancaria INTEGER NOT NULL,
    numero_cuenta      VARCHAR2(20 BYTE) NOT NULL,
    tipo_cuenta        VARCHAR2(20 BYTE) NOT NULL,
    titular            VARCHAR2(12 BYTE) NOT NULL,
    banco              VARCHAR2(100 BYTE) NOT NULL
);

ALTER TABLE cuenta_bancaria ADD CONSTRAINT cuenta_bancaria_pk PRIMARY KEY ( id_cuenta_bancaria );

CREATE TABLE director (
    rut                VARCHAR2(12 BYTE) NOT NULL,
    nombre             VARCHAR2(100 BYTE) NOT NULL,
    fecha_incio_cargo  DATE NOT NULL,
    fecha_fin_cargo    DATE,
    id_academia        INTEGER NOT NULL,
    id_cuenta_bancaria INTEGER NOT NULL
);

ALTER TABLE director ADD CONSTRAINT director_pk PRIMARY KEY ( rut );

CREATE TABLE municipalidad (
    id_municipalidad INTEGER NOT NULL,
    nombre           VARCHAR2(100 BYTE) NOT NULL,
    direccion        VARCHAR2(200 BYTE) NOT NULL,
    region           VARCHAR2(100 BYTE) NOT NULL
);

ALTER TABLE municipalidad ADD CONSTRAINT municipalidad_pk PRIMARY KEY ( id_municipalidad );

CREATE TABLE participacion_proyectos (
    id_participacion  INTEGER NOT NULL,
    rut_academia      VARCHAR2(12 BYTE) NOT NULL,
    id_proyecto       INTEGER NOT NULL,
    fecha_inscripcion DATE NOT NULL,
    estado_proyecto   VARCHAR2(50 BYTE) NOT NULL
);

ALTER TABLE participacion_proyectos ADD CONSTRAINT participacion_proyectos_pk PRIMARY KEY ( id_participacion );

CREATE TABLE profesor (
    rut                  VARCHAR2(12 BYTE) NOT NULL,
    nombre               VARCHAR2(100 BYTE) NOT NULL,
    apellido             VARCHAR2(100 BYTE) NOT NULL,
    tipo_contrato        VARCHAR2(20 BYTE) NOT NULL,
    sueldo               INTEGER NOT NULL,
    obligaciones_legales CLOB NOT NULL,
    id_cuenta_bancaria   INTEGER NOT NULL
);

ALTER TABLE profesor ADD CONSTRAINT profesor_pk PRIMARY KEY ( rut );

CREATE TABLE proyecto (
    id_proyecto          INTEGER NOT NULL,
    nombre_proyecto      VARCHAR2(150 BYTE) NOT NULL,
    fecha_inicio         DATE NOT NULL,
    fecha_termino        DATE NOT NULL,
    monto_financiamiento INTEGER NOT NULL
);

ALTER TABLE proyecto ADD CONSTRAINT proyecto_pk PRIMARY KEY ( id_proyecto );

CREATE TABLE turno_profesores (
    id_turno     INTEGER NOT NULL,
    rut_profesor VARCHAR2(12 BYTE) NOT NULL,
    rut_academia VARCHAR2(12 BYTE) NOT NULL,
    horario      VARCHAR2(50 BYTE) NOT NULL,
    duracion     DATE NOT NULL
);

ALTER TABLE turno_profesores ADD CONSTRAINT turno_profesores_pk PRIMARY KEY ( id_turno );

ALTER TABLE academia
    ADD CONSTRAINT academia_director_fk FOREIGN KEY ( director_rut )
        REFERENCES director ( rut );

ALTER TABLE academia
    ADD CONSTRAINT academia_municipalidad_fk FOREIGN KEY ( id_municipalidad )
        REFERENCES municipalidad ( id_municipalidad );

ALTER TABLE director
    ADD CONSTRAINT director_cuenta_bancaria_fk FOREIGN KEY ( id_cuenta_bancaria )
        REFERENCES cuenta_bancaria ( id_cuenta_bancaria );

ALTER TABLE participacion_proyectos
    ADD CONSTRAINT participacion_academia_fk FOREIGN KEY ( rut_academia )
        REFERENCES academia ( rut );

ALTER TABLE participacion_proyectos
    ADD CONSTRAINT participacion_proyecto_fk FOREIGN KEY ( id_proyecto )
        REFERENCES proyecto ( id_proyecto );

ALTER TABLE profesor
    ADD CONSTRAINT profesor_cuenta_bancaria_fk FOREIGN KEY ( id_cuenta_bancaria )
        REFERENCES cuenta_bancaria ( id_cuenta_bancaria );

ALTER TABLE turno_profesores
    ADD CONSTRAINT turno_profesores_academia_fk FOREIGN KEY ( rut_academia )
        REFERENCES academia ( rut );

ALTER TABLE turno_profesores
    ADD CONSTRAINT turno_profesores_profesor_fk FOREIGN KEY ( rut_profesor )
        REFERENCES profesor ( rut );
