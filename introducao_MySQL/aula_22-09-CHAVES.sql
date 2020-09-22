create database db_chaves;
use db_chaves;

CREATE TABLE Pessoas (
	ID_Pessoa int PRIMARY KEY AUTO_INCREMENT,
    Nome varchar(255));
    
CREATE TABLE Carro(
	ID_Carro integer PRIMARY KEY AUTO_INCREMENT,
    Nome varchar(255),
    Marca varchar(255),
    ID_Pessoa integer,
    CONSTRAINT fk_Pessoas FOREIGN KEY (ID_Pessoa) REFERENCES Pessoas (ID_Pessoa));


insert into Pessoas (Nome) values ('Juliana'), ('Julio'), ('Marcio');

select * from Pessoas; 

insert into Carro (Nome, Marca, ID_Pessoa) values 
			('Gol', 'Wolks', 2), ('Palio', 'Fiat', 3);
            
truncate Pessoas; 

