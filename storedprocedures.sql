USE G4P1_app_colegio;
/* Insert, update y delete de la tabla Alumno */
DELIMITER |
CREATE PROCEDURE insertarAlumno (in nombre varchar(50), in apellido varchar(50), in calificaciones float) 
BEGIN
	INSERT INTO ALUMNO (NOMBRE, APELLIDO, CALIFICACIONES) VALUES (nombre, apellido, calificaciones);
END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE actualizarAlumno (in mat int, in nombre varchar(50), in apellido varchar(50), in calificaciones float) 
BEGIN
	UPDATE ALUMNO
    SET NOMBRE = nombre, APELLIDO = apellido, CALIFICACIONES = calificaciones
    WHERE MATRICULA = mat;
END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE eliminarAlumno (in mat int)
BEGIN
    DELETE FROM ALUMNO
    WHERE MATRICULA = mat;
END |
DELIMITER ;

/* Insert, update y delete de la tabla asignatura */
DELIMITER |
CREATE PROCEDURE insertarAsigantura (in cod varchar(10), in materia varchar(25), in mat varchar(45)) 
BEGIN
	INSERT INTO asignatura VALUES (cod, materia, mat);
END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE actualizarAsigantura (in cod varchar(10), in materia varchar(25), in mat varchar(45)) 
BEGIN
	UPDATE asignatura
    SET asignatura = materia, matricula = mat
    WHERE codasignatura = cod;
END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE eliminarAsignatura (in cod varchar(10))
BEGIN
    DELETE FROM asignatura
    WHERE codasignatura = cod;
END |
DELIMITER ;

/* Insert, update y delete de la tabla Colegio */
DELIMITER |
CREATE PROCEDURE insertarColegio (in nom varchar(50)) 
BEGIN
	INSERT INTO Colegio (nombre) VALUES (nom);
END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE actualizarColegio (in cod int, in nom varchar(50)) 
BEGIN
	UPDATE Colegio
    SET nombre = nom
    WHERE id_colegio = cod;
END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE eliminarColegio (in cod int)
BEGIN
    DELETE FROM Colegio
    WHERE id_colegio = cod;
END |
DELIMITER ;

/* Insert, update y delete de la tabla Curso */
DELIMITER |
CREATE PROCEDURE insertarCurso (in docente int, in mat int) 
BEGIN
	INSERT INTO Colegio (docente, matricula) VALUES (docente, mat);
END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE actualizarCurso (in cod int, in docente int, in mat int) 
BEGIN
	UPDATE Curso
    SET id_docente = docente, matricula = mat
    WHERE id_curso = cod;
END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE eliminarCurso (in cod int)
BEGIN
    DELETE FROM Curso
    WHERE id_curso = cod;
END |
DELIMITER ;

/* Insert, update y delete de la tabla Docente */
DELIMITER |
CREATE PROCEDURE insertarDocente (in asignatura varchar(50)) 
BEGIN
	INSERT INTO Docente (codasignatura) VALUES (asignatura);
END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE actualizarDocente (in cod int, in asignatura varchar(50)) 
BEGIN
	UPDATE Docente
    SET codasignatura = asignatura
    WHERE id_docente = cod;
END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE eliminarDocente (in cod int)
BEGIN
    DELETE FROM Docente
    WHERE id_docente = cod;
END |
DELIMITER ;

/* Insert, update y delete de la tabla Nota */
DELIMITER |
CREATE PROCEDURE insertarNota (in cod varchar(10), in curs varchar(25), cal float, obs text) 
BEGIN
	INSERT INTO nota (codnota, curso, calificacion, observacion) VALUES (cod, curs, cal, obs);
END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE actualizarNota (in cod varchar(10), in curs varchar(25), in cal float, in obs text) 
BEGIN
	UPDATE nota
    SET curso = curs, calificacion = cal, observacion = obs
    WHERE codnota = cod;
END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE eliminarNota (in cod varchar(10))
BEGIN
    DELETE FROM nota
    WHERE codnota = cod;
END |
DELIMITER ;

/* Insert, update y delete de la tabla Tarea */
DELIMITER |
CREATE PROCEDURE insertarTarea (in cod varchar (10), in cod1 varchar(25), in descr text, in fec date) 
BEGIN
	INSERT INTO tarea (codasignatura, codnota, descripcion, fecha) VALUES (cod, cod1, descr, fec);
END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE actualizarTarea (in cod varchar (10), in cod1 varchar(25), in descr text, in fec date)
BEGIN
	UPDATE tarea
    SET codasignatura = cod, codnota = cod1, descripcion = descr, fecha = fec
    WHERE codasignatura = cod;
END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE eliminarTarea (in cod varchar(10))
BEGIN
	DELETE FROM tarea
    WHERE codasignatura = cod;
END |
DELIMITER ;

/* Insert, update y delete de la tabla Usuario */
DELIMITER |
CREATE PROCEDURE insertarUsuario (in usern varchar(50), in dir varchar(50), in pass varchar(50),
in correo varchar(50), in n varchar(50), in a varchar(50)) 
BEGIN
	INSERT INTO Usuario (n_usuario, direccion, contraseña, email, nombre, apellido) 
    VALUES (usern, dir, pass, correo, n, a);
END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE actualizarUsuario (in cod int, in usern varchar(50), in dir varchar(50), in pass varchar(50),
in correo varchar(50), in n varchar(50), in a varchar(50)) 
BEGIN
	UPDATE Usuario
    SET n_usuario = usern, direccion = dir, contraseña = pass, email = correo, nombre = n, apellido = a
    WHERE id_usuario = cod;
END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE eliminarUsuario (in cod int)
BEGIN
	DELETE FROM Usuario
    WHERE id_usuario = cod;
END |
DELIMITER ;

/* Ingreso al sistema */
DELIMITER |
CREATE PROCEDURE ingresoSistema (in usern varchar(50), in pass varchar (50))
BEGIN
	if(not exists (select * from Usuario where n_usuario=usern))
		then signal sqlstate '45000' set message_text = 'Usuario incorrecto';
	end if;
    if(not exists (select * from Usuario where contraseña=pass ))
		then signal sqlstate '45000' set message_text = 'Contraseña incorrecta';
	end if;
END |
DELIMITER ;
