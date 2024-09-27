CREATE DATABASE Gersalarios_1E;


CREATE TABLE Cargo(
 Cargo_id int auto_increment primary key not null,
 Nome varchar (100) not null,
 Salario decimal (10,2) not null,
 descricao varchar (100)
);



CREATE TABLE Funcionario(
 ID INT auto_increment primary key NOT NULL,
 Nome varchar (50) not null,
 Sobrenome varchar (100) not null,
 Email varchar (50) not null,
 Cargo_id int not null,
 data_contratacao date not null,
 foreign key (Cargo_id) references Cargo (Cargo_id)
);

insert into Funcionario (Nome, sobrenome, Email,Cargo_id, data_contratacao)
     values ("Cecilia", "Seabra", "CeciliaSeabra@gmail.com", 1, "2024-02-10"),
			("Tainá", "Fogaça", "TaFogaça@gmail.com",3,"2023-11-24"),
            ("João Rafael", "Oliveira", "JRoliveira@gmail.com",2, "2024-02-01" ),
            ("Rafaella", "Seabra", "RafaSeabra@gmail.com",3,"2024-04-08" ),
            ("Rafael", "Lopes", "RafaelLopes@gmail.com",2,"2023-09-28" );

select * from Funcionario;


insert into Cargo (nome, salario, descricao)
  values ("DEV front end", 11000,"Trabalha na interface"),
          ("DEV back end", 15000, "trabalha nos bastidores"),
          ("DEV full stack", 20000, "Trabalha em ambos");
		
select * from Cargo;


#WHERE salario <=11000 and salario>=15000

#WHERE id = 1;



update Funcionario 
set data_contratacao = "2024-05-10"
where id = 1;

select * from Funcionario;

delete from Funcionario
where id = 4;

select * FROM Funcionario
where data_contratacao = "2024-02-01";

