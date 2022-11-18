create database datasystem;
use datasystem;
create table departamento(
cod_dep int not null primary key,
Nome varchar(80) not null,
Localizacao varchar(80)
);

create table funcionario (
cod_func int not null primary key,
PrimeiroNome varchar(50) not null,
SegundoNome varchar(50) not null,
DataNasci date not null,
CPF varchar(15) not null,
RG varchar(150),
Endereco varchar(80),
CEP varchar(15),
Cidade varchar(50),
Funcao varchar(80),
Salario float,
cod_dep int,
foreign key (cod_dep) references departamento(cod_dep)
);

insert into departamento values(1,'Tecnologia','Predio A');
insert into departamento values(2,'RH','Predio B');
insert into departamento values(3,'Contabilidade','Predio C');
insert into departamento values(4,'Estoque','Predio D');
insert into departamento values(5,'Camara Fria','Predio E');
insert into departamento values(6,'Financeiro','Predio F');
insert into departamento values(7,'Faturamento','Rua F');

insert into departamento values(8,'Logistica','Sala - primeiro andar');
insert into funcionario values(200,'Gustavo','Rodrigues','1995-09-20','10935108761',
'9134567','Rua A, nº 90','5678923','Petrolina', 'Analista de T.I', 4000, 1);
insert into funcionario values(201,'Nubia','Rodrigues','1999-05-21','10945676521',
'9134762','Rua flores, nº 190','5630090','Juazeiro', 'Analista de R.H', 5000, 2);
insert into funcionario values(202,'Candice','Nunes','1990-01-15','18978654121',
'9189761','Rua Jitirana, nº 80','5634590','Petrolina', 'Contadora', 6500, 3);
insert into funcionario values(203,'Gabriel','Feitosa','1992-09-20','10972134589',
'6786154','Rua 50, nº 100','67890900','Petrolina', 'Tecnico de T.I', 2500, 1);
insert into funcionario values(204,'Fernanda','Feitosa','1989-09-19','10978945621',
'9124345','Rua Uva, nº 890','56300890','Juazeiro', 'Analista Financeira', 4500, 6);
insert into funcionario values(205,'Isaque','Emanuel','1999-08-15','10978698762',
'9789678','Rua Laranja, nº 10','67898712','Petrolina', 'Estoquista', 1500, 4);
insert into funcionario values(206,'Bruna','Lisia','1998-02-15','10878654121',
'8156675','Predio ZN, Apt 190','78987612','Juazeiro', 'Operador Camara fria', 1800, 5);
insert into funcionario values(207,'Felipe','Rodrigues','1999-03-20','10767898712',
'1908786','Rua da feira, nº 189','78897654','Petrolina', 'Operador Logistica', 2000, 8);
insert into funcionario values(208,'Thalyta','Ferraz','1999-07-10','10778976512',
'8178654','Rua tolentino, nº 90','78976510','Juazeiro', 'Analista de Dados', 7800, 1);
insert into funcionario values(209,'Gustavo','Rodrigues','1995-09-20','10935108761',
'9134567','Rua A, nº 90','5678923','Petrolina', 'Analista de T.I', 4000, 1);
insert into funcionario values(210,'Pedro','Lucas','1991-01-18','10789087613',
null,null,null,'Petrolina', 'Operador Camara fria', 1700, 5);
insert into funcionario values(211,'Joao','Lucas','1989-01-08','10978654121',
null,null,null,'Juazeiro', 'Operador Faturamento', 2500, 7);
insert into funcionario values(212,'Thiago','Fernandes','1991-05-05','10989765431',
null,null,null,'Petrolina', null , null, null);
insert into funcionario values(213,'Julia','Filho','1999-10-20','10987926587',
'1908890','Rua silvio freire, nº 120','98897780','Juazeiro', 'Auxiliar Contábil', 1300, 3);
insert into funcionario values(214,'Rafaela','pereira','1999-11-30','10878614532',
'1897865','Rua Luiz Inacio, nº 12','12345321','Petrolina', 'Auxiliar Estoque', 2000, 4);
insert into funcionario values(215,'Lucas','Igor','1990-04-01','10878543210',
null,null,null,'Juazeiro', null , null, 5);

select PrimeiroNome, SegundoNome from funcionario order by SegundoNome;
select * from funcionario order by Cidade;
select * from funcionario where Salario > 4000 order by PrimeiroNome and SegundoNome;
select Sum(Salario) from funcionario;
select funcionario.PrimeiroNome, departamento.Nome, funcionario.funcao from funcionario inner join departamento on departamento.cod_dep = funcionario.cod_dep;
select sum(funcionario.salario), departamento.nome from funcionario inner join departamento on departamento.cod_dep = funcionario.cod_dep group by departamento.nome;
select count(primeiroNome) as 'quantidade de funcionarios' from funcionario;
select AVG(salario) as 'Salario médio:' from funcionario;
select MIN(salario) as 'Salario minimo:' from funcionario;
select MIN(funcionario.salario), departamento.nome from funcionario inner join departamento on departamento.cod_dep = funcionario.cod_dep group by departamento.nome;
select funcionario.PrimeiroNome, departamento.nome from funcionario inner join departamento on departamento.cod_dep = funcionario.cod_dep;
select PrimeiroNome, funcao from funcionario;
select PrimeiroNome, funcao, salario from funcionario where salario>4000;
select * from funcionario order by PrimeiroNome;
select PrimeiroNome,funcao from funcionario where funcao is null;
select funcionario.PrimeiroNome,funcionario.SegundoNome, funcionario.salario, departamento.localizacao  
from funcionario inner join departamento on departamento.cod_dep = funcionario.cod_dep;
select f.PrimeiroNome,f.salario, d.nome from funcionario f left join departamento d on d.cod_dep = f.cod_dep;
select PrimeiroNome as'analistas:', salario  from funcionario where funcao like'%Analista%';
select * from funcionario where cidade like '%juazeiro%';
select * from funcionario where cidade like '%juazeiro%' and salario >=5000;
select f.*, d.nome from funcionario f inner join departamento d on f.cod_dep = d.cod_dep where f.Cidade like '%Juazeiro%' and f.salario >= 5000;
select * from funcionario full join departamento;
select f.*,d.nome from funcionario f righ join departamento d on f.cod_dep = d.cod_dep where f.Cidade like '%Juazeiro%' and f.salario >= 5000;
select f.*,d.nome from funcionario f left join departamento d on f.cod_dep = d.cod_dep;

