DROP VIEW IF EXISTS Aux;
CREATE VIEW IF NOT EXISTS Aux AS
	SELECT Aplicacao.nome AS nome, COUNT(*) AS numBugs
	FROM Aplicacao, Bug
	WHERE Bug.idAplicacao = Aplicacao.idAplicacao;

SELECT nome
FROM Aux
WHERE numBugs = (SELECT MAX(numBugs) FROM Aux);