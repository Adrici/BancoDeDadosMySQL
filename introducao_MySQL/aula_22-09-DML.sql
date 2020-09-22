create database db_deletar;
use db_deletar;

create table consumidores (
	id int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(30)


);

insert into consumidores (nome) values
("Marcelo"),
("Julia");

select* from consumidores; 
delete from consumidores where id = 1;
select * from consumidores; 