# LOJA-VIRTUAL-INFANTIL
# Projeto: Loja Virtual Infantil 

##  Dicionário de Dados

### Tabela: Produtos
| Campo | Tipo de Dado | Tamanho | Descrição Funcional |
| :--- | :--- | :--- | :--- |
| **id_produto** | INT (PK) | - | Identificador único (Auto-incremento) |
| **nome** | VARCHAR | 100 | Nome comercial do produto |
| **descricao** | TEXT | - | Detalhes, faixa etária e recomendações |
| **preco** | DECIMAL | 10,2 | Valor de venda unitário |
| **estoque_qtd** | INT | - | Quantidade disponível em estoque |
| **categoria** | VARCHAR | 50 | Ex: Brinquedos, Roupas, Calçados |

### Tabela: Clientes
| Campo | Tipo de Dado | Tamanho | Descrição Funcional |
| :--- | :--- | :--- | :--- |
| **id_cliente** | INT (PK) | - | Identificador único do cliente |
| **nome_completo**| VARCHAR | 150 | Nome do responsável |
| **cpf** | CHAR | 11 | Apenas números |
| **email** | VARCHAR | 100 | Login e contato |
| **telefone** | VARCHAR | 20 | Telefone com DDD |

SQL
-- Criação do Banco de Dados
CREATE DATABASE LojaInfantil;
USE LojaInfantil;

-- Tabela de Clientes
CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(150) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela de Produtos
CREATE TABLE Produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    estoque_qtd INT DEFAULT 0,
    categoria VARCHAR(50)
);

-- Tabela de Pedidos
CREATE TABLE Pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    status_pedido VARCHAR(30),
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

-- Tabela de Itens do Pedido (Relacionamento N:N)
CREATE TABLE Itens_Pedido (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);
