create database db_cidade_dos_vegetais;
use db_cidade_dos_vegetais;

create table tb_produtos(
id bigint auto_increment primary key,
nome varchar (255) not null,
quantidade int,
preco decimal(5,2) not null,
categoriaID bigint

);
 insert into tb_produtos (nome, quantidade, preco, categoriaID)
 values("manga",2350,8.98,1);
  insert into tb_produtos (nome, quantidade, preco, categoriaID)
 values("Banana",1850,5.98,1);
  insert into tb_produtos (nome, quantidade, preco, categoriaID)
 values("Espinafre",850,3.98,2);
   insert into tb_produtos (nome, quantidade, preco, categoriaID)
 values("Couve",650,2.98,2);
   insert into tb_produtos (nome, quantidade, preco, categoriaID)
 values("Batata",6874,6.98,3);
   insert into tb_produtos (nome, quantidade, preco, categoriaID)
 values("Mandioca",4970,8.98,3);
   insert into tb_produtos (nome, quantidade, preco, categoriaID)
 values("Chuchu",1236,5.98,4);
    insert into tb_produtos (nome, quantidade, preco, categoriaID)
 values("Abobrinha",2143,6.98,4);
    insert into tb_produtos (nome, quantidade, preco, categoriaID)
 values("Arroz",5950,29.80,5);
     insert into tb_produtos (nome, quantidade, preco, categoriaID)
 values("Feijao",2350,7.90,5);
 
 select * from tb_produtos;
 
 create table tb_categorias(
 id bigint auto_increment primary key,
 tipo varchar (255) not null
 );
 insert into tb_categorias (tipo)
 values ("fruta"), ("verdura"), ("tuberculo"), ("legumes"), ("graos");
 
 select * from tb_produtos where preco > 50.00;
 select * from tb_produtos where preco between 50.00 and 150.00;
 select * from tb_produtos where nome like "%c%";
 
select nome, quantidade, preco, tb_categorias.tipo from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoriaID; 

select nome, quantidade, preco, tb_categorias.tipo from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoriaID
where tb_categorias.tipo = "fruta";

 
 
 