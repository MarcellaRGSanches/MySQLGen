create database rh_db;
use rh_db;

create table colaboradores (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome varchar(255) NOT NULL,
idade int,
salario int, 
cargo  varchar(255) NOT NULL
);

insert into colaboradores(nome, idade, salario, cargo)
values ("Joao da Silva", 18, 1900, "recepcionista");
insert into colaboradores(nome, idade, salario, cargo)
values ("Maria Conceicao", 48, 1400, "auxiliar de limpeza");
insert into colaboradores(nome, idade, salario, cargo)
values ("José da Cunnha", 25, 3000, "secretario");
insert into colaboradores(nome, idade, salario, cargo)
values ("Sofia Garcia", 38, 80000, "CEO");
insert into colaboradores(nome, idade, salario, cargo)
values ("Fabiana Alves", 31, 12000, "gerente");

select * from colaboradores;

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

SET SQL_SAFE_UPDATES = 0;
UPDATE colaboradores SET salario = 13000 WHERE Id = 5;
SET SQL_SAFE_UPDATES = 1;
SELECT * FROM colaboradores WHERE Id = 5;

drop database rh_db;