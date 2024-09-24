CREATE DATABASE cadastro1014;
USE cadastro1014;

CREATE TABLE salarios (
    id_salarios INT AUTO_INCREMENT PRIMARY KEY,
    valor_salario_mensal DECIMAL(10,2),
    salario_anual DECIMAL(10,2),
    desconto ENUM('sim', 'não'),
    valor_desconto DECIMAL(10,2)
);

CREATE TABLE horarios (
    id_horarios INT AUTO_INCREMENT PRIMARY KEY,
    horario_funcionamento DATETIME,
    horario_intervalo DATETIME
);

CREATE TABLE funcionarios (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,

    primeiro_nome VARCHAR(20) NOT NULL,
    segundo_nome VARCHAR(29) NOT NULL,
    ultimo_nome VARCHAR(20) NOT NULL,
    data_nascimento DATE,
    cpf CHAR(11) NOT NULL,
    rg CHAR(14) NOT NULL,
    endereco VARCHAR(75),
    cep CHAR(8),
    cidade VARCHAR(58) NOT NULL,
    telefone CHAR(11) NOT NULL,
    id_salarios INT NOT NULL,
    id_horarios INT NOT NULL,
    FOREIGN KEY (id_salarios) REFERENCES salarios(id_salarios),
    FOREIGN KEY (id_horarios) REFERENCES horarios(id_horarios)
);

CREATE TABLE gerente (
    id_gerente INT AUTO_INCREMENT PRIMARY KEY,
    id_funcionario INT NOT NULL,
    id_horarios INT NOT NULL,
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario),
    FOREIGN KEY (id_horarios) REFERENCES horarios(id_horarios)
);

CREATE TABLE departamentos (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nome_departamento VARCHAR(60),
    local_departamento VARCHAR(65),
    area_departamento VARCHAR(60),
    gerente ENUM('sim', 'não'),
    id_gerente INT NOT NULL,
    id_funcionario INT NOT NULL,
    id_horarios INT NOT NULL,
    FOREIGN KEY (id_gerente) REFERENCES gerente(id_gerente),
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario)
);


-- Inserindo dados na tabela salarios
INSERT INTO salarios (valor_salario_mensal, salario_anual, desconto, valor_desconto) VALUES
(1500.00, 18000.00, 'não', 0),
(2000.00, 24000.00, 'não', 0),
(2500.00, 30000.00, 'sim', 250.00);
-- Inserindo dados na tabela horarios
INSERT INTO horarios (horario_funcionamento, horario_intervalo) VALUES
('2024-01-01 08:00:00', '2024-01-01 12:00:00'),
('2024-01-01 09:00:00', '2024-01-01 13:00:00');

-- Inserindo dados na tabela funcionarios
INSERT INTO funcionarios (primeiro_nome, segundo_nome, ultimo_nome, data_nascimento, cpf, rg, endereco, cep, cidade, telefone, id_salarios, id_horarios) VALUES
('Davi', 'Duarte', 'Oliveira', '1995-12-25', '45678901233', '45678901', 'Rua do Sol, 456', '45678-901', 'Porto Alegre', '51945678901', 1, 1),
('Davi', 'Santos', 'Lima', '1991-07-30', '56789012344', '56789012', 'Rua das Estrelas, 567', '56789-012', 'Curitiba', '41956789012', 1, 1),
('Diogo', 'Bortoto', 'Costa', '1985-11-14', '67890123455', '67890123', 'Avenida do Parque, 678', '67890-123', 'Salvador', '71967890123', 2, 1),
('Emanuele', 'Ferreira', 'Souza', '1993-09-22', '78901234566', '78901234', 'Rua das Palmeiras, 789', '78901-234', 'Brasília', '61978901234', 2, 1),
('Gustavo', 'Ribeiro', 'Lopes', '1987-04-09', '89012345677', '89012345', 'Rua da Liberdade, 890', '89012-345', 'Fortaleza', '85989012345', 1, 1),
('João', 'Pedro', 'Alves', '1990-06-18', '90123456788', '90123456', 'Rua do Comércio, 901', '90123-456', 'Recife', '81999876543', 1, 1),
('Joyce', 'Martins', 'Silva', '1992-02-04', '01234567899', '01234567', 'Rua da Esperança, 12', '01234-567', 'Goiânia', '62987654321', 1, 1),
('Julia', 'Campos', 'Fernandes', '1989-08-17', '12345678910', '12345678', 'Rua do Horizonte, 123', '12345-678', 'Manaus', '92976543210', 1, 1),
('Kauan', 'Teixeira', 'Nunes', '1994-10-12', '23456789021', '23456789', 'Avenida das Américas, 234', '23456-789', 'Natal', '84965432109', 1, 1),
('Mateus', 'Fonseca', 'Melo', '1991-01-28', '34567890132', '34567890', 'Rua do Mar, 345', '34567-890', 'Vitória', '27954321098', 1, 1),
('Mateus', 'Vieira', 'Santos', '1993-03-21', '45678901243', '45678901', 'Rua da Serra, 456', '45678-901', 'Florianópolis', '48943210987', 1, 1),
('Matheus', 'Castellano', 'Pinto', '1988-05-30', '56789012354', '56789012', 'Rua do Vento, 567', '56789-012', 'Maceió', '82932109876', 2, 1),
('Miguel', 'Santos', 'Almeida', '1990-12-07', '67890123465', '67890123', 'Rua do Rio, 678', '67890-123', 'Belém', '91921098765', 2, 1),
('Nicolas', 'Ramos', 'Lima', '1994-09-16', '78901234576', '78901234', 'Rua da Lua, 789', '78901-234', 'São Luís', '98910987654', 2, 1),
('Pedro', 'Henrique', 'Souza', '1986-11-11', '89012345687', '89012345', 'Avenida Central, 890', '89012-345', 'Aracaju', '79909876543', 1, 1);

