-- Create database
create database db_quitanda;  -- criou o banco de dados
use db_quitanda;              -- esta usando o banco de dados
drop database db_quitanda;    -- serve para apagar o db 

create table tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
validade DATE,
preco DECIMAL NOT NULL,
primary key(id)
);

ALTER TABLE tb_produtos ADD PRIMARY KEY (id); -- usado pra definir a chave primaria numa tabela

describe tb_produtos;
INSERT INTO tb_produtos(nome, quantidade, validade, preco) -- o insert into, é usado pra inserir dados numa tabela
VALUES ("tomate",100, "2023-12-15", 8.00);
INSERT INTO tb_produtos(nome, quantidade, validade, preco) 
VALUES ("maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, validade, preco) 
VALUES ("laranja",50, "2023-12-15", 50.00);
INSERT INTO tb_produtos(nome, quantidade, validade, preco) 
VALUES ("banana",200, "2023-12-15", 8.00);
INSERT INTO tb_produtos(nome, quantidade, validade, preco) 
VALUES ("uva",1200, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, validade, preco) 
VALUES ("pêra",500, "2023-12-15", 12.99);

select * from tb_produtos; -- é usado pra visualizar a tabela 

SELECT nome FROM tb_produtos; -- é usado para ver somente o nome(trocou o asterisco por nome, pode ser usado pra ver qualquer atributo da tabela)

SELECT nome, preco FROM tb_produtos; -- é usado pra ver mais de um atributo

SELECT * FROM tb_produtos WHERE id = 1; -- é usado caso tenha necessidade de retornar apenas uma linhas 

-- WHERE COM OPERADORES RELACIONAIS 
SELECT * FROM tb_produtos WHERE preco > 5.00; -- EX usado caso queira retornar todos os produtos que tenham preço acima de 5

-- WHERE com Operadores Lógicos
SELECT * FROM tb_produtos WHERE preco > 5.00 AND quantidade < 100; -- and === &&, or === ||, not === !

-- ALTER TABLE - MODIFY
ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2); -- usado para alterar o valor do item de ID 6 e colocar uma casa decimal

-- ALTER TABLE - ADD
ALTER TABLE tb_produtos ADD descricao VARCHAR(255); -- A clausula ADD tem a função de adicionar um novo Atributo na tabela.
 SELECT * FROM tb_produtos;
 
 -- Para evitar que uma instrução UPDATE seja executada por engano sem a instrução WHERE, o MySQL possui uma "trava de segurança"
 -- Para desabilitar o modo seguro
SET SQL_SAFE_UPDATES = 0;
-- Para habilitar o modo seguro novamente
SET SQL_SAFE_UPDATES = 1;

-- UPDATES utilizado para alterar os dados em um registro (linha) ou em um conjunto de registros (linhas), em uma Tabela, que atendam a um ou mais critérios.
UPDATE tb_produtos SET preco = 2.99 WHERE Id = 6;

UPDATE tb_produtos SET descricao = "Tomate Italiano" WHERE Id = 1;
UPDATE tb_produtos SET descricao = "Maçã Verde" WHERE Id = 2;
UPDATE tb_produtos SET descricao = "Laranja Lima" WHERE Id = 3;
UPDATE tb_produtos SET descricao = "Banana Prata" WHERE Id = 4;
UPDATE tb_produtos SET descricao = "Uva Italiana" WHERE Id = 5;
UPDATE tb_produtos SET descricao = "Pêra Williams" WHERE Id = 6;

SELECT * FROM tb_produtos;

-- ALTER TABLE - DROP
ALTER TABLE tb_produtos DROP descricao; -- vai fazer com que a descricao que foi colocada seja excluida
 
-- DELETE
DELETE FROM tb_produtos WHERE Id = 2;
-- o delete tem como função excluir um registro (linha) ou um conjunto de registros 
-- o where tem que ser colocado pra não deletar toda tabela

-- ALTER TABLE - CHANGE
ALTER TABLE tb_produtos CHANGE nome nomeproduto VARCHAR(255); -- usado pra mudar o nome da coluna





