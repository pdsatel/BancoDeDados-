CREATE DATABASE cadastro2;
USE cadastro2 ;

create table funcionarios (
	id_funcionario int auto_increment primary key,
    primeiro_nome varchar(20) not null,
    segundo_nome varchar(29) not null,
    ultimo_nome  varchar(20) not null ,
    data_nascimento date,
    cpf int (11) not null, 	
    RG int (14) not null ,
    Endereço varchar (75),
    CEP varchar(8) ,
    Cidade varchar (58) not null,
    Telefone int (11) not null,
    id_salarios int not null,
    foreign key (salarios_id) references salarios(id_salarios),
    id_horarios int not null,
    foreign key (horarios_id) references horarios(id_horarios)
    );
 create table departamentos (
 codigo_DP	int auto_increment primary key,
 nome_departamento varchar (60),
 local_departamento varchar (65),
 area_departamento varchar (60),
 gerente enum('sim', 'não'),
 id_gerente int not null,
 foreign key (id_gerente)references gerente (id_gerente)
 );
 
 create table salarios (
 id_salarios int auto_increment primary key,
 valor_salario_mensal decimal(10,2),
 salario_anual decimal(10,2),
 desconto enum('sim', 'não'),
 valor_desconto decimal(10,2)
 );
 create table horarios(
 id_horarios int auto_increment primary key,
 horario_funcionamento datetime,
 horario_intervalo datetime,
 id_funcionario int not null,
 foreign key(id_funcionario) references funcionarios(id_funcionario)
 );
 create table gerente (
id_gerente int auto_increment primary key,
id_funcionario int not null,
foreign key (id_funcionario) references funcionarios(id_funcionario),
id_horarios int not null,
foreign key (id_horario) references horarios(id_horario)
);
	
