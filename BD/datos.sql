/* para las materia se tienen 7 basicas
  *matematica = MAT
  *quimica = QUIM
  *fisica = FIS
  *civica= CIV
  *informatica= INFO
  *ingles = INGL
  *sociales = SOCL */ 
  use G4P1_app_colegio;
CREATE TABLE ALUMNO(
	MATRICULA	INT(10)  AUTO_INCREMENT NOT NULL,
	NOMBRE 		VARCHAR(50) NOT NULL,
	APELLIDO		VARCHAR(50) NOT NULL,
	CALIFICACIONES 	FLOAT(10) NOT NULL,
      IDDOCENTE		VARCHAR(50) NOT NULL,
	PRIMARY KEY(MATRICULA),
	FOREIGN KEY (IDDOCENTE) REFERENCES Docente (id_docente));
    select * from ALUMNO;
    INSERT INTO ALUMNO VALUES (1,'MARIO','CASTRO', 6.2);
INSERT INTO ALUMNO VALUES (2,'JUAN','GONZALES', 6.9);
INSERT INTO ALUMNO VALUES (3, 'CAROLINA','BALLADARES', 5.4);
INSERT INTO ALUMNO VALUES (4,'JOSE','ANDRADE', 8.2);
INSERT INTO ALUMNO VALUES (5,'CATRINA','OLMOS',5.8);
INSERT INTO ALUMNO VALUES (6,'CHRISTIAN', 'SALAZAR', 7.6);
INSERT INTO ALUMNO VALUES (7,'PABLO','CALDERON', 4.6);
INSERT INTO ALUMNO VALUES (8, 'KIMBERLY','GARZON',8.5);
INSERT INTO ALUMNO VALUES (9,'JORDY','SAMPEDRO', 8.9);
INSERT INTO ALUMNO VALUES (10, 'FREDY','PINOS', 4.8);
INSERT INTO ALUMNO VALUES (11, 'JUANCARLOS','LAMPERTEGUI', 5.6);
INSERT INTO ALUMNO VALUES (12, 'LUIS','ATAUCHI', 8.6);
INSERT INTO ALUMNO VALUES (13, 'CAROLINA','FERNANDEZ', 7.3);
INSERT INTO ALUMNO VALUES (14, 'FERNANDA','VELTRAN', 6.1);
INSERT INTO ALUMNO VALUES (15, 'JEFFERSON','TERAN', 4.5);
INSERT INTO ALUMNO VALUES (16, 'HERNAN','GUERRERO', 6.9);
INSERT INTO ALUMNO VALUES (17, 'KATHERINE','MOYA', 7.5);
INSERT INTO ALUMNO VALUES (18, 'KARLA', 'TORRES', 8.5);
INSERT INTO ALUMNO VALUES (19, 'KARINA', 'GALVEZ', 6.3);
INSERT INTO ALUMNO VALUES (20, 'DIANA', 'PONCE',5.2);


  
  INSERT INTO asignatura VALUES ("QUIM1","QUIMICA",4),
  ("QUIM2","QUIMICA",4),("QUIM7","QUIMICA",4),
  ("QUIM3","QUIMICA",4),("QUIM6","QUIMICA",4),
  ("QUIM4","QUIMICA",4),("QUIM5","QUIMICA",4);
  INSERT INTO asignatura VALUES ("FIS1","FISICA",9),
  ("FIS2","FISICA",9),("FIS5","FISICA",9),
  ("FIS3","FISICA",9),("FIS6","FISICA",9),
  ("FIS4","FISICA",9),("FIS7","FISICA",9);
  INSERT INTO asignatura VALUES ("CIV1","CIVICA",13),
  ("CIV2","CIVICA",13),("CIV7","CIVICA",13),
  ("CIV3","CIVICA",13),("CIV6","CIVICA",13),
  ("CIV4","CIVICA",13),("CIV5","CIVICA",13);
  INSERT INTO asignatura VALUES ("INFO1","INFORMATICA",16),
  ("INFO2","INFORMATICA",16),("INFO7","INFORMATICA",16),
  ("INFO3","INFORMATICA",16),("INFO6","INFORMATICA",16),
  ("INFO4","INFORMATICA",16),("INFO5","INFORMATICA",16);
  
  INSERT INTO asignatura VALUES ("INGL1","INGLES",19),
  ("INGL2","INGLES",19),("INGL7","INGLES",19),
  ("INGL3","INGLES",19),("INGL6","INGLES",19),
  ("INGL4","INGLES",19),("INGL5","INGLES",19);
  INSERT INTO asignatura VALUES 
  ("SOCL1","SOCIALES",113),("SOCL6","SOCIALES",113),
  ("SOCL2","SOCIALES",113),("SOCL4","SOCIALES",113),
  ("SOCL3","SOCIALES",113),("SOCL5","SOCIALES",113);
  
  SELECT * FROM asignatura;
  
  INSERT INTO nota VALUES ("cod9","7mo",6,"deber incompleto"),
  ("cod3","10mo",10,"deber completo"),("cod6","8vo",6,"deber completo"),
  ("cod4","10mo",10,"deber completo"),("cod7","8vo",6,"deber incompleto"),
  ("cod5","10mo",6,"deber incompleto"),("cod8","8vo",6,"deber completo");
    INSERT INTO nota VALUES 
  ("cod21","7mo",8,"ser mas ordenado"),
  ("cod222","7mo",6,"incompleto"),("cod12","7mo",9,"ser mas ordenado"),
  ("cod23","7mo",8,"ser mas ordenado"),("cod22","7mo",5,"incompleto"),
  ("cod24","7mo",7,"incompleto"),("cod32","7mo",3,"incompleto");
  select * from nota;
  
  
  INSERT INTO tarea VALUES 
  ("INGL8","cod8","deber cumplido","2021/05/5");
  INSERT INTO tarea VALUES 
  ("CIV7","cod1","deber completo","2021/01/11");
 
 insert into Usuario values (1, "user01", "Floresta 3", "user01a", "user01@gmail.com", "Ariel", "Vélez", 1);
