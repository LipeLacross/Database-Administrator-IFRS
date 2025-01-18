
-- Criação da tabela aluno
CREATE TABLE aluno (
                       Matricula_aluno INT(3) PRIMARY KEY,
                       Nome_aluno CHAR(40),
                       Endereco VARCHAR(100),
                       Telefone INT(20),
                       Cidade CHAR(30)
);

-- Criação da tabela professor
CREATE TABLE professor (
                           Matricula_professor INT(3) PRIMARY KEY,
                           Nome_professor VARCHAR(255),
                           Titulacao VARCHAR(50),
                           Telefone VARCHAR(50),
                           Cidade VARCHAR(50)
);

-- Criação da tabela disciplina
CREATE TABLE disciplina (
                            cod_disciplina INT(3) PRIMARY KEY,
                            Nome_disciplina CHAR(30)
);

-- Criação da tabela turma
CREATE TABLE turma (
                       ano INT(4),
                       semestre INT(1),
                       cod_disciplina INT(3),
                       Matricula_professor INT(3),
                       PRIMARY KEY (ano, semestre, cod_disciplina),
                       FOREIGN KEY (cod_disciplina) REFERENCES disciplina(cod_disciplina),
                       FOREIGN KEY (Matricula_professor) REFERENCES professor(Matricula_professor)
);

-- Criação da tabela turma_aluno
CREATE TABLE turma_aluno (
                             ano INT(4),
                             semestre INT(1),
                             cod_disciplina INT(3),
                             Matricula_aluno INT(3),
                             PRIMARY KEY (ano, semestre, cod_disciplina, Matricula_aluno),
                             FOREIGN KEY (ano, semestre, cod_disciplina) REFERENCES turma(ano, semestre, cod_disciplina),
                             FOREIGN KEY (Matricula_aluno) REFERENCES aluno(Matricula_aluno)
);

-- Criação da tabela avaliacao
CREATE TABLE avaliacao (
                           ano INT(4),
                           semestre INT(1),
                           cod_disciplina INT(3),
                           Cod_avaliacao INT(3),
                           Peso INT(2),
                           PRIMARY KEY (ano, semestre, cod_disciplina, Cod_avaliacao),
                           FOREIGN KEY (cod_disciplina) REFERENCES disciplina(cod_disciplina)
);

-- Criação da tabela nota
CREATE TABLE nota (
                      ano INT(4),
                      semestre INT(1),
                      cod_disciplina INT(3),
                      Cod_avaliacao INT(3),
                      Matricula_aluno INT(3),
                      Nota INT(5),
                      PRIMARY KEY (ano, semestre, cod_disciplina, Cod_avaliacao, Matricula_aluno),
                      FOREIGN KEY (ano, semestre, cod_disciplina, Cod_avaliacao) REFERENCES avaliacao(ano, semestre, cod_disciplina, Cod_avaliacao),
                      FOREIGN KEY (Matricula_aluno) REFERENCES aluno(Matricula_aluno)
);
