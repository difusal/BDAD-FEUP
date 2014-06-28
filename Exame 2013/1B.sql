SELECT hostname, Bug.descricao, Pessoa.nome
FROM Servidor, Bug, Pessoa, AplicacaoServidor
WHERE Bug.vulnerabilidade LIKE 'sim'
AND Bug.idAplicacao = AplicacaoServidor.idAplicacao
AND AplicacaoServidor.idServidor = Servidor.idServidor
AND Servidor.idResponsavel = Pessoa.idPessoa
ORDER BY hostname ASC;
