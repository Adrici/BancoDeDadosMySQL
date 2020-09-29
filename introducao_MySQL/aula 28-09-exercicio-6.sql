CREATE DATABASE `db_cursoDaMinhaVida`;
USE `db_cursoDaMinhaVida`;
#drop DATABASE `db_cursoDaMinhaVida`;

CREATE TABLE IF NOT EXISTS `tb_categoria`(
	`id_categoria` int(11) NOT NULL AUTO_INCREMENT,
	`programacao` enum('Phyton', 'Java', 'C++', 'C#', 'MySQL'),
    `nivel` enum('Basico', 'Intermediario', 'Avancado'),
	PRIMARY KEY (`id_categoria`)
    );
    
CREATE TABLE IF NOT EXISTS `tb_curso`(
	`id_curso` int(11) NOT NULL AUTO_INCREMENT,
    `instituicao` varchar (255),
    `preco` double (6,2),
    `dias_semana` text,
    `duracao_meses` int,
    `id_categoria` int,
	PRIMARY KEY (`id_curso`),
    constraint fk_categoria FOREIGN KEY (`id_categoria`) REFERENCES tb_categoria(`id_categoria`)
);
    insert into tb_categoria ( `programacao`,`nivel`) values
	('Java','Basico'),
    ('Phyton','Avancado'),
	('C#','Intermediario'),
	('MySQL','Intermediario'),
	('C++','Basico');

    insert into tb_curso (`instituicao`, `preco`, `dias_semana`, `duracao_meses`, `id_categoria`) values
	('Generation', 0, 'Seg a Sex', 3, 1),
    ('Microlins', 35, 'Ter e Qui', 6, 2),
    ('Jovem Info', 50, 'Qua e Sex', 2, 3),
    ('Senai', 100, 'Seg a Sex', 12, 4),
    ('Senac', 150, 'Seg a Sex', 24, 5);
    
        
    select * from tb_curso where `preco` > 50;
    
    select * from tb_curso where `preco` > 3 and `preco` < 60;
    
    select * from tb_curso where `instituicao` like 'j%';
    
    select * from tb_categoria
    inner join tb_curso
    where tb_categoria.id_categoria= tb_curso.id_categoria;
    
    select * from tb_categoria where `programacao` like 'Phyton';