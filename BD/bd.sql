CREATE TABLE `ALUMNO` (
  `MATRICULA` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDO` varchar(50) NOT NULL,
  `CALIFICACIONES` float NOT NULL,
  PRIMARY KEY (`MATRICULA`)
) ;
CREATE TABLE `asignatura` (
  `codasignatura` varchar(10) NOT NULL,
  `asignatura` varchar(25) NOT NULL,
  `matricula` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codasignatura`),
  UNIQUE KEY `codasignatura_UNIQUE` (`codasignatura`)
);
CREATE TABLE `Colegio` (
  `id_colegio` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_colegio`)
) ;
CREATE TABLE `Docente` (
  `id_docente` int NOT NULL AUTO_INCREMENT,
  `codasignatura` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_docente`),
  KEY `codasignatura` (`codasignatura`),
  CONSTRAINT `Docente_ibfk_1` FOREIGN KEY (`codasignatura`) REFERENCES `asignatura` (`codasignatura`)
) ;
CREATE TABLE `nota` (
  `codnota` varchar(10) NOT NULL,
  `curso` varchar(25) NOT NULL,
  `calificacion` float NOT NULL DEFAULT '0',
  `observacion` text,
  PRIMARY KEY (`codnota`),
  UNIQUE KEY `codnota_UNIQUE` (`codnota`)
) ;
CREATE TABLE `tarea` (
  `codasignatura` varchar(10) NOT NULL,
  `codnota` varchar(15) NOT NULL,
  `descripcion` text,
  `fecha` date NOT NULL,
  PRIMARY KEY (`codasignatura`),
  UNIQUE KEY `codasignatura_UNIQUE` (`codasignatura`),
  KEY `codnota_idx` (`codnota`),
  CONSTRAINT `codasignatura` FOREIGN KEY (`codasignatura`) REFERENCES `asignatura` (`codasignatura`),
  CONSTRAINT `codnota` FOREIGN KEY (`codnota`) REFERENCES `nota` (`codnota`)
);
CREATE TABLE `Usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `n_usuario` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `contraseña` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `id_colegio` int DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `id_colegio` (`id_colegio`),
  CONSTRAINT `Usuario_ibfk_1` FOREIGN KEY (`id_colegio`) REFERENCES `Colegio` (`id_colegio`)
) ;