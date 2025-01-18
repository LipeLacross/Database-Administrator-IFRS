## 🌐 [English Version of README](README_EN.md)

# Curso de Administrador de Banco de Dados

Este repositório contém os projetos e atividades desenvolvidas durante o curso de **Administrador de Banco de Dados**, com foco em PostgreSQL e MySQL, aplicados a diferentes contextos como restaurantes, clínicas veterinárias, escolas, entre outros.

## 🔨 Funcionalidades do Projeto

Este projeto tem como objetivo a construção de bancos de dados relacionais, modelagem de dados, e consultas SQL. As funcionalidades implementadas incluem:

- Criação de tabelas e relacionamentos para diferentes tipos de negócios.
- População das tabelas com dados exemplo para simulação de operações.
- Implementação de diagramas de relacionamento (ER).

## ✔️ Técnicas e Tecnologias Utilizadas

- **PostgreSQL**: Banco de dados relacional utilizado para o armazenamento de dados.
- **MySQL**: Banco de dados relacional utilizado em projetos alternativos.
- **SQL**: Linguagem para criação de banco de dados e execução de consultas.
- **Diagramas ER**: Modelagem do banco de dados visual com representação das entidades e seus relacionamentos.

## 📁 Estrutura do Projeto

- **3 Prática de Banco de Dados PostgreSQL/**
    - **3.1 Criando e populando as tabelas Restaurante.sql**: Criação de tabelas de clientes, mesas, pedidos e itens do menu.
    - **3.12 Criação do Modelo ER Distribuidora.sql**: Modelo de dados para a gestão de distribuidora e fornecedores.
    - **3.3 Criando e populando as tabelas Eventos.sql**: Estrutura para gerenciamento de eventos e participantes.
    - **3.5 Criando e populando as tabelas Hotel.sql**: Criação de tabelas para gestão de clientes e reservas em hotéis.
    - **3.7 Criando e populando as tabelas Festival.sql**: Banco de dados para gestão de festivais e artistas.
    - **3.9 Criando e populando as tabelas Música.sql**: Criação de tabelas para controle de CDs, músicas e gravadoras.

- **4 Prática de Banco de Dados MySQL/**
    - **4.11 Criação das tabelas Clínica Veterinária.sql**: Tabelas para o gerenciamento de clientes e serviços veterinários.
    - **4.13 Populando as tabelas Clínica Veterinária.sql**: Inserção de dados fictícios para o exemplo.
    - **4.16 Criando e populando as tabelas Posto de Saúde.sql**: Estrutura para um posto de saúde.
    - **4.18 Criando e populando as tabelas Conto de Fadas.sql**: Exemplo lúdico de um banco de dados para contos de fadas.
    - **4.21 Criação do Modelo ER Empresa.sql**: Modelo para gestão de empresas e departamentos.
    - **4.23 Criação das Tabelas ER Escola.sql**: Banco de dados para controle de alunos e professores.

- **Diagrama ER 2.png**
- **Diagrama ER 3.png**
- **Diagrama ER.png**

## 🛠️ Abrir e rodar o projeto

Para abrir e rodar os projetos localmente, siga os passos abaixo:

1. **Instalar o PostgreSQL ou MySQL**:
    - O [PostgreSQL](https://www.postgresql.org/) ou [MySQL](https://www.mysql.com/) devem estar instalados em seu sistema.
    - Você pode verificar se já o tem instalado com:

      ```bash
      psql --version  # Para PostgreSQL
      mysql --version  # Para MySQL
      ```

    - Caso não tenha, faça o download e instalação dos bancos de dados.

2. **Clone o Repositório**:
    - Copie a URL do repositório e execute o comando abaixo no terminal:

      ```bash
      git clone <URL_DO_REPOSITORIO>
      ```

3. **Importe os Scripts SQL**:
    - Após clonar o repositório, acesse a pasta do projeto e execute os scripts SQL nos respectivos bancos de dados para criar as tabelas e popular com os dados.

      Para PostgreSQL:

      ```bash
      psql -U seu_usuario -d nome_do_banco -f caminho/para/script.sql
      ```

      Para MySQL:

      ```bash
      mysql -u seu_usuario -p nome_do_banco < caminho/para/script.sql
      ```

## 🌐 Deploy

O deploy dos bancos de dados pode ser feito utilizando serviços como **Heroku**, **AWS RDS** ou **Google Cloud SQL**. Abaixo estão as etapas básicas para fazer o deploy em um serviço de cloud:

1. **Criação do Banco de Dados na Plataforma de Deploy**:
    - Escolha um serviço de banco de dados gerenciado, como AWS RDS ou Google Cloud SQL.
    - Siga as instruções de criação de banco de dados na plataforma escolhida.

2. **Importação dos Dados**:
    - Após criar o banco de dados no serviço de cloud, faça a importação dos scripts SQL utilizando o terminal ou ferramenta de administração SQL oferecida pela plataforma.

3. **Configuração de Acesso**:
    - Configure as permissões de acesso remoto e os usuários do banco de dados conforme necessário para seu ambiente de produção.