-- Exercício 1
SELECT primeiro_nome, ultimo_nome
FROM funcionarios
ORDER BY ultimo_nome;

-- Exercício 2
SELECT *
FROM funcionarios
ORDER BY cidade;

-- Exercício 3
SELECT *
FROM funcionarios
JOIN salarios ON funcionarios.id_salarios = salarios.id_salarios
WHERE salarios.valor_salario_mensal > 1000
ORDER BY primeiro_nome, segundo_nome, ultimo_nome;

-- Exercício 4
SELECT data_nascimento, primeiro_nome
FROM funcionarios
ORDER BY data_nascimento DESC, primeiro_nome;

-- Exercício 5
SELECT ultimo_nome, primeiro_nome, segundo_nome, telefone, endereco, cidade
FROM funcionarios
ORDER BY ultimo_nome, primeiro_nome, segundo_nome;

-- Exercício 7
SELECT F.primeiro_nome, D.Nome,
F.Funcao

FROM funcionarios F JOIN
departamentos D

ON F.id_departamento = D.Codigo

ORDER BY F.primeiro_nome



CREATE DATABASE cadastro1014;
USE cadastro1014;

CREATE TABLE salarios (
    id_salarios INT AUTO_INCREMENT PRIMARY KEY,
    valor_salario_mensal DECIMAL(10,2),
    salario_anual DECIMAL(10,2),
    desconto ENUM('sim', 'não'),
    valor_desconto DECIMAL(10,2)
);

CREATE TABLE horarios (
    id_horarios INT AUTO_INCREMENT PRIMARY KEY,
    horario_funcionamento DATETIME,
    horario_intervalo DATETIME
);

CREATE TABLE funcionarios (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,

    primeiro_nome VARCHAR(20) NOT NULL,
    segundo_nome VARCHAR(29) NOT NULL,
    ultimo_nome VARCHAR(20) NOT NULL,
    data_nascimento DATE,
    cpf CHAR(11) NOT NULL,
    rg CHAR(14) NOT NULL,
    endereco VARCHAR(75),
    cep CHAR(8),
    cidade VARCHAR(58) NOT NULL,
    telefone CHAR(11) NOT NULL,
    id_salarios INT NOT NULL,
    id_horarios INT NOT NULL,
    FOREIGN KEY (id_salarios) REFERENCES salarios(id_salarios),
    FOREIGN KEY (id_horarios) REFERENCES horarios(id_horarios)
);

CREATE TABLE gerente (
    id_gerente INT AUTO_INCREMENT PRIMARY KEY,
    id_funcionario INT NOT NULL,
    id_horarios INT NOT NULL,
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario),
    FOREIGN KEY (id_horarios) REFERENCES horarios(id_horarios)
);

CREATE TABLE departamentos (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nome_departamento VARCHAR(60),
    local_departamento VARCHAR(65),
    area_departamento VARCHAR(60),
    gerente ENUM('sim', 'não'),
    id_gerente INT NOT NULL,
    id_funcionario INT NOT NULL,
    id_horarios INT NOT NULL,
    FOREIGN KEY (id_gerente) REFERENCES gerente(id_gerente),
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario)
);


