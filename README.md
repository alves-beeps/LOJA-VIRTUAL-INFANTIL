

# Projeto: Banco de Dados Loja Virtual Infantil 

Este repositório contém a modelagem e os scripts necessários para o sistema de banco de dados da Loja Infantil, desenvolvido para o projeto acadêmico da **AEMS**.

## 📖 Dicionário de Dados

Campo,Tipo de Dado,Tamanho,Descrição Funcional
id_cliente,INT (PK),-,Identificador único do cliente (Auto-incremento).
nome_completo,VARCHAR,150,Nome completo do responsável.
cpf,CHAR,11,"CPF (apenas números, valor único)."
email,VARCHAR,100,E-mail para contato e login (valor único).
telefone,VARCHAR,20,Telefone de contato com DDD.
data_cadastro,TIMESTAMP,-,Data e hora em que o cliente se cadastrou.

## 🛠️ Como utilizar
1. Execute o arquivo `script_criacao.sql` no seu servidor MySQL para criar o banco e as tabelas.
2. Utilize o Dicionário de Dados acima como referência para futuras consultas e manutenções.

---
**Desenvolvido por:** RUDSON RAFAEL ALVES RIBEIRO  
**Instituição:** AEMS - Três Lagoas
