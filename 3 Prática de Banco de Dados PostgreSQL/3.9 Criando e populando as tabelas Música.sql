-- Tabela de gravadoras
CREATE TABLE GRAVADORA (
                           Codigo_Gravadora     INTEGER NOT NULL,
                           Nome_Gravadora       CHAR(60) NULL,
                           Endereco             CHAR(60) NULL,
                           Telefone             CHAR(20) NULL,
                           Contato              CHAR(20) NULL,
                           URL                  CHAR(80) NULL
);
ALTER TABLE GRAVADORA
    ADD  CONSTRAINT XPKGRAVADORA PRIMARY KEY (Codigo_Gravadora);

-- Tabela de CDs
CREATE TABLE CD (
                    Codigo_CD            INTEGER NOT NULL,
                    Codigo_Gravadora     INTEGER NULL,
                    Nome_CD              CHAR(60) NULL,
                    Preco_Venda          NUMERIC(14,2) NULL,
                    Data_Lancamento      DATE NULL,
                    CD_Indicado          INTEGER NULL
);
ALTER TABLE CD ADD  CONSTRAINT XPKCD PRIMARY KEY (Codigo_CD);
alter table cd add estilo CHAR(20);
alter table cd add vendas NUMERIC(8,2);

-- Tabela de músicas
CREATE TABLE MUSICA (
                        Codigo_Musica        INTEGER NOT NULL,
                        Nome_Musica          CHAR(60) NULL,
                        Duracao              NUMERIC(6,2) NULL
);
ALTER TABLE MUSICA
    ADD  CONSTRAINT XPKMUSICA PRIMARY KEY (Codigo_Musica);

-- Tabela de autores
CREATE TABLE AUTOR (
                       Codigo_Autor         INTEGER NOT NULL,
                       Nome_Autor           CHAR(60) NULL
);
ALTER TABLE AUTOR
    ADD  CONSTRAINT XPKAUTOR PRIMARY KEY (Codigo_Autor);

-- Tabela de associação música-autor
CREATE TABLE MUSICA_AUTOR (
                              Codigo_Musica        INTEGER NOT NULL,
                              Codigo_Autor         INTEGER NOT NULL
);
ALTER TABLE MUSICA_AUTOR
    ADD  CONSTRAINT XPKMUSICA_AUTOR PRIMARY KEY (Codigo_Musica, Codigo_Autor);

-- Tabela de faixas
CREATE TABLE FAIXA (
                       Codigo_Musica        INTEGER NOT NULL,
                       Codigo_CD            INTEGER NOT NULL,
                       Numero_Faixa         INTEGER NULL
);
ALTER TABLE FAIXA ADD  CONSTRAINT XPKFAIXA PRIMARY KEY (Codigo_Musica, Codigo_CD);

-- Tabela de categorias de CDs
CREATE TABLE CD_CATEGORIA(
                             Codigo_Categoria   INTEGER    NOT NULL,
                             Menor_Preco        NUMERIC(14,2) NOT NULL,
                             Maior_Preco        NUMERIC(14,2) NOT NULL
);

-- Relações entre tabelas
ALTER TABLE CD
    ADD  CONSTRAINT GRAVADORA_CD  FOREIGN KEY (Codigo_Gravadora) REFERENCES GRAVADORA;
ALTER TABLE CD
    ADD  CONSTRAINT CD_CD FOREIGN KEY (CD_Indicado) REFERENCES CD;
ALTER TABLE MUSICA_AUTOR
    ADD  CONSTRAINT AUTOR_MUSICA_AUTOR FOREIGN KEY (Codigo_Autor) REFERENCES AUTOR;
ALTER TABLE MUSICA_AUTOR
    ADD  CONSTRAINT MUSICA_MUSICA_AUTOR FOREIGN KEY (Codigo_Musica) REFERENCES MUSICA;
ALTER TABLE FAIXA
    ADD  CONSTRAINT CD_FAIXA FOREIGN KEY (Codigo_CD) REFERENCES CD;
ALTER TABLE FAIXA
    ADD  CONSTRAINT MUSICA_FAIXA FOREIGN KEY (Codigo_Musica) REFERENCES MUSICA;

-- Inserção de dados nas tabelas
-- Inserir autores
INSERT INTO AUTOR (CODIGO_AUTOR, NOME_AUTOR) VALUES
                                                 (1, 'Renato Russo'), (2, 'Tom Jobim'), (3, 'Chico Buarque');

-- Inserir músicas
INSERT INTO MUSICA (CODIGO_MUSICA, NOME_MUSICA, DURACAO) VALUES
                                                             (1, 'Será', 2.28), (2, 'Ainda é Cedo', 3.55), (3, 'Geração Coca-Cola', 2.20);

-- Inserir gravadoras
INSERT INTO GRAVADORA (CODIGO_GRAVADORA, NOME_GRAVADORA, ENDERECO, URL, CONTATO) VALUES
    (1, 'EMI', 'Rod. Pres. Dutra', 'www.emi-music.com.br', 'João');

-- Inserir CDs
INSERT INTO CD (CODIGO_CD, CODIGO_GRAVADORA, NOME_CD, PRECO_VENDA, DATA_LANCAMENTO) VALUES
    (1, 1, 'Mais do Mesmo', 15.00, TO_DATE('01/10/1998', 'DD/MM/YYYY'));
UPDATE CD SET CD_INDICADO = 1, estilo = 'Bossa Nova', vendas = 2500 WHERE CODIGO_CD = 1;

-- Inserir faixas
INSERT INTO FAIXA (CODIGO_CD, NUMERO_FAIXA, CODIGO_MUSICA) VALUES
                                                               (1, 1, 1), (1, 2, 2), (1, 3, 3);

-- Inserir categorias de CDs
INSERT INTO CD_CATEGORIA (CODIGO_CATEGORIA, MENOR_PRECO, MAIOR_PRECO) VALUES
                                                                          (1, 5.00, 10.00), (2, 10.01, 15.00);

-- Inserir música-autor
INSERT INTO MUSICA_AUTOR (CODIGO_MUSICA, CODIGO_AUTOR) VALUES
                                                           (1, 1), (2, 2), (3, 3);
