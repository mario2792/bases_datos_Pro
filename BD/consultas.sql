-- probar 
SELECT * FROM asignatura;
   select * from nota;
  
   select * from tarea;
    
  select * from Colegio;
  
  SELECT * FROM ALUMNO WHERE (apellido LIKE '%E');
  SELECT * FROM ALUMNO WHERE (apellido LIKE '%a');
  
  select MATRICULA FROM ALUMNO;
  select codasignatura FROM asignatura;
  select id_colegio FROM Colegio;
  select id_docente FROM Docente;
  select codnota FROM nota;
  select codnota,codasignatura FROM tarea;
  select id_usuario FROM Usuario;
  
  