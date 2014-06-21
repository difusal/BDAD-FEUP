.mode columns
.headers on
.nullvalue NULL

drop table if exists T;
create table T(A text, B text);
insert into T values ('Hello', 'World!');
select * from T;