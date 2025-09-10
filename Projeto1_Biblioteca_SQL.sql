
-- Criação do banco de dados Biblioteca
CREATE DATABASE Biblioteca;
USE Biblioteca;

-- Tabela Livros
CREATE TABLE Livros (
    id_livro INT PRIMARY KEY,
    titulo VARCHAR(100),
    autor VARCHAR(100),
    genero VARCHAR(50),
    ano_publicacao INT
);

-- Tabela Alunos
CREATE TABLE Alunos (
    id_aluno INT PRIMARY KEY,
    nome VARCHAR(100),
    curso VARCHAR(50),
    matricula VARCHAR(20)
);

-- Tabela Emprestimos
CREATE TABLE Emprestimos (
    id_emprestimo INT PRIMARY KEY,
    id_livro INT,
    id_aluno INT,
    data_emprestimo DATE,
    data_devolucao DATE,
    FOREIGN KEY (id_livro) REFERENCES Livros(id_livro),
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno)
);

-- Inserindo dados fictícios
INSERT INTO Livros VALUES
(1, 'Dom Casmurro', 'Machado de Assis', 'Romance', 1899),
(2, '1984', 'George Orwell', 'Distopia', 1949),
(3, 'O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 'Infantil', 1943),
(4, 'Clean Code', 'Robert C. Martin', 'Tecnologia', 2008);

INSERT INTO Alunos VALUES
(1, 'Ana Silva', 'Engenharia', '2023001'),
(2, 'João Souza', 'Sistemas de Informação', '2023002'),
(3, 'Maria Oliveira', 'Administração', '2023003');

INSERT INTO Emprestimos VALUES
(1, 1, 1, '2023-01-10', '2023-01-20'),
(2, 2, 1, '2023-02-15', '2023-02-25'),
(3, 3, 2, '2023-03-01', NULL),
(4, 4, 3, '2023-03-05', '2023-03-15');

-- Consultas de exemplo
-- 1. Livros mais emprestados
SELECT Livros.titulo, COUNT(*) AS total_emprestimos
FROM Emprestimos
JOIN Livros ON Emprestimos.id_livro = Livros.id_livro
GROUP BY Livros.titulo
ORDER BY total_emprestimos DESC;

-- 2. Alunos que mais pegaram livros
SELECT Alunos.nome, COUNT(*) AS total_livros
FROM Emprestimos
JOIN Alunos ON Emprestimos.id_aluno = Alunos.id_aluno
GROUP BY Alunos.nome
ORDER BY total_livros DESC;

-- 3. Livros não devolvidos no prazo
SELECT Livros.titulo, Alunos.nome, Emprestimos.data_emprestimo
FROM Emprestimos
JOIN Livros ON Emprestimos.id_livro = Livros.id_livro
JOIN Alunos ON Emprestimos.id_aluno = Alunos.id_aluno
WHERE Emprestimos.data_devolucao IS NULL;
