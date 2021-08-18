USE G4P1_app_colegio;
/* Reporte que permite ver la cantidad de alumnos en cada curso */
CREATE VIEW REPORT1 AS
SELECT id_curso, count(Curso.matricula) as numero_alumnos
FROM Curso, ALUMNO
WHERE ALUMNO.MATRICULA = Curso.matricula
GROUP BY id_curso;

/* Reporte que da la lista de alumnos cuyo apellido empieza por A */
CREATE VIEW REPORT2 AS
SELECT APELLIDO, NOMBRE
FROM ALUMNO
WHERE APELLIDO LIKE "A%";