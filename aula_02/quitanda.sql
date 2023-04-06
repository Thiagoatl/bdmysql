-- Query para criação de banco de dados
CREATE DATABASE db_quitanda;
-- Query para deletar o banco de dados

-- Começar a utilizar banco
USE db_quitanda;

-- Criar tabela e popular
CREATE TABLE tb_produtos(
	id bigint auto_increment,
	nome varchar(255) not null,
	quantidade int,
	preco decimal(6,2) not null,
    primary key(id)
    );
    
    -- Visualizar a tabela
    SELECT * FROM tb_produtos;
   
   -- buscas especificas
    SELECT nome, quantidade FROM tb_produtos;
    
    -- Popular tabela
    INSERT INTO tb_produtos(nome, quantidade, preco)
            values ("banana",200, 12.00);
             INSERT INTO tb_produtos(nome, quantidade, preco)
                values ("uva",1200, 30.00);
                 INSERT INTO tb_produtos(nome, quantidade, preco)
                    values ("perâ",500, 2.99);
                    
                    SELECT * FROM tb_produtos WHERE id = 1;
                    SELECT * FROM tb_produtos WHERE preco > 5 AND nome <> "uva";
                    
                    -- Desabilitar segurança do SQL = 0, habilitar = 1
                    Set SQL_SAFE_UPDATES = 0;
                    					
                    -- atualizar colunas na tabela
                    UPDATE tb_produtos SET preco = 5.0 WHERE id = 1;
                    
                    -- deletar itens
                    DELETE FROM tb_produtos WHERE id = 2 OR id = 3;
                    
                    -- Atualizar Coluna
ALTER TABLE tb_produtos MODIFY preco decimal(6,2); 
-- Adicionar Coluna
ALTER TABLE tb_produtos ADD descricao varchar(255); 
-- Deletar Coluna
ALTER TABLE tb_produtos DROP descricao;
-- Alterar nome da coluna
ALTER TABLE tb_produtos CHANGE nome nomedoproduto varchar(255);