-- Inserindo dados na tabela salarios
INSERT INTO salarios (valor_salario_mensal, salario_anual, desconto, valor_desconto) VALUES
(1500.00, 18000.00, 'não', 0),
(2000.00, 24000.00, 'não', 0),
(2500.00, 30000.00, 'sim', 250.00);
-- Inserindo dados na tabela horarios
INSERT INTO horarios (horario_funcionamento, horario_intervalo) VALUES
('2024-01-01 08:00:00', '2024-01-01 12:00:00'),
('2024-01-01 09:00:00', '2024-01-01 13:00:00');

-- Inserindo dados na tabela funcionarios
INSERT INTO funcionarios (primeiro_nome, segundo_nome, ultimo_nome, data_nascimento, cpf, rg, endereco, cep, cidade, telefone, id_salarios, id_horarios) VALUES
('Davi', 'Duarte', 'Oliveira', '1995-12-25', '45678901233', '45678901', 'Rua do Sol, 456', '45678-901', 'Porto Alegre', '51945678901', 1, 1),
('Davi', 'Santos', 'Lima', '1991-07-30', '56789012344', '56789012', 'Rua das Estrelas, 567', '56789-012', 'Curitiba', '41956789012', 1, 1),
('Diogo', 'Bortoto', 'Costa', '1985-11-14', '67890123455', '67890123', 'Avenida do Parque, 678', '67890-123', 'Salvador', '71967890123', 2, 1),
('Emanuele', 'Ferreira', 'Souza', '1993-09-22', '78901234566', '78901234', 'Rua das Palmeiras, 789', '78901-234', 'Brasília', '61978901234', 2, 1),
('Gustavo', 'Ribeiro', 'Lopes', '1987-04-09', '89012345677', '89012345', 'Rua da Liberdade, 890', '89012-345', 'Fortaleza', '85989012345', 1, 1),
('João', 'Pedro', 'Alves', '1990-06-18', '90123456788', '90123456', 'Rua do Comércio, 901', '90123-456', 'Recife', '81999876543', 1, 1),
('Joyce', 'Martins', 'Silva', '1992-02-04', '01234567899', '01234567', 'Rua da Esperança, 12', '01234-567', 'Goiânia', '62987654321', 1, 1),
('Julia', 'Campos', 'Fernandes', '1989-08-17', '12345678910', '12345678', 'Rua do Horizonte, 123', '12345-678', 'Manaus', '92976543210', 1, 1),
('Kauan', 'Teixeira', 'Nunes', '1994-10-12', '23456789021', '23456789', 'Avenida das Américas, 234', '23456-789', 'Natal', '84965432109', 1, 1),
('Mateus', 'Fonseca', 'Melo', '1991-01-28', '34567890132', '34567890', 'Rua do Mar, 345', '34567-890', 'Vitória', '27954321098', 1, 1),
('Mateus', 'Vieira', 'Santos', '1993-03-21', '45678901243', '45678901', 'Rua da Serra, 456', '45678-901', 'Florianópolis', '48943210987', 1, 1),
('Matheus', 'Castellano', 'Pinto', '1988-05-30', '56789012354', '56789012', 'Rua do Vento, 567', '56789-012', 'Maceió', '82932109876', 2, 1),
('Miguel', 'Santos', 'Almeida', '1990-12-07', '67890123465', '67890123', 'Rua do Rio, 678', '67890-123', 'Belém', '91921098765', 2, 1),
('Nicolas', 'Ramos', 'Lima', '1994-09-16', '78901234576', '78901234', 'Rua da Lua, 789', '78901-234', 'São Luís', '98910987654', 2, 1),
('Pedro', 'Henrique', 'Souza', '1986-11-11', '89012345687', '89012345', 'Avenida Central, 890', '89012-345', 'Aracaju', '79909876543', 1, 1);

-- Exercício 1
SELECT primeiro_nome, ultimo_nome
FROM funcionarios
ORDER BY ultimo_nome;

-- Exercício 2
SELECT *
FROM funcionarios
ORDER BY cidade;

-- Exercício 3
SELECT *
FROM funcionarios
JOIN salarios ON funcionarios.id_salarios = salarios.id_salarios
WHERE salarios.valor_salario_mensal > 1000
ORDER BY primeiro_nome, segundo_nome, ultimo_nome;

-- Exercício 4
SELECT data_nascimento, primeiro_nome
FROM funcionarios
ORDER BY data_nascimento DESC, primeiro_nome;

-- Exercício 5
SELECT ultimo_nome, primeiro_nome, segundo_nome, telefone, endereco, cidade
FROM funcionarios
ORDER BY ultimo_nome, primeiro_nome, segundo_nome;

-- Exercício 7
SELECT F.primeiro_nome, D.Nome,
F.Funcao

FROM funcionarios F JOIN
departamentos D

ON F.id_departamento = D.Codigo

ORDER BY F.primeiro_nome



