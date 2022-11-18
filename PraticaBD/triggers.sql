create table caixa
(
    data            datetime,
    saldo_inicial   decimal(10,2),
    saldo_final     decimal(10,2)
)
go

insert into caixa
values (convert(datetime, convert(varchar, getdate(), 103)), 100, 100)
go

create table vendas
(
    data    datetime,
    codigo  int,
    valor   decimal(10,2)
)
go


create trigger tgr_vendas_ai
on vendas
for insert
as
begin
    declare
    @valor  decimal(10,2),
    @data   datetime

    select @data = data, @valor = valor from inserted

    update caixa set saldo_final = saldo_final + @valor
    where data = @data
end
go


insert into vendas
values (convert(datetime, convert(varchar, getdate(), 103)), 1, 10)


create trigger tgr_vendas_ad
on vendas
for delete
as
begin
    declare
    @valor  decimal(10,2),
    @data   datetime

    select @data = data, @valor = valor from deleted

    update caixa set saldo_final = saldo_final - @valor
    where data = @data
end
go


delete from vendas where codigo = 1
go
