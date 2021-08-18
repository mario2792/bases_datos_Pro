USE G4P1_app_colegio;
/* Nueva observación luego de ver la nota */
DELIMITER $
CREATE TRIGGER ActualizacionDeObservacion
	AFTER INSERT ON nota
    FOR EACH ROW
    BEGIN
		IF (calificacion < 6)
			THEN
            UPDATE nota
            SET observacion = "Nota insuficiente, debe traer su representante";
		END IF;
	END $
DELIMITER ;

/* Disparador por si se entrega tarde la tarea */
drop trigger if exists ActualizacionObservacioPorTarea;
DELIMITER //
CREATE TRIGGER ActualizacionObservacioPorTarea
	AFTER INSERT ON tarea
    FOR EACH ROW
    BEGIN
		IF (DATEDIFF(curdate(), fecha) > 0)
			THEN
            UPDATE nota
            SET observacion = "Tiene puntos menos por entregar tarde el deber";
		end if;
	END //
DELIMITER ;