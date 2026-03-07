

# Projeto: Banco de Dados Loja Virtual Infantil 

Este repositório contém a modelagem e os scripts necessários para o sistema de banco de dados da Loja Infantil, desenvolvido para o projeto acadêmico da **AEMS**.

## 📖 Dicionário de Dados

2. Tabela: ProdutosEsta tabela gerencia o inventário da loja.CampoTipo de DadoTamanhoDescrição Funcionalid_produtoINT (PK)-Identificador único do produto (Auto-incremento).nomeVARCHAR100Nome comercial do produto.descricaoTEXT-Detalhes, especificações e faixa etária.precoDECIMAL10,2Preço unitário de venda.estoque_qtdINT-Quantidade física disponível em estoque.categoriaVARCHAR50Segmentação (ex: Brinquedos, Roupas, Calçados).

## 🛠️ Como utilizar
1. Execute o arquivo `script_criacao.sql` no seu servidor MySQL para criar o banco e as tabelas.
2. Utilize o Dicionário de Dados acima como referência para futuras consultas e manutenções.

---
**Desenvolvido por:** RUDSON RAFAEL ALVES RIBEIRO  
**Instituição:** AEMS - Três Lagoas
