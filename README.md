# Mercado_db

Este repositório contém o código SQL para criar e popular um banco de dados simples representando um sistema de gerenciamento de produtos de um mercado. O banco de dados é projetado para armazenar informações sobre produtos, incluindo nome, tipo, marca, preço, data de validade e quantidade em estoque.

Estrutura do Banco de Dados
O banco de dados possui uma única tabela chamada produtos com as seguintes colunas:

id (INT): Identificador único do produto (chave primária).
nome (VARCHAR(255)): Nome do produto.
tipo (VARCHAR(50)): Tipo de produto (ex: Grão, Lácteo, Panificação).
marca (VARCHAR(50)): Marca do produto.
preco (VARCHAR(50)): Preço do produto.
data_validade (DATE): Data de validade do produto.
quantidade (INT): Quantidade em estoque do produto.

Como Usar
Clonar o Repositório:

bash
Copy code
git clone https://github.com/seu-usuario/nome-do-repositorio.git

Importar o Banco de Dados:

Abra um cliente MySQL ou ferramenta semelhante.
Execute o script SQL no arquivo script.sql para criar o banco de dados e a tabela.
Consultas Exemplo:

Use as consultas fornecidas no arquivo para realizar operações no banco de dados.
