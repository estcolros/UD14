CREATE TABLE Estacion (
Identificador int NOT NULL AUTO_INCREMENT, 
Latitud int NOT NULL,
Longitud int NOT NULL,
Altitud int NOT NULL ,
PRIMARY KEY (Identificador) 
);

CREATE TABLE Muestra (
IdMuestra int,
IdentificadorEstacion int,
Fecha date, 
TempMin int, 
TempMax int, 
Precipitaciones boolean,
HumedadMin int, 
HumedadMax int, 
VelVientoMin int, 
VelVientoMAx int,
PRIMARY KEY (IdMuestra),
FOREIGN KEY (IdentificadorEstacion) REFERENCES Estacion(Identificador)
ON DELETE CASCADE ON UPDATE CASCADE
 );