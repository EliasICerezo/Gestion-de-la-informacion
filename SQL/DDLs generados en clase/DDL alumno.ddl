-- Generado por Oracle SQL Developer Data Modeler 4.1.5.907
--   en:        2017-10-11 11:24:17 CEST
--   sitio:      SQL Server 2012
--   tipo:      SQL Server 2012




CREATE
  TABLE Alumno
  (
    num_exp NUMERIC (28) NOT NULL ,
    Nombre  VARCHAR ,
    email   VARCHAR
  )
  ON "default"
GO
ALTER TABLE Alumno ADD CONSTRAINT Alumno_PK PRIMARY KEY CLUSTERED (num_exp)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE Asignatura
  (
    Codigo NUMERIC (28) NOT NULL ,
    Nombre VARCHAR
  )
  ON "default"
GO
ALTER TABLE Asignatura ADD CONSTRAINT Asignatura_PK PRIMARY KEY CLUSTERED (
Codigo)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE Estudia
  (
    Alumno_num_exp    NUMERIC (28) NOT NULL ,
    Asignatura_Codigo NUMERIC (28) NOT NULL
  )
  ON "default"
GO
ALTER TABLE Estudia ADD CONSTRAINT Estudia_PK PRIMARY KEY CLUSTERED (
Alumno_num_exp, Asignatura_Codigo)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

ALTER TABLE Estudia
ADD CONSTRAINT FK_ASS_1 FOREIGN KEY
(
Alumno_num_exp
)
REFERENCES Alumno
(
num_exp
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE Estudia
ADD CONSTRAINT FK_ASS_2 FOREIGN KEY
(
Asignatura_Codigo
)
REFERENCES Asignatura
(
Codigo
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO


-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             3
-- CREATE INDEX                             0
-- ALTER TABLE                              5
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE DATABASE                          0
-- CREATE DEFAULT                           0
-- CREATE INDEX ON VIEW                     0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE ROLE                              0
-- CREATE RULE                              0
-- CREATE SCHEMA                            0
-- CREATE SEQUENCE                          0
-- CREATE PARTITION FUNCTION                0
-- CREATE PARTITION SCHEME                  0
-- 
-- DROP DATABASE                            0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
