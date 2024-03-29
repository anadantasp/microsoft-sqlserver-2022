-- comentario simples
/*
	coment�rio em bloco
*/

-- implementar e criar um banco de dados

-- COMANDO PARA CRIAR BANCO DE DADOS CREATE DATABASE NOME_DO_BANCO
CREATE DATABASE SUCOS_VENDAS;

-- excluindo um banco
-- Comando para excluir banco de dados DROP DATABASE NOME_DO_BANCO
DROP DATABASE SUCOS_VENDAS;

-- criando tabelas
-- COMANDO PARA CRIAR TABELAS: CREATE TABLE NOME_DA_TABELA
-- Toda vez que temos um nome com espa�o precisamos declarar dentro de colchetes
-- NO MOMENTO DA CRIA��O DA TABELA PRECISO FALAR O NOME DO CAMPO MAS TAMB�M SEU TIPO E TAMANHO
CREATE TABLE [TABELA DE CLIENTES](
[CPF] [CHAR] (11),
[NOME] [VARCHAR] (150),
[RUA] [VARCHAR] (150),
[COMPLEMENTO] [VARCHAR] (150),
[BAIRRO] [VARCHAR] (150),
[ESTADO] [CHAR] (2),
[CEP] [VARCHAR] (8),
[DATA DE NASCIMENTO] [DATE],
[IDADE] [SMALLINT],
[SEXO] [CHAR] (1),
[LIMITE DE CREDITO] [MONEY],
[VOLUME MINIMO] [FLOAT],
[PRIMEIRA COMPRA] [BIT]
);

CREATE TABLE [TABELA DE PRODUTOS](
[CODIGO DO PRODUTO] [VARCHAR] (20) NOT NULL PRIMARY KEY,
[NOME DO PRODUTO] [VARCHAR] (50),
[EMBALAGEM] [VARCHAR] (50),
[TAMANHO] [VARCHAR] (50),
[SABOR] [VARCHAR] (50),
[PRECO DE LISTA] [SMALLMONEY]
);

-- ALTERAR TABELAS: COMANDO ALTER TABLE
-- ALTERAR UMA COLUNA DE UMA TABLEA
ALTER TABLE [TABELA DE CLIENTES] ALTER COLUMN [CPF] [CHAR] (11) NOT NULL;
--DEFINIR UMA COLUNA COMO CHAVE IDENTIFICADORA DE UMA TABELA
ALTER TABLE [TABELA DE CLIENTES] ADD CONSTRAINT PK_TABELA_CLIENTE PRIMARY KEY CLUSTERED ([CPF]);

CREATE TABLE [TABELA DE VENDEDORES](
[MATRICULA] [VARCHAR] (5) NOT NULL PRIMARY KEY,
[NOME] [VARCHAR] (100),
[PERCENTUAL COMISSAO] [FLOAT]
);
