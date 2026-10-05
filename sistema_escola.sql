CREATE DATABASE sistema_escola;

USE sistema_escola;

CREATE TABLE professores(
	id_professores INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    rp INT NOT NULL,
    disciplina VARCHAR(20) NOT NULL
);

CREATE TABLE alunos(
	id_alunos INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    ra INT NOT NULL
);

CREATE TABLE curso(
	id_curso INT AUTO_INCREMENT PRIMARY KEY,
	materia VARCHAR(50) NOT NULL,
    coordenador VARCHAR(50) NOT NULL,
    atividades VARCHAR(300) NOT NULL,
    id_professores INT,
    FOREIGN KEY (id_professores) REFERENCES professores(id_professores)
);

CREATE TABLE alunocurso(
	id_alunocurso INT AUTO_INCREMENT PRIMARY KEY,
	id_alunos INT,
    FOREIGN KEY (id_alunos) REFERENCES alunos(id_alunos),
	id_curso INT,
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);

-- 3 professores
INSERT INTO professores (nome, rp, disciplina) VALUES
('Carlos Silva', 1001, 'Matemática'),
('Ana Souza', 1002, 'Português'),
('João Santos', 1003, 'História');


-- 3 alunos
INSERT INTO alunos (nome, ra) VALUES
('Davi Cruz', 2026001),
('Lucas Oliveira', 2026002),
('Pedro Almeida', 2026003);


-- 3 cursos
INSERT INTO curso (materia, coordenador, atividades, id_professores) VALUES
('Matemática', 'Marcos Pereira', 'Lista de exercícios e prova mensal', 1),
('Português', 'Fernanda Costa', 'Redação e interpretação de texto', 2),
('História', 'Ricardo Lima', 'Trabalho sobre história do Brasil', 3);


-- 3 relações entre alunos e cursos
INSERT INTO alunocurso (id_alunos, id_curso) VALUES
(1, 1),
(2, 2),
(3, 3);