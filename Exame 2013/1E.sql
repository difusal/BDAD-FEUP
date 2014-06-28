DROP TRIGGER IF EXISTS E;
CREATE TRIGGER IF NOT EXISTS E
AFTER INSERT ON AplicacaoServidor
FOR EACH ROW
WHEN ((
	SELECT vulnerabilidade
	FROM Bug
	WHERE bug.idAplicacao == NEW.idAplicacao) LIKE 'sim')
BEGIN
	UPDATE Servidor
	SET vulneravel = 'sim'
	WHERE Servidor.idServidor == NEW.idServidor;
END;
