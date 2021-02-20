CREATE TABLE Cientificos (
DNI VARCHAR(8),
NomApels NVARCHAR (255),
PRIMARY KEY (DNI)
);

CREATE TABLE Proyecto (
Id char(4),
Nombre NVARCHAR (255),
Horas INT,
PRIMARY KEY (Id)
);

CREATE TABLE Asignado_A (
Cientifico VARCHAR(8),
Proyecto CHAR (4),
PRIMARY KEY (Cientifico,Proyecto),
FOREIGN KEY (Cientifico) REFERENCES Cientificos(DNI),
FOREIGN KEY (Proyecto) REFERENCES Proyecto(Id)
ON DELETE CASCADE ON UPDATE CASCADE
);


