DROP DATABASE db_cidade_das_carnes;

CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id_categoria BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao_categoria VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos (
    id_produto BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(255) NOT NULL,
    descricao_produto VARCHAR(255) NOT NULL,
    valor_produto DECIMAL(10,2) NOT NULL,
    estoque_produto INT NOT NULL,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES
('Carnes Bovinas', 'Carnes de gado bovino.'),
('Carnes Suínas', 'Carnes de porco.'),
('Carnes de Aves', 'Carnes de frango, peru e outras aves.'),
('Legumes', 'Hortaliças que possuem sementes ou frutos.'),
('Verduras', 'Hortaliças que possuem folhas.'),
('Frutas', 'Alimentos que possuem sementes e são doces.'),
('Temperos', 'Ervas e condimentos para temperar alimentos.'),
('Outros', 'Outros produtos.');

INSERT INTO tb_produtos (nome_produto, descricao_produto, valor_produto, estoque_produto, id_categoria)
VALUES
('Picanha', 'Corte nobre de carne bovina.', 79.90, 50, 1),
('Alcatra', 'Corte de carne bovina com menos gordura.', 59.90, 30, 1),
('Lombo Suíno', 'Corte de carne suína com pouca gordura.', 49.90, 20, 2),
('Peito de Frango', 'Corte de carne de ave magra.', 29.90, 40, 3),
('Tomate', 'Fruto comestível, fonte de vitamina C.', 4.50, 100, 4),
('Cenoura', 'Raiz comestível, fonte de vitamina A.', 3.20, 80, 4),
('Alface', 'Hortaliça com folhas verdes e crocantes.', 2.80, 120, 5),
('Banana', 'Fruta doce e rica em potássio.', 1.99, 150, 6);

SELECT * FROM tb_produtos WHERE valor_produto > 50.00;

SELECT * FROM tb_produtos WHERE valor_produto BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT tb_produtos.*, tb_categorias.nome_categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT tb_produtos.*, tb_categorias.nome_categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria IN ('Carnes de Aves', 'Frutas');