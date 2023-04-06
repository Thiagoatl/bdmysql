CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
 id bigint auto_increment,
  nome VARCHAR(255),
  descricao TEXT,
  preco FLOAT,
  categoria VARCHAR(255),
  estoque INT,
  primary key(id)
);

INSERT INTO tb_produtos (nome, descricao, preco, categoria, estoque)
VALUES
  ('Notebook Acer', 'Notebook Acer Aspire 5', 4599.00, 'Informática', 10),
  ('Smartphone Samsung', 'Smartphone Samsung Galaxy A32 128GB', 1599.90, 'Celulares', 20),
  ('TV LG', 'TV LG 4K 50"', 3499.00, 'Eletrônicos', 5),
  ('Cadeira Gamer', 'Cadeira Gamer', 899.90, 'Móveis e Decoração', 15),
  ('Camiseta Adidas', 'Camiseta Adidas', 79.90, 'Moda', 50),
  ('Relógio Casio', 'Relógio Casio Vintage', 329.90, 'Acessórios', 30),
  ('Livro O Hobbit', 'Livro O Hobbit - J.R.R. Tolkien', 44.90, 'Livros', 100),
  ('Fone de Ouvido JBL', 'Fone de Ouvido JBL', 179.90, 'Áudio', 25);
  
  SELECT * FROM tb_produtos;

  SELECT * FROM tb_produtos WHERE preco > 500;
  
  SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 4999.00 WHERE id = 1;