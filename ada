CREATE DATABASE EmpresaLegal22;
USE EmpresaLegal22
;

CREATE TABLE Funcionarios(
    Codigo INT AUTO_INCREMENT PRIMARY KEY,
    PrimeiroNome VARCHAR(50),
    SegundoNome VARCHAR(50),
    UltimoNome VARCHAR(50),
    DataNasci DATE,
    CPF VARCHAR(11),
    RG VARCHAR(10),
    Endereco VARCHAR(100),
    CEP VARCHAR(10),
    Cidade VARCHAR(50),
    Fone VARCHAR(15),
    CodigoDepartamento INT,
    Funcao VARCHAR(50),
    Salario DECIMAL(10, 2)
    
);


-- Criação da Tabela Departamentos
CREATE TABLE Departamentos (
    CodigoDepartamento INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50),
    Localizacao VARCHAR(100),
    CodigoFuncionarioGerente INT
);


-- Inserção de Dados na Tabela Funcionarios
INSERT INTO Funcionarios (PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, Endereco, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario) VALUES
    ('Victor', 'Almeida', 'Silva', '1990-01-10', '12345678900', '12345678', 'Rua das Flores, 123', '12345-678', 'São Paulo', '(11) 91234-5678', 1, 'Analista', 1200.00),
    ('Bruno', 'Silva', 'Souza', '1988-05-15', '23456789011', '23456789', 'Avenida Brasil, 234', '23456-789', 'Rio de Janeiro', '(21) 92345-6789', 1, 'Gerente', 2500.00),
    ('Christakis', 'Moreira', 'Pereira', '1992-03-20', '34567890122', '34567890', 'Rua da Paz, 345', '34567-890', 'Belo Horizonte', '(31) 93456-7890', 2, 'Desenvolvedor', 1800.00),
    ('Davi', null, 'Oliveira', '1995-12-25', '45678901233', '45678901', 'Rua do Sol, 456', '45678-901', 'Porto Alegre', '(51) 94567-8901', 2, 'Estagiário', 800.00),
    ('Davi', 'Santos', 'Lima', '1991-07-30', '56789012344', '56789012', 'Rua das Estrelas, 567', '56789-012', 'Curitiba', '(41) 95678-9012', 3, 'Analista', 1500.00),
    ('Diogo', 'Bortoto', 'Costa', '1985-11-14', '67890123455', '67890123', 'Avenida do Parque, 678', '67890-123', 'Salvador', '(71) 96789-0123', 3, 'Gerente', 3000.00),
    ('Emanuele', null, 'Souza', '1993-09-22', '78901234566', '78901234', 'Rua das Palmeiras, 789', '78901-234', 'Brasília', '(61) 97890-1234', 4, 'Designer', 1600.00),
    ('Gustavo', 'Ribeiro', 'Lopes', '1987-04-09', '89012345677', '89012345', 'Rua da Liberdade, 890', '89012-345', 'Fortaleza', '(85) 98901-2345', 4, 'Analista', 1300.00),
    ('João', 'Pedro', 'Alves', '1990-06-18', '90123456788', '90123456', 'Rua do Comércio, 901', '90123-456', 'Recife', '(81) 99876-5432', 5, 'Gerente', 2800.00),
    ('Joyce', 'Martins', 'Silva', '1992-02-04', '01234567899', '01234567', 'Rua da Esperança, 12', '01234-567', 'Goiânia', '(62) 98765-4321', 5, 'Estagiário', 700.00),
    ('Julia', 'Campos', 'Fernandes', '1989-08-17', '12345678910', '12345678', 'Rua do Horizonte, 123', '12345-678', 'Manaus', '(92) 97654-3210', 1, 'Assistente', 1100.00),
    ('Kauan', 'Teixeira', 'Nunes', '1994-10-12', '23456789021', '23456789', 'Avenida das Américas, 234', '23456-789', 'Natal', '(84) 96543-2109', 2, 'Analista', 1200.00),
    ('Mateus', 'Fonseca', 'Melo', '1991-01-28', '34567890132', '34567890', 'Rua do Mar, 345', '34567-890', 'Vitória', '(27) 95432-1098', 3, 'Coordenador', 2000.00),
    ('Mateus', 'Vieira', 'Santos', '1993-03-21', '45678901243', '45678901', 'Rua da Serra, 456', '45678-901', 'Florianópolis', '(48) 94321-0987', 4, 'Analista', 1350.00),
    ('Matheus', 'Castellano', 'Pinto', '1988-05-30', '56789012354', '56789012', 'Rua do Vento, 567', '56789-012', 'Maceió', '(82) 93210-9876', 5, 'Gerente', 2900.00),
    ('Miguel', 'Santos', 'Almeida', '1990-12-07', '67890123465', '67890123', 'Rua do Rio, 678', '67890-123', 'Belém', '(91) 92109-8765', 1, 'Assistente', 1150.00),
    ('Nicolas', 'Ramos', 'Lima', '1994-09-16', '78901234576', '78901234', 'Rua da Lua, 789', '78901-234', 'São Luís', '(98) 91098-7654', 2, 'Supervisor', 2800.00),
    ('Pedro', 'Henrique', 'Souza', '1986-11-11', '89012345687', '89012345', 'Avenida Central, 890', '89012-345', 'Aracaju', '(79) 90987-6543', 3, 'Gerente', 3100.00),
	('wilker', null, 'Carvalho', '2000-12-07', '67890120065', '64490123', 'Rua do clara, 690', '12890-123', 'Recife', '(91) 6943-8765', 6, 'Telefonista', 1150.00);

