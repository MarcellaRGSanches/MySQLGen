create database escola_db;
use escola_db;

create table alunos (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome varchar(255) NOT NULL,
serie int,
nota decimal(3,1),
periodo varchar(255) NOT NULL
);
insert into alunos(nome,serie ,nota ,periodo)
values ("Mayara", 7 , 5.5, "tarde");

insert into alunos(nome,serie ,nota ,periodo)
values ("Matheus", 8 , 8.9, "manha");

insert into alunos(nome,serie ,nota ,periodo)
values ("Claudio", 9 , 5.9, "tarde");

insert into alunos(nome, serie, nota,periodo)
values ("Gilberto", 7 , 10.0, "manha");

insert into alunos(nome, serie, nota,periodo)
values ("Fabio", 8 , 9.8, "manha");

insert into alunos(nome,serie , nota ,periodo )
values ("Claudia", 9 , 4.0, "manha");

insert into alunos(nome,serie , nota ,periodo )
values ("Renata", 6 , 7.5, "tarde");

insert into alunos(nome,serie , nota ,periodo )
values ("Nadia", 6 , 7.0, "tarde");

select * from alunos;
select * from alunos where nota > 7.0;
select * from alunos where nota < 7.0;

SET SQL_SAFE_UPDATES = 0;
UPDATE alunos SET nota = 6.0 WHERE Id = 6;
SET SQL_SAFE_UPDATES = 1;

select * from alunos where id = 6;

drop database escola_db;

