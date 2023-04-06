CREATE TABLE tb_estudantes (
  id bigint auto_increment,
  nome VARCHAR(50),
  idade INT,
  turma VARCHAR(10),
  nota FLOAT,
  presenca INT,
  primary key(id)
);

INSERT INTO tb_estudantes (nome, idade, turma, nota, presenca)
VALUES
  ('João da Silva', 16, '3A', 8.5, 40),
  ('Maria Oliveira', 15, '2B', 7.0, 35),
  ('Pedro Santos', 17, '3C', 6.5, 38),
  ('Ana Costa', 14, '1A', 9.0, 42),
  ('Bruno Souza', 15, '2C', 7.5, 37),
  ('Mariana Pereira', 16, '3B', 9.5, 44),
  ('Lucas Almeida', 14, '1B', 6.0, 36),
  ('Fernanda Rocha', 17, '3A', 8.0, 41);
  
  SELECT * FROM tb_estudantes;
  
  SELECT * FROM tb_estudantes WHERE nota > 7.0;
  
  SELECT * FROM tb_estudantes WHERE nota < 7.0;
  
  UPDATE tb_estudantes SET nome = 'Joana Silva', idade = 17, turma = '3B', nota = 8.5, presenca = 40 WHERE id = 3;