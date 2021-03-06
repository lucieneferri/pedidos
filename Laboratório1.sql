
CREATE DATABASE [PEDIDOS_VAZIO]
GO
USE [PEDIDOS_VAZIO]
GO

CREATE TABLE [dbo].[TB_COR](
	[CODCOR] [smallint] NOT NULL,
	[COR] [varchar](15) NULL,
CONSTRAINT PK_TB_COR PRIMARY KEY (CODCOR)
); 

CREATE TABLE [dbo].[TB_DEPARTAMENTO](
	[COD_DEPTO] [int] IDENTITY(1,1) NOT NULL,
	[DEPTO] [varchar](25) NOT NULL,
 CONSTRAINT [PK_TB_DEPARTAMENTO] PRIMARY KEY (COD_DEPTO) 

);
GO
CREATE TABLE [dbo].[TB_CARGO](
	[COD_CARGO] [int] IDENTITY(1,1) NOT NULL,
	[CARGO] [varchar](30) NOT NULL,
	[SALARIO_INIC] [float] NULL,
 CONSTRAINT [PK_TB_CARGO] PRIMARY KEY (COD_CARGO) 
);
	
GO
CREATE TABLE [dbo].[TB_PROD_FORN](
	[ID_PRODUTO] [int] NOT NULL,
	[COD_FORNECEDOR] [int] NOT NULL,
 CONSTRAINT [PK_PROD_FORN] 
 PRIMARY KEY (
	[ID_PRODUTO] ASC,
	[COD_FORNECEDOR] ASC
));
GO
CREATE TABLE [dbo].[TB_CLIENTE](
	[CODCLI] [int] IDENTITY(1,1) NOT NULL,
	[NOME] [varchar](50) NULL,
	[FANTASIA] [varchar](20) NULL,
	[ENDERECO] [varchar](60) NULL,
	[BAIRRO] [varchar](20) NULL,
	[CIDADE] [varchar](20) NULL,
	[ESTADO] [varchar](2) NULL,
	[CEP] [varchar](8) NULL,
	[END_COB] [varchar](60) NULL,
	[BAI_COB] [varchar](20) NULL,
	[CID_COB] [varchar](20) NULL,
	[EST_COB] [varchar](2) NULL,
	[CEP_COB] [varchar](8) NULL,
	[CGC] [varchar](18) NULL,
	[INSCRICAO] [varchar](19) NULL,
	[FONE1] [varchar](15) NULL,
	[FAX] [varchar](15) NULL,
	[E_MAIL] [varchar](35) NULL,
	[DATA_CAD] [datetime] NULL,
	[ICM] [float] NULL,
	[SELECAO] [varchar](1) NULL,
	[REVENDA_CONSUMIDOR] [char](1) NULL,
 CONSTRAINT [PK_TB_CLIENTE] PRIMARY KEY 
(
	[CODCLI] ASC
));
GO
CREATE TABLE [dbo].[TB_FORNECEDOR](
	[COD_FORNECEDOR] [int] IDENTITY(1,1) NOT NULL,
	[NOME] [varchar](50) NULL,
	[NOME_FANTASIA] [varchar](20) NULL,
	[FISICA_JURIDICA] [char](1) NULL,
	[COD_PAIS] [int] NULL,
	[CPF] [varchar](20) NULL,
	[CNPJ] [varchar](20) NULL,
	[INSC_ESTADUAL] [varchar](15) NULL,
	[ENDERECO] [varchar](50) NULL,
	[CEP] [char](9) NULL,
	[BAIRRO] [varchar](30) NULL,
	[CIDADE] [varchar](30) NULL,
	[ESTADO] [char](2) NULL,
	[FONE1] [varchar](15) NULL,
	[FONE2] [varchar](15) NULL,
	[FAX] [varchar](15) NULL,
	[E_MAIL] [varchar](100) NULL,
	[WEB_SITE] [varchar](100) NULL,
	[COD_COND_PAGTO] [int] NULL,
	[COD_RAMO_ATIVIDADE] [int] NULL,
	[LIMITE_CREDITO] [numeric](15, 2) NULL,
	[PRAXO_MAX] [int] NULL,
	[SN_ATIVO] [char](1) NULL,
 CONSTRAINT [PK_TB_FORNECEDOR] PRIMARY KEY 
(
	[COD_FORNECEDOR] ASC
));

CREATE TABLE [dbo].[TB_UNIDADE](
	[COD_UNIDADE] [smallint] IDENTITY(1,1) NOT NULL,
	[UNIDADE] [varchar](20) NULL,
 CONSTRAINT [PK_TB_UNIDADE] PRIMARY KEY  
(
	[COD_UNIDADE] ASC
)
);
GO

