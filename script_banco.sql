PROJETO: BANCO DE DADOS - LOJA VIRTUAL INFANTIL
  DISCIPLINA: BANCO DE DADOS - AEMS
  AUTOR: RUDSON RAFAEL ALVES RIBEIRO
1. DICIONÁRIO DE DADOS
  
  TABELA: Clientes
  - id_cliente (INT): Chave Primária, incremento automático.
  - nome_completo (VARCHAR 150): Nome do responsável pela compra.
  - cpf (CHAR 11): Cadastro de Pessoa Física (apenas números, único).
  - email (VARCHAR 100): E-mail para contato e login (único).
  - telefone (VARCHAR 20): Telefone com DDD.
  
  TABELA: Produtos
  - id_produto (INT): Chave Primária, incremento automático.
  - nome (VARCHAR 100): Nome comercial do produto.
  - preco (DECIMAL 10,2): Preço de venda com duas casas decimais.
  - estoque_qtd (INT): Quantidade atual no inventário.
  - categoria (VARCHAR 50): Segmentação (Ex: Brinquedos, Calçados).
  
  2. LÓGICA DO MODELO (MER/DER)
  O sistema utiliza relacionamentos para garantir a integridade:
  - Um CLIENTE pode realizar vários PEDIDOS (1:N).
  - Um PEDIDO contém vários PRODUTOS através da tabela ITENS_PEDIDO (N:N).

-- CRIAÇÃO DO BANCO DE DADOS
CREATE DATABASE IF NOT EXISTS LojaInfantil;
USE LojaInfantil;

-- TABELA DE CLIENTES
CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(150) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- TABELA DE PRODUTOS
CREATE TABLE Produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    estoque_qtd INT DEFAULT 0,
    categoria VARCHAR(50)
);

-- TABELA DE PEDIDOS (Relaciona o pedido ao cliente)
CREATE TABLE Pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    status_pedido VARCHAR(30),
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

-- TABELA DE ITENS DO PEDIDO (Relaciona produtos aos pedidos)
CREATE TABLE Itens_Pedido (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);
