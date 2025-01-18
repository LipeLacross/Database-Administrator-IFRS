-- Tabela de eventos
CREATE TABLE eventos (
                         id_evento SERIAL PRIMARY KEY,
                         nome_evento VARCHAR(255) NOT NULL,
                         data_evento DATE NOT NULL,
                         local_evento VARCHAR(255) NOT NULL,
                         descricao_evento TEXT,
                         preco_evento NUMERIC(8,2) NOT NULL
);

-- Tabela de participantes
CREATE TABLE participantes (
                               id_participante SERIAL PRIMARY KEY,
                               nome_participante VARCHAR(255) NOT NULL,
                               email_participante VARCHAR(255) NOT NULL,
                               telefone_participante VARCHAR(20) NOT NULL,
                               idade_participante INTEGER,
                               empresa_participante VARCHAR(255)
);

-- Tabela de inscrições
CREATE TABLE inscricoes (
                            id_inscricao SERIAL PRIMARY KEY,
                            id_participante INTEGER REFERENCES participantes (id_participante),
                            id_evento INTEGER REFERENCES eventos (id_evento),
                            data_inscricao TIMESTAMP DEFAULT NOW()
);

-- Inserir eventos
INSERT INTO eventos (nome_evento, data_evento, local_evento, descricao_evento, preco_evento)
VALUES
    ('Conferência de Tecnologia', '2023-09-01', 'Centro de Convenções', 'Uma conferência para discutir as últimas tendências em tecnologia', 250.00),
    ('Show de Rock', '2023-07-15', 'Estádio de Futebol', 'Um show de rock com bandas famosas', 80.00);

-- Inserir participantes
INSERT INTO participantes (nome_participante, email_participante, telefone_participante, idade_participante, empresa_participante)
VALUES
    ('João Silva', 'joao.silva@email.com', '(11) 99999-9999', 32, 'Empresa X'),
    ('Maria Souza', 'maria.souza@email.com', '(21) 99999-9999', 28, '');

-- Inserir inscrições
INSERT INTO inscricoes (id_participante, id_evento, data_inscricao)
VALUES
    (1, 1, '2023-08-01 14:30:00'),
    (2, 2, '2023-06-15 10:00:00');
