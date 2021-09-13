create database PEDIDOS_VENDA
use PEDIDOS_VENDA

--Criando tabela TB_PRODUTO (errou todos os tipos de dados, minha filha)
create table TB_PRODUTO
(
Codigo_do_produto int identity primary key,
Nome_do_produto nvarchar,
Codigo_uni_medida int,
Codigo_categoria int,
Qtd_estoque float,
Qtd_minima float,
Preco_custo float,
Preco_venda float,
Caracteristica_tecnica ntext,
Fotogragia binary
)

--Alterando o tipo de dado da tabela produto
alter table TB_PRODUTO
alter column Fotogragia varbinary(max);


--Criando a tabela TB_UNIDADE
create table TB_UNIDADE
(
Codigo_unidade int identity primary key,
Nome_unidade varchar
)
select * from TB_UNIDADE

--Inserindo dados na tabela TB_UNIDADE
insert into TB_UNIDADE
values
 ('PEÇA'),
 ('METROS'),
 ('QUILOGRAMAS'),
 ('DUZIAS'),
 ('PACOTE'),
 ('CAIXA');

 ALTER TABLE TB_UNIDADE
ALTER COLUMN Nome_unidade VARCHAR(max)

--Criar tabela TB_CATEGORIA
create table TB_CATEGORIA
(
Codigo_categoria int identity primary key,
Nome_categoria varchar(30)
)

insert into TB_CATEGORIA
values
('MOUSE'),('PEN-DRIVE'),('MONITOR DE VIDEO'),('TECLADO'),('CPU'), ('CABO DE REDE');

select * from TB_CATEGORIA

--Inserindo produtos e mostrando na tabela de produtos
insert into TB_PRODUTO
(Nome_do_produto , Codigo_uni_medida, Codigo_categoria, QTD_ESTOQUE, QTD_MINIMA, PRECO_CUSTO, PRECO_VENDA)
output inserted.*
values
('Caneta Azul', 1, 1, 150, 40, 0.50, 0.75),
('Caneta Verde', 1 ,1, 50, 40, 0.50, 0.75),
('Caneta Vermelha',1, 1, 80, 35, 0.50, 0.75),
('Lápis', 1, 1, 400, 80, 0.50, 0.80),
('Régua', 1, 1, 40, 10, 1.00,1.50); 