-- Inserção de Dados na Tabela Departamentos
INSERT INTO Departamentos (Nome, Localizacao, CodigoFuncionarioGerente) VALUES
    ('Recursos Humanos', 'São Paulo', 2),
    ('Desenvolvimento', 'Rio de Janeiro', 3),
    ('Marketing', 'Belo Horizonte', 4),
    ('Vendas', 'Curitiba', 5),
    ('Financeiro', 'Salvador', 6),
    ('Pessoal', 'Brasília', 7);
    
    
    
    


-- Consultas dos Exercícios
-- Exercício 1
SELECT PrimeiroNome, UltimoNome 
FROM Funcionarios
ORDER BY UltimoNome;


-- Exercício 2
SELECT *
FROM Funcionarios 
ORDER BY Cidade;


-- Exercício 3
SELECT *
FROM Funcionarios 
WHERE Salario > 1000 
ORDER BY PrimeiroNome, SegundoNome, UltimoNome;


-- Exercício 4
SELECT DataNasci, PrimeiroNome 
FROM Funcionarios
ORDER BY DataNasci DESC, PrimeiroNome;


-- Exercício 5
SELECT UltimoNome, PrimeiroNome, SegundoNome, Fone, Endereco, Cidade
FROM Funcionarios
ORDER BY UltimoNome, PrimeiroNome, SegundoNome;


-- Exercício 6
SELECT SUM(Salario) AS Total 
FROM Funcionarios;


-- Exercício 7
SELECT F.PrimeiroNome, D.Nome AS NomeDepartamento, F.Funcao
FROM Funcionarios F 
JOIN Departamentos D ON F.CodigoDepartamento = D.Codigo
ORDER BY F.PrimeiroNome;


-- Exercício 8
SELECT D.Nome AS NomeDepartamento, F.PrimeiroNome AS NomeGerente 
FROM Departamentos D 
JOIN Funcionarios F ON D.CodigoFuncionarioGerente = F.Codigo
ORDER BY D.Nome;


-- Exercício 9
SELECT D.Nome AS NomeDepartamento, SUM(F.Salario) AS Total
FROM Departamentos D 
JOIN Funcionarios F ON D.Codigo = F.CodigoDepartamento
GROUP BY D.Nome
ORDER BY D.Nome;


-- Exercício 10: Departamentos dos funcionários que têm a função de supervisor
SELECT D.Nome AS Departamento, F.PrimeiroNome AS Supervisor  
FROM Departamentos D 
JOIN Funcionarios F ON D.Codigo = F.CodigoDepartamento 
WHERE F.Funcao = 'Supervisor' 
ORDER BY D.Nome;


-- Exercício 11: Quantidade de funcionários da empresa
SELECT COUNT(*) AS TotalFuncionarios 
FROM Funcionarios;


-- Exercício 12: Salário médio pago pela empresa
SELECT AVG(Salario) AS Media 
FROM Funcionarios;


-- Exercício 13: Menor salário pago pela empresa em cada departamento
SELECT D.Nome AS Departamento, MIN(F.Salario) AS MenorSalario
FROM Funcionarios F 
JOIN Departamentos D ON F.CodigoDepartamento = D.Codigo 
GROUP BY D.Nome;


-- Exercício 14: Nome completo de todos os funcionários que não tenham segundo nome
SELECT PrimeiroNome, SegundoNome,UltimoNome 
FROM Funcionarios 
WHERE SegundoNome IS NULL  
ORDER BY PrimeiroNome, UltimoNome;


-- Exercício 15: Nome do departamento e do funcionário ordenados por departamento e funcionário
SELECT D.Nome AS Departamento, F.PrimeiroNome AS Funcionário  
FROM Departamentos D 
JOIN Funcionarios F ON D.Codigo = F.CodigoDepartamento 
ORDER BY D.Nome, F.PrimeiroNome;


-- Exercício 16: Nomes dos funcionários que moram em Recife e que exerçam a função de Telefonista
SELECT F.PrimeiroNome AS NomeFuncionario, F.Salario, F.Funcao
FROM Funcionarios F  
WHERE F.Cidade = 'Recife' AND F.Funcao = 'Telefonista';


-- Exercício 17: Nomes dos funcionários que trabalham no departamento Pessoal
SELECT F.PrimeiroNome, D.Nome AS Departamento
FROM Funcionarios F
JOIN Departamentos D ON F.CodigoDepartamento = D.Codigo
WHERE D.Nome = 'Pessoal';



-- Exercício 18: Nome e departamento de todos os funcionários que ganham mais do que algum gerente
SELECT F.PrimeiroNome, D.Nome AS Departamento, F.Salario
FROM Funcionarios F 
JOIN Departamentos D ON F.CodigoDepartamento = D.Codigo 
WHERE F.Salario > ANY (
    SELECT Salario 
    FROM Funcionarios 
    WHERE Codigo IN (
        SELECT CodigoFuncionarioGerente 
        FROM Departamentos
    )
);
