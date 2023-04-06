CREATE DATABASE db_rh;

USE db_rh;


CREATE TABLE tb_colaboradores (
  id bigint auto_increment,
  nome VARCHAR(255),
  idade INT,
  cargo VARCHAR(255),
  salario FLOAT,
  ativo VARCHAR(255),
  primary key(id)
);

INSERT INTO tb_colaboradores (nome, idade, cargo, salario, ativo)
VALUES
  ('João Silva', 32, 'Gerente de Projetos', 5000, 'sim'),
  ('Maria Santos', 28, 'Desenvolvedora', 2500, 'nao'),
  ('Pedro Oliveira', 42, 'Analista de Sistemas', 3200, 'sim'),
  ('Luciana Pereira', 35, 'Designer', 2200, 'nao'),
  ('Fernando Souza', 45, 'Coordenador de Marketing', 4500, 'sim' );
  
      SELECT * FROM tb_colaboradores;
      
      Set SQL_SAFE_UPDATES = 0;
      SELECT * FROM tb_colaboradores WHERE salario > 2000;
      SELECT * FROM tb_colaboradores WHERE salario < 2000;
      UPDATE tb_colaboradores SET salario = 1800 WHERE id = 4;