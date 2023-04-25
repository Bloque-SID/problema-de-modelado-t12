CREATE TABLE RazaMonstruo (
    IdRazaMonstruo NUMBER(10) PRIMARY KEY,
    Nombre VARCHAR2(50) NOT NULL
);

CREATE TABLE RazaPersonaje (
    IdRazaPersonaje NUMBER(10) PRIMARY KEY,
    Nombre VARCHAR2(50) NOT NULL
);

CREATE TABLE Personaje (
  Nombre VARCHAR2(50) NOT NULL,
  IdPersonaje NUMBER(10) NOT NULL,
  IdRazaPersonaje NUMBER(10) NOT NULL,
  CONSTRAINT PK_Personaje PRIMARY KEY (IdPersonaje),
  CONSTRAINT FK_Personaje_Raza FOREIGN KEY (IdRazaPersonaje) REFERENCES RazaPersonaje (IdRazaPersonaje)
);

CREATE TABLE Habilidad (
  Nombre VARCHAR2(50) NOT NULL,
  Descripcion VARCHAR2(200),
  Tipo VARCHAR2(20) NOT NULL,
  IdHabilidad NUMBER(10) NOT NULL,
  CONSTRAINT PK_Habilidad PRIMARY KEY (IdHabilidad)
);



CREATE TABLE Monstruo (
  IdMonstruo NUMBER(10) NOT NULL,
  Descripcion VARCHAR2(200),
  Nombre VARCHAR2(50) NOT NULL,
  Nivel NUMBER(3) NOT NULL,
  IdRazaMonstruo NUMBER(10) NOT NULL,
  CONSTRAINT PK_Monstruo PRIMARY KEY (IdMonstruo),
  CONSTRAINT FK_RazaMonstruo FOREIGN KEY (IdRazaMonstruo) REFERENCES RazaMonstruo(IdRazaMonstruo)
);

CREATE TABLE Mision (
    IdMision NUMBER(10) PRIMARY KEY,
    Nombre VARCHAR2(50) NOT NULL,
    Recompensa VARCHAR2(100) NOT NULL
);

CREATE TABLE Objetivos (
    IdObjetivo NUMBER(10) PRIMARY KEY,
    Nombre VARCHAR2(50) NOT NULL,
    Descripcion VARCHAR2(100) NOT NULL,
    Dificultad NUMBER(2) NOT NULL,
    Progreso NUMBER(3) NOT NULL,
    Estado VARCHAR2(20) NOT NULL
);

CREATE TABLE Clase (
    IdClase NUMBER(10) PRIMARY KEY,
    Nombre VARCHAR2(50) NOT NULL
);

CREATE TABLE Caracteristica (
    IdCaracteristica NUMBER(10) PRIMARY KEY,
    Nombre VARCHAR2(50) NOT NULL,
    Tipo VARCHAR2(50) NOT NULL,
    Valor NUMBER(10) NOT NULL
);

CREATE TABLE Mascota (
    IdMascota NUMBER(10) PRIMARY KEY,
    Nombre VARCHAR2(50) NOT NULL,
    Tipo VARCHAR2(50) NOT NULL,
    Nivel NUMBER(10) NOT NULL,
    IdPersonaje NUMBER(10) NOT NULL,
    CONSTRAINT fk_mascota_personaje FOREIGN KEY (IdPersonaje)
        REFERENCES Personaje(IdPersonaje)
);

CREATE TABLE Objeto (
  IdPersonaje NUMBER,
  Nombre VARCHAR2(50),
  Descripcion VARCHAR2(200),
  Tipo VARCHAR2(20),
  Cantidad NUMBER,
  CONSTRAINT pk_Objeto PRIMARY KEY (IdPersonaje, Nombre),
  CONSTRAINT fk_Objeto_Personaje FOREIGN KEY (IdPersonaje) REFERENCES Personaje(IdPersonaje)
);

