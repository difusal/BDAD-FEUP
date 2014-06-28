DROP TRIGGER IF EXISTS F;
CREATE TRIGGER IF NOT EXISTS F
AFTER INSERT ON Bug
FOR EACH ROW
WHEN (NEW.vulnerabilidade LIKE 'sim')
BEGIN
	UPDATE Bug
	SET prioridade = 1
	WHERE Bug.idBug = NEW.idBug
	;
	UPDATE Servidor
	SET vulneravel = 'sim'
	WHERE Servidor.idServidor IN (
		SELECT idServidor
		FROM AplicacaoServidor
		WHERE NEW.idAplicacao == AplicacaoServidor.idAplicacao
		)
	;
END;
