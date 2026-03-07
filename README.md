

# Projeto: Banco de Dados Loja Virtual Infantil 

Este repositório contém a modelagem e os scripts necessários para o sistema de banco de dados da Loja Infantil, desenvolvido para o projeto acadêmico da **AEMS**.

## 📖 Dicionário de Dados

Campo,Tipo de Dado,Tamanho,Descrição Funcional
id_cliente,INT (PK),-,Identificador único do cliente (Auto-incremento).
nome_completo,VARCHAR,150,Nome completo do responsável.
cpf,CHAR,11,CPF (apenas números). Deve ser único no sistema.
email,VARCHAR,100,E-mail para contato e login. Deve ser único.
telefone,VARCHAR,20,Telefone de contato com DDD.
data_cadastro,TIMESTAMP,-,Data e hora em que o cliente foi registrado.

Campo,Tipo de Dado,Tamanho,Descrição Funcional
id_produto,INT (PK),-,Identificador único do produto (Auto-incremento).
nome,VARCHAR,100,Nome comercial do produto.
descricao,TEXT,-,"Detalhes, especificações e faixa etária."
preco,DECIMAL,"10,2",Preço unitário de venda.
estoque_qtd,INT,-,Quantidade física disponível em estoque.
categoria,VARCHAR,50,"Segmentação (ex: Brinquedos, Roupas, Calçados)."

Campo,Tipo de Dado,Tamanho,Descrição Funcional
id_pedido,INT (PK),-,Identificador único da venda (Auto-incremento).
id_cliente,INT (FK),-,Chave estrangeira: liga a venda ao cliente.
data_pedido,DATETIME,-,Data e hora em que o pedido foi fechado.
status_pedido,VARCHAR,30,"Situação (ex: Pendente, Pago, Enviado)."
valor_total,DECIMAL,"10,2",Valor total bruto do pedido.

Campo,Tipo de Dado,Tamanho,Descrição Funcional
id_item,INT (PK),-,Identificador único da linha do item.
id_pedido,INT (FK),-,Chave estrangeira: vincula ao pedido pai.
id_produto,INT (FK),-,Chave estrangeira: identifica o produto vendido.
quantidade,INT,-,Quantidade de unidades vendidas deste item.
preco_unitario,DECIMAL,"10,2",Preço do produto no momento exato da venda.

## 🛠️ Como utilizar
1. Execute o arquivo `script_criacao.sql` no seu servidor MySQL para criar o banco e as tabelas.
2. Utilize o Dicionário de Dados acima como referência para futuras consultas e manutenções.

---
**Desenvolvido por:** RUDSON RAFAEL ALVES RIBEIRO  
**Instituição:** AEMS - Três Lagoas
