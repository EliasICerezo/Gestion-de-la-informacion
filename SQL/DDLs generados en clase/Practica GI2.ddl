-- Generado por Oracle SQL Developer Data Modeler 4.1.5.907
--   en:        2017-10-17 13:18:01 CEST
--   sitio:      SQL Server 2012
--   tipo:      SQL Server 2012




CREATE
  TABLE Permiso
  (
    Pantalla VARCHAR (100) NOT NULL ,
    Acceso BIT NOT NULL ,
    Modificacion BIT NOT NULL
  )
  ON "default"
GO
ALTER TABLE Permiso ADD CONSTRAINT Permiso_PK PRIMARY KEY CLUSTERED (Pantalla)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE Relation_4
  (
    Rol_Rolname      VARCHAR (100) NOT NULL ,
    Permiso_Pantalla VARCHAR (100) NOT NULL
  )
  ON "default"
GO
ALTER TABLE Relation_4 ADD CONSTRAINT Relation_4_PK PRIMARY KEY CLUSTERED (
Rol_Rolname, Permiso_Pantalla)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE Rol
  (
    Rolname VARCHAR (100) NOT NULL ,
    admin BIT NOT NULL ,
    roldes VARCHAR (1500)
  )
  ON "default"
GO
CREATE UNIQUE NONCLUSTERED INDEX
Rol__IDX ON Rol
(
)
ON "default"
GO
ALTER TABLE Rol ADD CONSTRAINT Rol_PK PRIMARY KEY CLUSTERED (Rolname)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE Usuario
  (
    Username     VARCHAR (100) NOT NULL ,
    password     VARCHAR (100) NOT NULL ,
    email        VARCHAR (100) NOT NULL ,
    phone        NUMERIC (28) ,
    Rol_Rolname1 VARCHAR (100)
  )
  ON "default"
GO
CREATE UNIQUE NONCLUSTERED INDEX
Usuario__IDX ON Usuario
(
)
ON "default"
GO
ALTER TABLE Usuario ADD CONSTRAINT Usuario_PK PRIMARY KEY CLUSTERED (Username)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

ALTER TABLE Relation_4
ADD CONSTRAINT FK_ASS_5 FOREIGN KEY
(
Rol_Rolname
)
REFERENCES Rol
(
Rolname
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE Relation_4
ADD CONSTRAINT FK_ASS_6 FOREIGN KEY
(
Permiso_Pantalla
)
REFERENCES Permiso
(
Pantalla
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE Usuario
ADD CONSTRAINT Usuario_Rol_FKv1 FOREIGN KEY
(
Rol_Rolname1
)
REFERENCES Rol
(
Rolname
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO


-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             2
-- ALTER TABLE                              7
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
