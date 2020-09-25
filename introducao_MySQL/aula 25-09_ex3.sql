create database aula_select;
use aula_select;

create table clientes (
codigo_cliente int not null primary key,
nome varchar (50),
cidade varchar (10),
serie char (1)
);
CREATE table funcionarios (
		id int not null auto_increment,
		nome varchar(30) NOT NULL,
		nascimento date,
		sexo enum ('M','F'),
		peso decimal(5,2),
		altura decimal(3,2),
		nacionalidade varchar(20) DEFAULT 'Brasil',
		primary key (id));

Insert into funcionarios values ('1','Alex', '2018-02-03','M','68.5','2.50', 'Brasil');
Insert into funcionarios values 
		('2','Gabriela', '1998-02-03','F','58.5','1.60', 'Brasil'),     
		('3','Daniela', '1995-02-03','F','56.5','1.57', 'Brasil');

select id, nom from funcionarios;

select * from funcionarios where id = 3;

select * from funcionarios where nome  = 'Gabriela';

select COUNT(*) From funcionarios; 

# quando começar com a letra 'g' 
select * from funcionarios where nome  like 'g%';

# quando acabar com a letra 'a' 
select * from funcionarios where nome  like 'g%';

select * from funcionarios where sexo = 'F' and nacionalidade = 'Brasil';

#quando conter os caracteres abriel (exemplo gabriela e gabriel)
select*from funcionarios where nome like '%abriel%';

# quando a segunda letra for o L... porque o under line indica que há uma letra  antes do 'l'.
# se voce quiser outras posições, use um  underline para cada posição anterior, entao mostrará a prox. 
select* from funcionarios where nome like '_l%';

select*from funcionarios where altura > 2; 

Insert into funcionarios values 
		('1','Alex', '2018-02-03','M','68.5','2.50', 'Brasil');
Insert into funcionarios values 
		('2','Gabriela', '1998-02-03','F','58.5','1.60', 'Brasil'),     
		('3','Daniela', '1995-02-03','F','56.5','1.57', 'Brasil');
