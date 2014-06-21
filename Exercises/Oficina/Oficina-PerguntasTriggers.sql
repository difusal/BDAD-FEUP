.mode columns
.headers on
.nullvalue NULL

-- c
drop trigger atualizaStockPecas;
create trigger atualizaStockPecas
after insert on ReparacaoPeca
begin
update Peca
set quantidade = quantidade - NEW.quantidade
where NEW.idPeca = Peca.idPeca;
end;