CREATE TABLE [dbo].[TB_TIPOPRODUTO](
	[COD_TIPO] [smallint] IDENTITY(1,1) NOT NULL,
	[TIPO] [varchar](30) NULL,
 CONSTRAINT [PK_TB_TIPOPRODUTO] PRIMARY KEY
(
	[COD_TIPO] ASC
)
);
GO
CREATE TABLE [dbo].[TB_VENDEDOR](
	[CODVEN] [smallint] IDENTITY(1,1) NOT NULL,
	[NOME] [varchar](50) NULL,
	[FANTASIA] [varchar](20) NULL,
	[ENDERECO] [varchar](60) NULL,
	[BAIRRO] [varchar](20) NULL,
	[CIDADE] [varchar](20) NULL,
	[ESTADO] [varchar](2) NULL,
	[CEP] [varchar](8) NULL,
	[CIC] [varchar](18) NULL,
	[RG] [varchar](15) NULL,
	[FONE] [varchar](15) NULL,
	[FAX] [varchar](15) NULL,
	[E_MAIL] [varchar](35) NULL,
	[DATA_CAD] [datetime] NULL,
	[DATA_NASC] [datetime] NULL,
	[PORC_COMISSAO] [decimal](5, 2) NULL,
	[SELECAO] [varchar](1) NULL,
 CONSTRAINT [PK_TB_VENDEDOR] PRIMARY KEY
(
	[CODVEN] ASC
)
);
GO
CREATE TABLE [dbo].[TB_ITENSPEDIDO](
	[NUM_PEDIDO] [int] NOT NULL,
	[NUM_ITEM] [smallint] NOT NULL,
	[ID_PRODUTO] [int] NULL,
	[COD_PRODUTO] [varchar](13) NULL,
	[CODCOR] [smallint] NULL,
	[QUANTIDADE] [int] NULL,
	[PR_UNITARIO] [numeric](18, 4) NULL,
	[DATA_ENTREGA] [datetime] NULL,
	[SITUACAO] [varchar](1) NULL,
	[DESCONTO] [float] NULL,
 CONSTRAINT [PK_TB_ITENSPEDIDO] PRIMARY KEY
(
	[NUM_PEDIDO] ASC,
	[NUM_ITEM] ASC
)
);
GO
CREATE TABLE [dbo].[TB_Empregado](
	[CODFUN] [int] IDENTITY(1,1) NOT NULL,
	[NOME] [varchar](35) NOT NULL,
	[NUM_DEPEND] [smallint] NULL,
	[DATA_NASCIMENTO] [datetime] NULL,
	[COD_DEPTO] [int] NULL,
	[COD_CARGO] [int] NULL,
	[DATA_ADMISSAO] [datetime] NULL,
	[SALARIO] [numeric](18, 2) NULL,
	[SINDICALIZADO] [varchar](1) NULL,
	[OBS] [text] NULL,
	[FOTO] [image] NULL,
 CONSTRAINT [PK_TB_Empregado] PRIMARY KEY 
(
	[CODFUN] ASC
)
);

GO
CREATE TABLE [dbo].[TB_Dependente](
	[CODFUN] [int] NOT NULL,
	[CODDEP] [smallint] NOT NULL,
	[NOME] [varchar](30) NOT NULL,
	[DATA_NASCIMENTO] [datetime] NULL,
 CONSTRAINT [PK_TB_Dependente] PRIMARY KEY 
(
	[CODFUN] ASC,
	[CODDEP] ASC
)
); 
GO
CREATE TABLE [dbo].[TB_PEDIDO](
	[NUM_PEDIDO] [int] IDENTITY(1,1) NOT NULL,
	[CODCLI] [int] NULL,
	[CODVEN] [smallint] NULL,
	[DATA_EMISSAO] [datetime] NULL,
	[VLR_TOTAL] [numeric](18, 2) NULL,
	[SITUACAO] [varchar](1) NULL,
	[OBSERVACOES] [text] NULL,
	[tipo_pedido] [char](1) NULL,
 CONSTRAINT [PK_tb_PEDIDO] PRIMARY KEY 
(
	[NUM_PEDIDO] ASC
)
);
GO
CREATE TABLE [dbo].[tb_PRODUTO](
	[ID_PRODUTO] [int] IDENTITY(1,1) NOT NULL,
	[COD_PRODUTO] [varchar](13) NOT NULL,
	[DESCRICAO] [varchar](40) NULL,
	[COD_UNIDADE] [smallint] NULL,
	[COD_TIPO] [smallint] NULL,
	[PRECO_CUSTO] [numeric](18, 4) NULL,
	[PRECO_VENDA] [numeric](18, 4) NULL,
	[QTD_ESTIMADA] [int] NULL,
	[QTD_REAL] [int] NULL,
	[QTD_MINIMA] [int] NULL,
	[CLAS_FISC] [varchar](10) NULL,
	[IPI] [int] NULL,
	[PESO_LIQ] [numeric](18, 2) NULL,
 CONSTRAINT [PK_TB_PRODUTO] PRIMARY KEY
(
	[ID_PRODUTO] ASC
)
);
GO

