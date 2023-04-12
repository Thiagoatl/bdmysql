CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  descricao VARCHAR(100)
);

CREATE TABLE tb_produtos (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  descricao VARCHAR(100),
  valor DECIMAL(10, 2) NOT NULL,
  estoque BIGINT NOT NULL,
  id_categoria BIGINT NOT NULL,
  FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES 
  ('Ferramentas', 'Ferramentas diversas para construção'),
  ('Elétricos', 'Materiais elétricos para construção'),
  ('Hidráulica', 'Materiais hidráulicos para construção'),
  ('Tintas', 'Tintas para pintura'),
  ('Madeira', 'Madeiras para construção');

INSERT INTO tb_produtos (nome, descricao, valor, estoque, id_categoria) VALUES 
  ('Martelo', 'Martelo de aço forjado', 19.99, 100, 1),
  ('Chave de fenda', 'Chave de fenda para parafusos', 5.99, 200, 1),
  ('Furadeira', 'Furadeira de impacto 600W', 189.99, 50, 1),
  ('Fio elétrico', 'Fio elétrico 2.5mm', 3.49, 500, 2),
  ('Disjuntor', 'Disjuntor de 15A', 9.99, 100, 2),
  ('Torneira', 'Torneira para pia', 35.99, 50, 3),
  ('Válvula de descarga', 'Válvula de descarga para banheiro', 59.99, 20, 3),
  ('Tinta branca', 'Tinta branca para parede', 49.99, 100, 4);

SELECT * FROM tb_produtos WHERE valor > 100.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.*, tb_categorias.nome AS categoria 
FROM tb_produtos 
INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id;
