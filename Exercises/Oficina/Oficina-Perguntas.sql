.mode columns
.headers on
.nullvalue NULL

/*
-- a
SELECT * FROM Peca
WHERE custoUnitario < 10 AND codigo LIKE "%98%";
*/

/*
-- b
SELECT matricula
FROM Carro, Reparacao
WHERE (dataInicio >= '2010-09-01')
AND (dataFim <= '2010-09-30')
AND (Carro.idCarro = Reparacao.idReparacao);
*/

/*
-- g
SELECT avg(custoUnitario) CustoMedio, max(custoUnitario) ValorTotal, min(custoUnitario) NumUnidadesPecas,
sum(quantidade * custoUnitario) valorPecaMaisCara, sum(quantidade) valorPecaMaisBarata
FROM Peca;
*/

/*
-- o
SELECT localidade
FROM CodPostal
WHERE codPostal1 in (SELECT codPostal1 FROM Cliente)
OR codPostal1 in (SELECT codPostal1 FROM Funcionario);
*/

/*
-- v
SELECT Carro.Matricula Matricula, count(*) NumReparacoes
FROM Carro, Reparacao
WHERE Carro.idCarro = Reparacao.idCarro
GROUP BY Matricula;
-- se quisessemos filtrar os resultados para apresentar os resultados com numReparacoes > 1,
-- tinhamos que acrescentar, depois do group by:
-- HAVING NumReparacoes > 1;
*/

/*
-- w
SELECT julianday(dataFim) - julianday(dataInicio) Duracao
FROM Reparacao;
*/
