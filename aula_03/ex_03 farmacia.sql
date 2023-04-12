-- Apagar Banco de Dados db_quitanda
DROP DATABASE db_farmacia;

-- Recriar o Banco de dados db_quitanda
CREATE DATABASE db_farmacia;

-- Selecionar o Banco de Dados db_quitanda
USE db_farmacia;

CREATE TABLE tb_categorias (
  id BIGINT AUTO_INCREMENT,
  nome_categoria VARCHAR(255),
  descricao_categoria VARCHAR(100),
  PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
  id BIGINT AUTO_INCREMENT,
  nome_produto VARCHAR(255),
  descricao_produto VARCHAR(100),
  valor_produto DECIMAL(10,2),
  categoria_id BIGINT,
  PRIMARY KEY (id),
  FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES ('Medicamentos', 'Produtos utilizados para fins medicinais'),
       ('Higiene Pessoal', 'Produtos utilizados para higiene pessoal'),
       ('Cosméticos', 'Produtos utilizados para fins estéticos'),
       ('Cuidados com o Corpo', 'Produtos utilizados para cuidados com o corpo'),
       ('Nutrição', 'Produtos utilizados para fins nutricionais');
       
       INSERT INTO tb_produtos (nome_produto, descricao_produto, valor_produto, categoria_id)
VALUES ('Aspirina', 'Medicamento para dor de cabeça', 10.50, 1),
       ('Sabonete', 'Sabonete líquido para o corpo', 5.00, 2),
       ('Creme Hidratante', 'Creme hidratante para o rosto', 45.00, 3),
       ('Shampoo', 'Shampoo para cabelos oleosos', 20.00, 2),
       ('Multivitamínico', 'Suplemento vitamínico', 55.00, 5),
       ('Protetor Solar', 'Protetor solar FPS 30', 30.00, 4),
       ('Máscara Capilar', 'Máscara capilar para cabelos secos', 25.00, 3),
       ('Loção Hidratante', 'Loção hidratante para o corpo', 15.00, 4);

SELECT * FROM tb_produtos WHERE valor_produto > 50.00;
SELECT * FROM tb_produtos WHERE valor_produto BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';
SELECT * FROM tb_produtos;

SELECT p.id, p.nome_produto, p.descricao_produto, p.valor_produto, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c
ON p.id = c.id;

SELECT p.id, p.nome_produto, p.descricao_produto, p.valor_produto, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c
ON p.id = c.id
WHERE c.nome_categoria = 'Cosméticos';

