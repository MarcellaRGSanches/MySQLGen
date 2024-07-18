create database db_pizzaria_legal;
use db_pizzaria_legal;

 create table tb_pizza(
 id bigint auto_increment primary key,
 nome varchar (255) not null,
 pedacos int,
 preco decimal (5,2) not null,
 descricao varchar (255) not null,
 categoriaID bigint,
 constraint fk_pizza_categoria foreign key (categoriaID) references tb_pizza(id)
 );
insert into tb_pizza (nome, pedacos, preco, descricao, categoriaID)
values("mussarela", 8, 49.90,"molho de tomate, queijo e orégano",1);
insert into tb_pizza (nome, pedacos, preco, descricao, categoriaID)
values("calabresa", 8, 49.90,"molho de tomate,calabresa, cebola e orégano",1);
insert into tb_pizza (nome, pedacos, preco, descricao, categoriaID)
values("toscana", 8, 72.90,"molho de tomate,calabresa, queijo e orégano",1);
insert into tb_pizza (nome, pedacos, preco, descricao, categoriaID)
values("brocolis I", 8, 89.90,"molho de tomate,brocolis, queijo e orégano",1);
insert into tb_pizza (nome, pedacos, preco, descricao, categoriaID)
values("camarão I" ,8, 109.90,"molho de tomate, camarão, catupiry, provolone ralado e orégano",1);
insert into tb_pizza (nome, pedacos, preco, descricao, categoriaID)
values("brigadeiro gourmet", 6, 71.90, "brigadeiro de chocolate belga e granulado",2);
insert into tb_pizza (nome, pedacos, preco, descricao, categoriaID)
values("prestigio", 6, 71.90, "brigadeiro de chocolate belga, coco ralado, e raspas de chocolate ao leite",2);
insert into tb_pizza (nome, pedacos, preco, descricao, categoriaID)
values("banana nevada", 6, 81.90, "creme de baunilha, banana e merengue",2);

select * from tb_pizza;

create table tb_categoria(
id bigint auto_increment primary key,
tipo varchar(255) not null
);
insert into tb_categoria(tipo) values ("pizza salgada"), ("pizza doce");
select * from tb_categoria;

select * from tb_pizza where preco > 45.00;
select * from tb_pizza where preco between 50.00 AND 100.00;
select * from tb_pizza where nome like "%m%";

select nome, pedacos, preco, descricao, tb_categoria.tipo from tb_pizza
inner join  tb_categoria on tb_categoria.id = tb_pizza.categoriaID;

select nome, pedacos, preco, descricao, tb_categoria.tipo from tb_pizza
inner join  tb_categoria on tb_categoria.id = tb_pizza.categoriaID
where tb_categoria.tipo = "pizza doce";


 -- drop database db_pizzaria_legal 