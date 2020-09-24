create database db_escola;
use db_escola;

create table tb_alunos (
	id_aluno int not null auto_increment,
    nome varchar(45), 
    nascimento date, 
    turma varchar(45),
    nota double(10, 2),
    primary key(id_aluno)
); 


select * from tb_alunos;

select * from tb_alunos where nota>7;
select * from tb_alunos where nota<7;

#delete from tb_alunos where id_aluno = 6; 

update tb_alunos set nota = 6.5 where id_aluno = 5 limit 1;