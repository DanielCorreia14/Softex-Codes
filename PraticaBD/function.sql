create database loja;

use loja;

create table cliente(
id_cliente int primary key not null,
nome varchar(30)
);
DELIMITER $$
create function somaCliente(x int)
returns int

begin
select count(id_cliente) from cliente
end 
DELIMITER ;