insert into Usuario values (2, "user02", "Vergeles", "user02a", "user02@gmail.com", "Karina", "Dumes", 1);
insert into Usuario values (3, "user03", "Guasmo Sur", "user03a", "user03@gmail.com", "Milena", "Flores", 1);
insert into Usuario values (4, "user04", "Florida", "user04a", "user04@gmail.com", "Priscila", "Suárez", 1);
insert into Usuario values (5, "user05", "Sauces 5", "user05a", "user05@gmail.com", "Carlos", "Vélez", 1);
insert into Usuario values (6, "user06", "Sauces 3", "user06a", "user06@gmail.com", "Diana", "Méndez", 1);
insert into Usuario values (7, "user07", "Santiaguito de Roldos", "user07a", "user07@gmail.com", "Diana", "Aguilera", 1);
insert into Usuario values (8, "user08", "Valdivia", "user08a", "user08@gmail.com", "Leandro", "Ruiz", 1);
insert into Usuario values (9, "user09", "El Recreo", "user09a", "user09@gmail.com", "César", "Carpio", 1);
insert into Usuario values (10, "user10", "Suburbio", "user10a", "user10@gmail.com", "Cecilia", "Pacheco", 1);
insert into Usuario values (11, "user11", "Portete la 38", "user11a", "user11@gmail.com", "Linda", "Tomalá", 1);
insert into Usuario values (12, "user12", "Guasmo Norte", "user12a", "user12@gmail.com", "Pablo", "Escobar", 1);
insert into Usuario values (13, "user13", "Guasmo Central", "user13a", "user13@gmail.com", "Luis", "Murillo", 1);
insert into Usuario values (14, "user14", "Floresta 1", "user14a", "user14@gmail.com", "Gina", "Vélez", 1);
insert into Usuario values (15, "user15", "Floresta 2", "user15a", "user15@gmail.com", "Ariel", "López", 1);
insert into Usuario values (16, "user16", "Guasmo Sur", "user16a", "user16@gmail.com", "Fernando", "Paredes", 1);
insert into Usuario values (17, "user17", "Floresta 3", "user17a", "user17@gmail.com", "David", "Perero", 1);
insert into Usuario values (18, "user18", "Vergeles", "user18a", "user18@gmail.com", "Steven", "Fernández", 1);
insert into Usuario values (19, "user19", "Barrio Centenario", "user19a", "user19@gmail.com", "Xavier", "Gómez", 1);
insert into Usuario values (20, "user20", "Samborondon", "user20a", "user20@gmail.com", "Gabriel", "González", 1);
insert into Docente values (1, "MAT");
insert into Docente values (2, "MAT");
insert into Docente values (3, "QUIM");
insert into Docente values (4, "QUIM");
insert into Docente values (5, "MAT");
insert into Docente values (6, "FIS");
insert into Docente values (7, "INGL");
insert into Docente values (8, "SOCL");
insert into Docente values (9, "SOCL");
insert into Docente values (10, "QUIM");
insert into Docente values (11, "FIS");
insert into Docente values (12, "CIV");
insert into Docente values (13, "FIS");
insert into Docente values (14, "QUIM");
insert into Docente values (15, "FIS");
insert into Docente values (16, "INGL");
insert into Docente values (17, "CIV");
insert into Docente values (18, "CIV");
insert into Docente values (19, "MAT");
insert into Docente values (20, "SOCL");
insert into Curso values (1, 2, 1);
insert into Curso values (2, 12, 2);
insert into Curso values (3, 2, 3);
insert into Curso values (4, 1, 4);
insert into Curso values (5, 2, 5);
insert into Curso values (6, 8, 6);
insert into Curso values (7, 9, 7);
insert into Curso values (8, 4, 8);
insert into Curso values (9, 3, 9);
insert into Curso values (10, 1, 10);
insert into Curso values (11, 5, 11);
insert into Curso values (12, 5, 12);
insert into Curso values (13, 7, 13);
insert into Curso values (14, 3, 14);
insert into Curso values (15, 3, 15);
insert into Curso values (16, 2, 16);
insert into Curso values (17, 4, 17);
insert into Curso values (18, 1, 18);
insert into Curso values (19, 1, 19);
insert into Curso values (20, 4, 20);
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  