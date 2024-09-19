-- Criação do banco de dados e seleção
CREATE DATABASE cadastro;
USE cadastro ;

create table funcionarios (
	id_funcionario int auto_increment primary key,
    primeiro_nome varchar (20),
    segundo_nome varchar (20),
    ultimo_nome  varchar (20),
    data_nascimento datetime(8),
    cpf int (11),
    RG int (14),
    Endereço varchar (75),
    CEP varchar(8),
    Cidade varchar (58),
    Telefone int (11)
    );
 create table departamentos (
 codigo_DP	int auto_increment primary key,
 nome_departamento varchar (60),
 local_departamento varchar (65),
 area_departamento varchar (60)
 );
 
 create table salarios (
 id_salarios int auto_increment primary key,
 valor_salario_mensal decimal(10,2),
 salario_anual decimal(10,2),
 valor_desconto enum('sim', 'não'),
 
 
 
    
    
    
    





 
