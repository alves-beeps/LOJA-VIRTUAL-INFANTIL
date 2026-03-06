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

# Projeto: Banco de Dados Loja Virtual Infantil 🧸

Este repositório contém a modelagem e os scripts necessários para o sistema de banco de dados da Loja Infantil, desenvolvido para o projeto acadêmico da **UFMS**.

---

## 📖 Dicionário de Dados

O dicionário abaixo detalha a estrutura das tabelas, especificando tipos de dados, tamanhos e funções de cada campo para garantir a integridade do sistema.

### 📦 Tabela: Produtos
| Campo | Tipo de Dado | Tamanho | Descrição Funcional |
| :--- | :--- | :--- | :--- |
| **id_produto** | INT (PK) | - | Identificador único (Incremento automático) |
| **nome** | VARCHAR | 100 | Nome comercial do produto |
| **descricao** | TEXT | - | Detalhes, faixa etária e recomendações |
| **preco** | DECIMAL | 10,2 | Valor de venda unitário |
| **estoque_qtd** | INT | - | Quantidade disponível em estoque |
| **categoria** | VARCHAR | 50 | Ex: Brinquedos, Roupas, Calçados |

### 👥 Tabela: Clientes
| Campo | Tipo de Dado | Tamanho | Descrição Funcional |
| :--- | :--- | :--- | :--- |
| **id_cliente** | INT (PK) | - | Identificador único do cliente |
| **nome_completo**| VARCHAR | 150 | Nome do responsável pelo cadastro |
| **cpf** | CHAR | 11 | Cadastro de Pessoa Física (Apenas números) |
| **email** | VARCHAR | 100 | Endereço de e-mail (Login e contato) |
| **telefone** | VARCHAR | 20 | Telefone de contato com DDD |

---

## 🛠️ Como utilizar
1. Execute o arquivo `script_criacao.sql` no seu servidor MySQL para criar o banco e as tabelas.
2. Utilize o Dicionário de Dados acima como referência para futuras consultas e manutenções.

---
**Desenvolvido por:** [Seu Nome Aqui]  
**Instituição:** UFMS - Três Lagoas
