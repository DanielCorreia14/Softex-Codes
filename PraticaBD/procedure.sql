create database storage;

use storage;

create table funcionarios(
id_func int primary key,
nome varchar(40),
cargo varchar(40),
idade varchar(10),
salario float
);
create table produto(
id_produto int primary key,
nomeP varchar(30),
qtdproduto int not null
);


insert into funcionarios values(1,'Gustavo','Analista de T.I', 26, 3000);
insert into funcionarios values(2,'Vicente','Analista de Exportacao', 35, 3500);
insert into funcionarios values(3,'Candice','Analista Contabil', 42, 6500);
insert into funcionarios values(4,'Elizabeth','Auxiliar Financeiro', 36, 1800);
insert into funcionarios values(5,'Thalyta','Analista financeiro', 24, 2600);
insert into funcionarios values(6,'Alberto','Analista de Importacao', 29, 3200);
insert into funcionarios values(7,'Leticia','Recepcionista', 30, 1500);
insert into funcionarios values(8,'Rodrigo','Analista de Faturamento', 34, 4000);
insert into funcionarios values(9,'Ismael','Analista de Faturamento', 33, 4000);
insert into funcionarios values(10,'Thiago','Analista de Estoque', 27, 2000);
insert into funcionarios values(11,'Guilherme','CEO', 30, 10000);
insert into funcionarios values(12,'Amilton','CEO', 26, 15000);
insert into produto values (1,'coca',12);
insert into produto values (2,'fanta',20);
insert into produto values (3,'guarana',25);

DELIMITER //

create procedure x()
begin
select nome,cargo from funcionarios where cargo like  'Analista de Faturamento';
end 
//

call x;
DELIMITER $$
DELIMITER //
create procedure Y(in id_func int, in nome varchar(40), in cargo
varchar(40), in idade varchar(10), in salario float)
begin
insert into funcionarios(id_func, nome, cargo, idade, salario) values (id_func,nome,
cargo, idade, salario);
end
//
call AMCARGAS.Y(13,'joao','desenvolvedor','23',3250);
call AMCARGAS.Y(14,'tadeu','gerente de software','22',4412);
call AMCARGAS.Y(15,'rodrigo','analista de sistemas','21',3000);

DELIMITER //
create procedure Z(in id_func_busca int)
begin
select nome as nome_do_funcionario from funcionarios where id_func =
id_func_busca;
end
//

call Z(3);

DELIMITER //
create procedure W()
begin
update funcionarios set salario = 20000 where cargo = 'CEO';
end
//
call W;

DELIMITER //
create procedure WW(in cargo_consulta varchar(40))
begin
select * from funcionarios where cargo = cargo_consulta;
end
//

DELIMITER //
create procedure qtddprod(x int)
begin
select count(qtdproduto) from produto where x = id_produto;
return qtdproduto;
end
//

