create database biblioteca;

use biblioteca;

create table Aluno(
data_nascimento varchar(10),
telefone varchar(20)
);
alter table Aluno rename column telefone to Contato;
create table Livro(
ISBN int(13)
);
delete isbn from livro;
