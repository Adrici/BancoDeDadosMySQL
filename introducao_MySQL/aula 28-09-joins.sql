create database if not exists db_inner;
use db_inner;

create table if not exists funcionarios (
	funcionario_id int(11) not null auto_increment, 
	funcionario_nome varchar(255),
    funcionario_sobrenome varchar(255), 
    funcionario_idade varchar(255), 
    funcionario_genero enum('Outro', 'Masculino', 'Feminino'), 
    funcionario_data_cadastro datetime default now(), 
    primary key (funcionario_id)

);
#selec*from funcionarios
insert into funcionarios
(funcionario_id, funcionario_nome, funcionario_sobrenome, funcionario_idade, funcionario_genero) values 
(null, 'Luiz Otávio', 'Miranda Figueiredo', '27', 'Masculino'),
(null, 'Marcela', 'Souza', '27', 'Feminino'); 

select*from funcionarios; 
