CREATE DEFINER=`root`@`localhost` EVENT `TASK_INCIDENCIAS`
	ON SCHEDULE
		EVERY 15 MINUTE STARTS '2013-10-18 15:18:13'
	ON COMPLETION PRESERVE
	DISABLE
	COMMENT ''
	DO BEGIN

CALL PROCESAR_INCIDENCIAS();
CALL PROCESAR_INCIDENCIAS_NUEVAS();

END
