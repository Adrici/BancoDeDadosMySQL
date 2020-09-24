create database db_empresaRH;
use db_empresaRH;

create table tb_funcionarios (
	id_funcionarios int not null auto_increment,
    nome varchar(45), 
    nascimento date, 
    cargo varchar(45),
    salario double(10, 2),
    primary key(id_funcionarios)
); 


select * from tb_funcionarios;

select * from tb_funcionarios where salario>2000.00;
select * from tb_funcionarios where salario<2000.00;

 update tb_funcionarios set salario = 8000.00 where id_funcionarios = 3 limit 1;


