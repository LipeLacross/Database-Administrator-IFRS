-- Tabela Fabricante
CREATE TABLE Fabricante (
                            cod_fabricante INTEGER PRIMARY KEY,
                            nome VARCHAR(100) NOT NULL,
                            cidade VARCHAR(100),
                            telefone VARCHAR(15)
);

-- Tabela Tipo_Produto
CREATE TABLE Tipo_Produto (
                              cod_tipo_produto INTEGER PRIMARY KEY,
                              nome VARCHAR(100) NOT NULL
);

-- Tabela Produto
CREATE TABLE Produto (
                         cod_produto INTEGER PRIMARY KEY,
                         cod_tipo_produto INTEGER,
                         cod_fabricante INTEGER,
                         nome VARCHAR(100) NOT NULL,
                         peso VARCHAR(50),
                         medida VARCHAR(50),
                         preco DOUBLE,
                         qtde_estoque INTEGER,
                         FOREIGN KEY (cod_tipo_produto) REFERENCES Tipo_Produto(cod_tipo_produto),
                         FOREIGN KEY (cod_fabricante) REFERENCES Fabricante(cod_fabricante)
);

-- Tabela Cargo
CREATE TABLE Cargo (
                       cod_cargo INTEGER PRIMARY KEY,
                       nome VARCHAR(100) NOT NULL,
                       salario_base DOUBLE
);

-- Tabela Funcionario
CREATE TABLE Funcionario (
                             cod_funcionario INTEGER PRIMARY KEY,
                             cod_cargo INTEGER,
                             nome VARCHAR(100) NOT NULL,
                             cidade VARCHAR(100),
                             ano_contratacao INTEGER,
                             FOREIGN KEY (cod_cargo) REFERENCES Cargo(cod_cargo)
);

-- Tabela Nota_fiscal
CREATE TABLE Nota_fiscal (
                             cod_nota_fiscal INTEGER PRIMARY KEY,
                             cod_transportadora INTEGER,
                             cod_funcionario INTEGER,
                             valor_frete DOUBLE,
                             FOREIGN KEY (cod_transportadora) REFERENCES Transportadora(cod_transportadora),
                             FOREIGN KEY (cod_funcionario) REFERENCES Funcionario(cod_funcionario)
);

-- Tabela Transportadora
CREATE TABLE Transportadora (
                                cod_transportadora INTEGER PRIMARY KEY,
                                nome VARCHAR(100) NOT NULL
);

-- Tabela Item_Nota
CREATE TABLE Item_Nota (
                           cod_nota_fiscal INTEGER,
                           cod_produto INTEGER,
                           quantidade INTEGER,
                           valor_unitario DOUBLE,
                           PRIMARY KEY (cod_nota_fiscal, cod_produto),
                           FOREIGN KEY (cod_nota_fiscal) REFERENCES Nota_fiscal(cod_nota_fiscal),
                           FOREIGN KEY (cod_produto) REFERENCES Produto(cod_produto)
);

-- Inserir Fabricantes
INSERT INTO Fabricante (cod_fabricante, nome, cidade, telefone) VALUES
                                                                    (1, 'Distribuidora Alpha', 'São Paulo', '1122334455'),
                                                                    (2, 'Distribuidora Beta', 'Rio de Janeiro', '2233445566');

-- Inserir Tipos de Produto
INSERT INTO Tipo_Produto (cod_tipo_produto, nome) VALUES
                                                      (1, 'Alimentos'),
                                                      (2, 'Bebidas');

-- Inserir Produtos
INSERT INTO Produto (cod_produto, cod_tipo_produto, cod_fabricante, nome, peso, medida, preco, qtde_estoque) VALUES
                                                                                                                 (1, 1, 1, 'Arroz 5kg', '5kg', 'Pacote', 20.50, 100),
                                                                                                                 (2, 2, 2, 'Refrigerante 2L', '2L', 'Garrafa', 8.00, 200);

-- Inserir Cargos
INSERT INTO Cargo (cod_cargo, nome, salario_base) VALUES
                                                      (1, 'Gerente', 5000.00),
                                                      (2, 'Vendedor', 2500.00);

-- Inserir Funcionários
INSERT INTO Funcionario (cod_funcionario, cod_cargo, nome, cidade, ano_contratacao) VALUES
                                                                                        (1, 1, 'Carlos Silva', 'São Paulo', 2015),
                                                                                        (2, 2, 'Ana Souza', 'Rio de Janeiro', 2018);

-- Inserir Transportadoras
INSERT INTO Transportadora (cod_transportadora, nome) VALUES
                                                          (1, 'Transportadora Rápida'),
                                                          (2, 'Transportadora Segura');

-- Inserir Notas Fiscais
INSERT INTO Nota_fiscal (cod_nota_fiscal, cod_transportadora, cod_funcionario, valor_frete) VALUES
                                                                                                (1, 1, 1, 150.00),
                                                                                                (2, 2, 2, 200.00);

-- Inserir Itens das Notas Fiscais
INSERT INTO Item_Nota (cod_nota_fiscal, cod_produto, quantidade, valor_unitario) VALUES
                                                                                     (1, 1, 10, 20.50),
                                                                                     (2, 2, 15, 8.00);
