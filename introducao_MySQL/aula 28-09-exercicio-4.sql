create database db_cidade_das_carnes; 
use db_cidade_das_carnes; 


create table tb_categoria(
id_categoria int not null auto_increment, 
tipo enum('bovina', 'suina', 'frango', 'peixe'),
setor enum('fresco','congelado', 'salgado', 'natura'),
primary key (id_categoria)
);

create table tb_produto(
id_produto int not null auto_increment,
peso int, 
preco int, 
qualidade enum('1', '2'),
emabalagem enum('vacuo', 'comum'),
id_categoria int,
primary key (id_produto),
constraint fk_chave foreign key(id_categoria) references tb_categoria(id_categoria)
);

select*from tb_categoria;
select*from tb_produto;

#select que retorne os Produtos com o valor maior do que 50 reais.
select *from tb_produto where preco >50;

#select trazendo  os Produtos com valor entre 3 e 60 reais.
select *from tb_produto where preco >2 and preco <61;

#select  utilizando LIKE buscando os Produtos com a letra C.
select*from tb_categoria where setor like 'c%';

#select com Inner join entre  tabela categoria e produto.
select * from tb_categoria inner join 
tb_produto on tb_categoria.id_categoria = tb_produto.id_produto;

#select onde traga todos os Produtos de uma categoria específica
select*from tb_categoria where tipo like 'suina';
