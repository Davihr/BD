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