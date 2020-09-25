create database db_generation_game_online;
use db_generation_game_online;

#tb_personagem e tb_classe
create table tb_personagem(
id_personagem int not null auto_increment, 
nome varchar(30),
ferramenta enum('Espada','Escudo','Cajado','arco'),
ataque int,
defesa int, 
primary key (id_personagem) #aqui vai a primary key e você coloca ( o campo que quer referenciar) -> no caso id_personagem
);

create table tb_classe(
id_classe int not null auto_increment,
categoria enum('Rei','Mago','Guerreiro'),
reino enum('Agua','Terra','Fogo','Ar'),
id_personagem int,
primary key (id_classe),
constraint fk_chave foreign key(id_personagem) references tb_personagem(id_personagem)
);

select*from tb_personagem;
select*from tb_classe; 

select * from tb_personagem inner join 
tb_classe on tb_classe.id_personagem = tb_personagem.id_personagem;


 select *from tb_personagem where ataque >2000;
 select *from tb_personagem where defesa >1000 and defesa <4000;
 select*from tb_personagem where nome like 'c%';
