create database distribuidora_db; 
use distribuidora_db;

create table boxlivros (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nomelivros varchar(255) NOT NULL,
genero varchar(255) NOT NULL,
quantidade int,
valor int
);
insert into boxlivros(nomelivros, genero, quantidade,valor )
values ("Harry Potter", "aventura", 5, 1500);
insert into boxlivros(nomelivros, genero, quantidade,valor )
values ("Bridgerton", "romance", 6, 2000);
insert into boxlivros(nomelivros, genero, quantidade,valor )
values ("Emily Henry", "romance", 2, 200);
insert into boxlivros(nomelivros, genero, quantidade,valor )
values ("Senhor dos Anéis", "aventura", 1, 99);
insert into boxlivros(nomelivros, genero, quantidade,valor )
values ("Jogos Vorazes", "ficcao", 3, 300);
insert into boxlivros(nomelivros, genero, quantidade,valor )
values ("Divergente", "ficcao", 4, 800);
insert into boxlivros(nomelivros, genero, quantidade,valor )
values ("Percy Jackson", "aventura-ficcao", 5, 1000);
insert into boxlivros(nomelivros, genero, quantidade,valor )
values ("Maze Runner", "aventura-ficcao", 1, 200);

select * from boxlivros;

select * from boxlivros where valor > 500;
select * from boxlivros where valor < 500;

SET SQL_SAFE_UPDATES = 0;
UPDATE boxlivros SET quantidade = 4 WHERE Id = 1;
UPDATE boxlivros SET valor = 1200 WHERE Id = 1;
SET SQL_SAFE_UPDATES = 1;

select * from boxlivros where id = 1; 

 drop database distribuidora_db;