CREATE TABLE PersonajeClases (
    IdPersonaje INT,
    IdClase INT,
    Nivel INT,
    CONSTRAINT PK_PersonajeClases PRIMARY KEY (IdPersonaje, IdClase),
    CONSTRAINT FK_PersonajeClases_Personaje FOREIGN KEY (IdPersonaje) REFERENCES Personaje(IdPersonaje),
    CONSTRAINT FK_PersonajeClases_Clase FOREIGN KEY (IdClase) REFERENCES Clase(IdClase)
);

CREATE TABLE CaracteristicasClase (
  IdClase INT,
  IdCaracteristica INT,
  PRIMARY KEY (IdClase, IdCaracteristica),
  FOREIGN KEY (IdClase) REFERENCES Clase(IdClase),
  FOREIGN KEY (IdCaracteristica) REFERENCES Caracteristica(IdCaracteristica)
);

CREATE TABLE CaracteristicasRazaMonstruo (
  IdRazaMonstruo NUMBER,
  IdCaracteristica NUMBER,
  PRIMARY KEY (IdRazaMonstruo, IdCaracteristica),
  FOREIGN KEY (IdRazaMonstruo) REFERENCES RazaMonstruo(IdRazaMonstruo),
  FOREIGN KEY (IdCaracteristica) REFERENCES Caracteristica(IdCaracteristica)
);

CREATE TABLE CaracteristicasRazaPersonaje (
  IdRazaPersonaje INT,
  IdCaracteristica INT,
  PRIMARY KEY (IdRazaPersonaje, IdCaracteristica),
  FOREIGN KEY (IdRazaPersonaje) REFERENCES RazaPersonaje(IdRazaPersonaje),
  FOREIGN KEY (IdCaracteristica) REFERENCES Caracteristica(IdCaracteristica)
);

CREATE TABLE PersonajeHabilidad (
  IdPersonaje  INT NOT NULL,
  IdHabilidad  INT NOT NULL,
  Nivel        INT,
  CONSTRAINT PK_PersonajeHabilidad PRIMARY KEY (IdPersonaje, IdHabilidad),
  CONSTRAINT FK_PersonajeHabilidad_Personaje FOREIGN KEY (IdPersonaje)
    REFERENCES Personaje(IdPersonaje),
  CONSTRAINT FK_PersonajeHabilidad_Habilidad FOREIGN KEY (IdHabilidad)
    REFERENCES Habilidad(IdHabilidad)
);

CREATE TABLE MonstruoHabilidad (
    IdMonstruo NUMBER NOT NULL,
    IdHabilidad NUMBER NOT NULL,
    Nivel NUMBER NOT NULL,
    CONSTRAINT PK_MonstruoHabilidad PRIMARY KEY (IdMonstruo, IdHabilidad),
    CONSTRAINT FK_MonstruoHabilidad_Monstruo FOREIGN KEY (IdMonstruo)
        REFERENCES Monstruo(IdMonstruo),
    CONSTRAINT FK_PMonstruoHabilidad_Habilidad FOREIGN KEY (IdHabilidad)
        REFERENCES Habilidad(IdHabilidad)
);

CREATE TABLE PersonajeMonstruos (
    IdPersonaje NUMBER,
    IdMonstruo NUMBER,
    Cantidad NUMBER,
    CONSTRAINT pk_PersonajeMonstruos PRIMARY KEY (IdPersonaje, IdMonstruo),
    CONSTRAINT fk_PersonajeMonstruos_Personaje FOREIGN KEY (IdPersonaje) REFERENCES Personaje (IdPersonaje),
    CONSTRAINT fk_PersonajeMonstruos_Monstruo FOREIGN KEY (IdMonstruo) REFERENCES Monstruo (IdMonstruo)
);

CREATE TABLE RealizarMision (
  IdPersonaje INT NOT NULL,
  IdMision INT NOT NULL,
  IdObjetivo INT NOT NULL,
  FechaRealizacion DATE,
  PRIMARY KEY (IdPersonaje, IdMision, IdObjetivo),
  FOREIGN KEY (IdPersonaje) REFERENCES Personaje(IdPersonaje),
  FOREIGN KEY (IdMision) REFERENCES Mision(IdMision),
  FOREIGN KEY (IdObjetivo) REFERENCES Objetivos(IdObjetivo)
);