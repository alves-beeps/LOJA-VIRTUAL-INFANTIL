

# Projeto: Banco de Dados Loja Virtual Infantil 

Este repositório contém a modelagem e os scripts necessários para o sistema de banco de dados da Loja Infantil, desenvolvido para o projeto acadêmico da **AEMS**.

 Projeto: Loja Virtual Infantil

Este repositório contém a modelagem e a implementação do banco de dados para uma loja virtual focada em produtos infantis, desenvolvida como parte do projeto acadêmico da **UFMS**.

 1. Dicionário de Dados

O dicionário abaixo detalha a finalidade de cada tabela e o tipo de dado utilizado para garantir a integridade das informações.

Tabela: `Clientes`
| Campo | Tipo de Dado | Tamanho | Descrição Funcional |
| :--- | :--- | :--- | :--- |
| **id_cliente** | INT (PK) | - | Identificador único do cliente (Auto-incremento). |
| **nome_completo**| VARCHAR | 150 | Nome do responsável pela compra. |
| **cpf** | CHAR | 11 | Cadastro de Pessoa Física (Apenas números). |
| **email** | VARCHAR | 100 | Endereço de e-mail para login e contato. |
| **telefone** | VARCHAR | 20 | Telefone de contato com DDD. |
| **data_cadastro** | TIMESTAMP | - | Registro automático da data de criação. |

Tabela: `Produtos`
| Campo | Tipo de Dado | Tamanho | Descrição Funcional |
| :--- | :--- | :--- | :--- |
| **id_produto** | INT (PK) | - | Identificador único do produto (Auto-incremento). |
| **nome** | VARCHAR | 100 | Nome comercial do produto. |
| **descricao** | TEXT | - | Detalhes, faixa etária e recomendações. |
| **preco** | DECIMAL | 10,2 | Valor de venda unitário. |
| **estoque_qtd** | INT | - | Quantidade disponível em estoque. |
| **categoria** | VARCHAR | 50 | Ex: Brinquedos, Roupas, Calçados. |

Tabela: `Pedidos`
| Campo | Tipo de Dado | Tamanho | Descrição Funcional |
| :--- | :--- | :--- | :--- |
| **id_pedido** | INT (PK) | - | Identificador único da venda. |
| **id_cliente** | INT (FK) | - | Relaciona a venda ao cliente comprador. |
| **data_pedido** | DATETIME | - | Data e hora da realização do pedido. |
| **status_pedido** | VARCHAR | 30 | Status da venda (Pendente, Pago, Enviado). |
| **valor_total** | DECIMAL | 10,2 | Soma total de todos os itens do pedido. |

Tabela: `Itens_Pedido`
| Campo | Tipo de Dado | Tamanho | Descrição Funcional |
| :--- | :--- | :--- | :--- |
| **id_item** | INT (PK) | - | Identificador da linha do item. |
| **id_pedido** | INT (FK) | - | Vincula o item ao pedido correspondente. |
| **id_produto** | INT (FK) | - | Identifica qual produto foi vendido. |
| **quantidade** | INT | - | Quantidade de unidades vendidas. |
| **preco_unitario**| DECIMAL | 10,2 | Preço do produto no ato da venda. |

Como utilizar
1. Execute o arquivo `script_criacao.sql` no seu servidor MySQL para criar o banco e as tabelas.
2. Utilize o Dicionário de Dados acima como referência para futuras consultas e manutenções.

**Desenvolvido por:** RUDSON RAFAEL ALVES RIBEIRO  
**Instituição:** AEMS - Três Lagoas
