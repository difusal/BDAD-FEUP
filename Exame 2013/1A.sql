SELECT hostname, nome
FROM Servidor, Pessoa
WHERE Servidor.vulneravel LIKE 'sim'
AND Servidor.idResponsavel = Pessoa.idPessoa;
