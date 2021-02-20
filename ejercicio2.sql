CREATE TABLE Tema (
ClaveTema SMALLINT NOT NULL,
Nombre VARCHAR (40),
PRIMARY KEY (ClaveTema) 
);

CREATE TABLE Autor (
ClaveAutor INT NOT NULL, 
Nombre VARCHAR (60),
PRIMARY KEY (ClaveAutor) 
);

CREATE TABLE Editorial (
ClaveEditorial SMALLINT NOT NULL,
Nombre VARCHAR (60),
Dirección VARCHAR (60),
Teléfono VARCHAR (15),
PRIMARY KEY (ClaveEditorial) 
);

CREATE TABLE Socio (
ClaveSocio INT NOT NULL,
Nombre VARCHAR (60),
Dirección VARCHAR (60),
Teléfono VARCHAR (15),
Categoria CHAR,
PRIMARY KEY (ClaveSocio)
);

CREATE TABLE Libro (
ClaveLibro INT NOT NULL, 
Titulo VARCHAR(60),
Idioma VARCHAR (15),
Formato VARCHAR (15),
ClaveEditorial SMALLINT,
PRIMARY KEY (ClaveLibro),
FOREIGN KEY (ClaveEditorial) REFERENCES Editorial(ClaveEditorial)
ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Ejemplar (
ClaveEjemplar INT NOT NULL,
ClaveLibro INT,
NúmeroOrden SMALLINT,
Edicion SMALLINT, 
Ubicacion VARCHAR (15),
Categoria CHAR,
PRIMARY KEY (ClaveEjemplar),
FOREIGN KEY (ClaveLibro) REFERENCES Libro(ClaveLibro)
ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Préstamo (
 ClaveSocio INT NOT NULL,
 ClaveEjemplar INT NOT NULL,
 NúmeroOrden SMALLINT,
 Fecha_prestamo DATE,
 Fecha_devolucion DATE,
 Notas BLOB,
FOREIGN KEY (ClaveSocio) REFERENCES Socio(ClaveSocio),
FOREIGN KEY (ClaveEjemplar) REFERENCES Ejemplar(ClaveEjemplar)
ON DELETE CASCADE ON UPDATE CASCADE
 );
 
 CREATE TABLE Trata_Sobre (
 ClaveLibro INT NOT NULL,
 ClaveTema SMALLINT,
FOREIGN KEY (ClaveLibro) REFERENCES Libro(ClaveLibro),
FOREIGN KEY (ClaveTema) REFERENCES Tema(ClaveTema)
ON DELETE CASCADE ON UPDATE CASCADE
 );
 
 CREATE TABLE Escrito_por (
 ClaveLibro INT NOT NULL,
 ClaveAutor INT NOT NULL,
FOREIGN KEY (ClaveLibro) REFERENCES Libro(ClaveLibro),
FOREIGN KEY (ClaveAutor) REFERENCES Autor(ClaveAutor)
ON DELETE CASCADE ON UPDATE CASCADE
 );
 
 
 