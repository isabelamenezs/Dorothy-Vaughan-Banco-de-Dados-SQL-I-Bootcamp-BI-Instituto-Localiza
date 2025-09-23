-- Apagar tabelas antigas se existirem
DROP TABLE IF EXISTS MATRICULAS;
DROP TABLE IF EXISTS ALUNOS;
DROP TABLE IF EXISTS CURSOS;

-- Criar as novas tabelas
CREATE TABLE ALUNOS (
ID_ALUNO INT PRIMARY KEY,
NOME_ALUNO VARCHAR(150),
EMAIL VARCHAR(100),
DATA_INGRESSO DATE
);
CREATE TABLE CURSOS (
ID_CURSO INT PRIMARY KEY,
NOME_CURSO VARCHAR(100),
DEPARTAMENTO VARCHAR(100),
CREDITOS INT
);
CREATE TABLE MATRICULAS (
ID_MATRICULA INT PRIMARY KEY,
ID_ALUNO INT,
ID_CURSO INT,
NOTA_FINAL DECIMAL(4, 2),
FOREIGN KEY (ID_ALUNO) REFERENCES ALUNOS(ID_ALUNO),
FOREIGN KEY (ID_CURSO) REFERENCES CURSOS(ID_CURSO));

-- Inserir dados de exemplo
INSERT INTO ALUNOS (ID_ALUNO, NOME_ALUNO, EMAIL, DATA_INGRESSO) VALUES
(1, 'Lucas Martins', 'lucas.m@email.com', '2023-02-01'),
(2, 'Sofia Pereira', 'sofia.p@email.com', '2023-02-01'),
(3, 'Mariana Costa', 'mariana.c@email.com', '2022-08-01'),
(4, 'Rafael Santos', 'rafael.s@email.com', '2024-02-01');

-- Aluno novo, sem matrícula
INSERT INTO CURSOS (ID_CURSO, NOME_CURSO, DEPARTAMENTO, CREDITOS) VALUES
(101, 'Algoritmos e Programação', 'Ciência da Computação', 4),
(102, 'Cálculo I', 'Matemática', 6),
(103, 'Administração de Empresas', 'Gestão', 4),
(104, 'Estrutura de Dados', 'Ciência da Computação', 6);
INSERT INTO MATRICULAS (ID_MATRICULA, ID_ALUNO, ID_CURSO,NOTA_FINAL) VALUES
(1, 1, 101, 8.5),
(2, 1, 102, 7.0),
(3, 2, 101, 9.0),
(4, 2, 104, 8.8),
(5, 3, 103, 6.5);
