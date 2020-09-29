CREATE DATABASE `db_construindo_a_nossa_vida`;
USE `db_construindo_a_nossa_vida`;
#drop DATABASE `db_construindo_a_nossa_vida`;

CREATE TABLE IF NOT EXISTS `tb_categoria`(
	`id_categoria` int(11) NOT NULL AUTO_INCREMENT,
    `departamento` enum ('Jardinagem', 'Banheiro', 'Cozinha', 'Ferramentas','Material de Construção'),
    `corredor_loja`enum ('Corredor A', 'Corredor B', 'Corredor C'),
	PRIMARY KEY (`id_categoria`)
    );
    
CREATE TABLE IF NOT EXISTS `tb_produto`(
	`id_produto` int(11) NOT NULL AUTO_INCREMENT,
    `nome_produto` varchar (255),
    `marca_produto` varchar (255),
    `preco` double (10,2),
    `quantidade` int,
    `id_categoria` int,
	PRIMARY KEY (`id_produto`),
    constraint fk_categoria FOREIGN KEY (`id_categoria`) REFERENCES tb_categoria(`id_categoria`)
);
    insert into tb_categoria (`id_categoria`, `departamento`, `corredor_loja`) values
	(1,'Ferramentas', 'Corredor A'),
    (2,'Jardinagem', 'Corredor B'),
	(3,'Cozinha', 'Corredor C'),
	(4,'Material de Construção', 'Corredor A'),
	(5,'Banheiro', 'Corredor C');


    insert into tb_produto (`nome_produto`, `marca_produto`, `preco`, `quantidade`, `id_categoria`) values
	('Martelo', 'Tramontina', '20.50', 2, 1),
    ('Regador', 'Fuzil', '30.99', 1, 2),
    ('Pia', 'Deca', '55.50', 1, 3),
    ('Cimento', 'Votoran', '70', 10, 4),
    ('Ducha', 'Lorenzetti', '40', 3, 5),
	('Banheira', 'Luxura', 2500, 1, 5);

        
    select * from tb_produto where `preco` > 50;
    
    select * from tb_produto where `preco` > 3 and `preco` < 60;
    
    select * from tb_produto where `nome_produto` like 'c%';
    
    select * from tb_categoria inner join tb_produto where tb_categoria.id_categoria = tb_produto.id_categoria;
    
    select * from tb_categoria where `departamento` like 'Banheiro';