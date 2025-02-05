-- Criar a tabela de autores
CREATE TABLE autor (
                       id INT AUTO_INCREMENT PRIMARY KEY,
                       nome VARCHAR(255) NOT NULL,
                       data_nascimento DATE
);

-- Criar a tabela de contos de fadas
CREATE TABLE conto_de_fadas (
                                id INT AUTO_INCREMENT PRIMARY KEY,
                                titulo VARCHAR(255) NOT NULL,
                                resumo TEXT,
                                data_publicacao DATE,
                                autor_id INT,
                                FOREIGN KEY (autor_id) REFERENCES autor(id)
);

-- Criar a tabela de tipos de personagem
CREATE TABLE tipo_personagem (
                                 id INT AUTO_INCREMENT PRIMARY KEY,
                                 descricao VARCHAR(255) NOT NULL
);

-- Criar a tabela de personagens
CREATE TABLE personagem (
                            id INT AUTO_INCREMENT PRIMARY KEY,
                            nome VARCHAR(255) NOT NULL,
                            descricao TEXT,
                            tipo_personagem_id INT,
                            conto_de_fadas_id INT,
                            FOREIGN KEY (tipo_personagem_id) REFERENCES tipo_personagem(id),
                            FOREIGN KEY (conto_de_fadas_id) REFERENCES conto_de_fadas(id)
);

-- Criar a tabela de interações entre personagens
CREATE TABLE interacao_personagem (
                                      id INT AUTO_INCREMENT PRIMARY KEY,
                                      personagem1_id INT,
                                      personagem2_id INT,
                                      descricao TEXT,
                                      FOREIGN KEY (personagem1_id) REFERENCES personagem(id),
                                      FOREIGN KEY (personagem2_id) REFERENCES personagem(id)
);

-- Inserir autores
INSERT INTO autor (nome, data_nascimento)
VALUES
    ('Irmãos Grimm', '1785-01-01'),
    ('Hans Christian Andersen', '1805-04-02');

-- Inserir contos de fadas
INSERT INTO conto_de_fadas (titulo, resumo, data_publicacao, autor_id)
VALUES
    ('Chapeuzinho Vermelho', 'Uma menina visita sua avó e encontra um lobo no caminho.', '1812-01-01', 1),
    ('A Pequena Sereia', 'Uma sereia se apaixona por um príncipe humano e deseja se tornar humana.', '1837-01-01', 2);

-- Inserir tipos de personagem
INSERT INTO tipo_personagem (descricao)
VALUES
    ('Herói'),
    ('Vilão'),
    ('Coajuvante');

-- Inserir personagens
INSERT INTO personagem (nome, descricao, tipo_personagem_id, conto_de_fadas_id)
VALUES
    ('Chapeuzinho Vermelho', 'Uma menina que usa um capuz vermelho.', 1, 1),
    ('Lobo Mau', 'Um lobo astuto e malvado.', 2, 1),
    ('Vovó', 'A avó de Chapeuzinho Vermelho.', 3, 1),
    ('Pequena Sereia', 'Uma sereia curiosa e apaixonada.', 1, 2),
    ('Príncipe', 'Um príncipe humano por quem a Pequena Sereia se apaixona.', 1, 2),
    ('Bruxa do Mar', 'Uma bruxa que faz um acordo com a Pequena Sereia.', 2, 2);

-- Inserir interações entre personagens
INSERT INTO interacao_personagem (personagem1_id, personagem2_id, descricao)
VALUES
    (1, 2, 'O Lobo Mau tenta enganar Chapeuzinho Vermelho.'),
    (2, 3, 'O Lobo Mau se disfarça de Vovó para enganar Chapeuzinho Vermelho.'),
    (4, 5, 'A Pequena Sereia salva o Príncipe de um naufrágio.');