use PEDIDOS_VAZIO;

--Criando chave estrangeira para TB_PEDIDO com TB_CLIENTE
alter table TB_PEDIDO
add constraint FK_TB_PEDIDO_TB_CLIENTE_CODCLI
Foreign Key(CODCLI)
References TB_CLIENTES(CODCLI);

--Criando chave estrangeira para TB_PEDIDO com TB_VENDEDOR
alter table TB_PEDIDO
add constraint FK_TB_PEDIDO_TB_VENDEDOR_CODVEN
Foreign Key (CODVEN)
References TB_VENDEDOR(CODVEN);

------

--Criando chave estrangeira para TB_PRODUTO com TB_TIPOPRODUTO
alter table TB_PRODUTO
add constraint FK_TB_PRODUTO_TB_TIPOPRODUTO_CODTIPO
Foreign Key(COD_TIPO)
References TB_TIPOPRODUTO(COD_TIPO);

--Criando chave estrangeira para TB_PRODUTO com TB_UNIDADE
alter table TB_PRODUTO
add constraint FK_TB_PRODUTO_TB_UNIDADE_COD_UNIDADE
Foreign Key (COD_UNIDADE)
References TB_UNIDADE(COD_UNIDADE);

--------

--Criando chave estrangeira para TB_ITENSPEDIDO com TB_PEDIDO
alter table TB_ITENSPEDIDO
add constraint FK_TB_ITENSPEDIDO_TB_PEDIDO
Foreign Key(NUM_PEDIDO)
References TB_PEDIDO(NUM_PEDIDO);

--Criando chave estrangeira para TB_ITENSPEDIDO com TB_COR
alter table TB_ITENSPEDIDO
add constraint FK_TB_ITENSPEDIDO_TB_COR
Foreign Key(CODCOR)
References TB_COR(CODCOR);

--Criando chave estrangeira para TB_ITENSPEDIDO
alter table TB_ITENSPEDIDO
add constraint FK_TB_ITENSPEDIDO_TB_PRODUTO
Foreign Key (NUM_PEDIDO)
References TB_PRODUTO(NUM_PEDIDO);

--Criando uma chave única para o campo UNIDADE da tbl TB_UNIDADE
alter table TB_UNIDADE
add constraint UQ_TB_UNIDADE_UNIDADE
Unique (UNIDADE);

--Criando uma chave única pata o campo TIPO da tbl TB_TIPOPRODUTO
alter table TB_TIPOPRODUTO
add constraint UQ_TB_TIPOPRODUTO_TIPO
Unique(TIPO);

--Criando a CONSTRAINT CHECK
alter table TB_PRODUTO
add constraint CK_TB_PRODUTO_VENDA_MAIOR_QUE_CUSTO
check(PRECO_VENDA > PRECO_CUSTO);

--Preço custo precisa ser maior que zero
alter table TB_PRODUTO
add constraint CK_PRECO_CUSTO_POSITIVO
check (PRECO_CUSTO > 0);

--Campo QTD_REAL não pode ser menor que zero
alter table TB_PRODUTO
add constraint CK_QTD_REAL_MAIOR_QUE_ZERO
check (QTD_REAL >=0);

--Campo Quantidade deve ser maior ou igual a 1
alter table TB_ITENSPEDIDO
add constraint CK_QUANTIDADE_MAIOR_QUE_ZERO
check (QUANTIDADE >= 1);

--PR_UNITARIO maior que 1
alter table TB_ITENSPEDIDO
add constraint CK_PR_UNITARIO_MAIOR_QUE_ZERO
check(PR_UNITARIO >=0);

--DESCONTO não pode ser menor que zero
alter table TB_ITENSPEDIDO
add constraint CK_DESCONTO_MAIOR_QUE_ZERO_E_MENOR_QUE_10
check (DESCONTO BETWEEN 1 AND 10);

--Valor DEFAUL para PRECO_CUSTO e PRECO_VENDA
alter table TB_PRODUTO
add constraint DEF_TB_PRODUTO_PR_VENDA
default (0) for PRECO_CUSTO;

--Valor DEFAULT para PRECO_CUSTO
alter table TB_PRODUTO
add constraint DEF_TB_PRODUTO_PRECO_CUSTO
default (0) for PRECO_CUSTO;

--Valor DEFAULT para QTD_REAL, QTD_MINIMA, QTD_ESTIMADA
alter table TB_PRODUTO ADD
constraint DEF_TB_PRODUTO_QTD_REAL
default (0) for QTD_REAL,
constraint DF_TB_PRODUTO_QTD_MINIMA
default (0) for QTD_MINIMA,
constraint DEF_TB_PRODUTO_QTD_ESTIMADA
default (0) for QTD_ESTIMADA,
constraint TB_PRODUTO_COD_TIPO
default (0) for COD_TIPO,
constraint DEF_TB_PRODUTO_COD_UNIDADE
default (0) for COD_UNIDADE;