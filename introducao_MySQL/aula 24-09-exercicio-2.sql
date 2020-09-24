create database db_ecommerce;
use db_ecommerce;

create table tb_produtos (
	id_produto int not null auto_increment,
    marca varchar(45), 
    validade date, 
    setor varchar(45),
    preco double(10, 2),
    primary key(id_produto)
); 

describe tb_produtos; 

select * from tb_produtos;

select * from tb_produtos where preco>500.00;
select * from tb_produtos where preco<500.00;

update tb_produtos set preco = 400.00 where id_produto = 4 limit 1;