SELECT hostname
FROM Servidor, Pessoa
WHERE hostname LIKE 'alu%'
AND Servidor.idResponsavel = Pessoa.idPessoa
AND Pessoa.mail LIKE 'joao.almeida@cica.pt'
AND (
	SELECT COUNT(*)
	FROM Bug, AplicacaoServidor, Servidor
	WHERE Bug.idAplicacao = AplicacaoServidor.idAplicacao
	AND AplicacaoServidor.idServidor = Servidor.idServidor) >= 1;
