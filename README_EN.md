## 🌐 [Versão em Português do README](README.md)

# Database Administrator Course

This repository contains projects and activities developed during the **Database Administrator Course**, with a focus on PostgreSQL and MySQL, applied to different business contexts such as restaurants, veterinary clinics, schools, and more.

## 🔨 Project Features

This project aims to build relational databases, data modeling, and SQL queries. The features implemented include:

- Creating tables and relationships for different types of businesses.
- Populating tables with sample data for operations simulation.
- Implementing Entity-Relationship (ER) diagrams.

## ✔️ Techniques and Technologies Used

- **PostgreSQL**: Relational database used for data storage.
- **MySQL**: Relational database used for alternative projects.
- **SQL**: Language for database creation and query execution.
- **ER Diagrams**: Visual database modeling representing entities and their relationships.

## 📁 Project Structure

- **3 PostgreSQL Database Practice/**
    - **3.1 Creating and Populating Restaurant Tables.sql**: Creation of tables for customers, tables, orders, and menu items.
    - **3.12 Creating ER Model Distributor.sql**: Data model for distributor and supplier management.
    - **3.3 Creating and Populating Event Tables.sql**: Structure for managing events and participants.
    - **3.5 Creating and Populating Hotel Tables.sql**: Tables for managing customers and hotel bookings.
    - **3.7 Creating and Populating Festival Tables.sql**: Database for managing festivals and artists.
    - **3.9 Creating and Populating Music Tables.sql**: Creation of tables for controlling CDs, songs, and record labels.

- **4 MySQL Database Practice/**
    - **4.11 Creating Veterinary Clinic Tables.sql**: Tables for managing customers and veterinary services.
    - **4.13 Populating Veterinary Clinic Tables.sql**: Insertion of fictional data for the example.
    - **4.16 Creating and Populating Health Post Tables.sql**: Structure for a health post.
    - **4.18 Creating and Populating Fairy Tale Tables.sql**: A playful example of a database for fairy tales.
    - **4.21 Creating ER Model Company.sql**: Model for company and department management.
    - **4.23 Creating School ER Tables.sql**: Database for student and teacher management.

- **ER Diagram 2.png**
- **ER Diagram 3.png**
- **ER Diagram.png**

## 🛠️ Running the Project

To open and run the projects locally, follow these steps:

1. **Install PostgreSQL or MySQL**:
    - [PostgreSQL](https://www.postgresql.org/) or [MySQL](https://www.mysql.com/) must be installed on your system.
    - You can check if it's already installed by running:

      ```bash
      psql --version  # For PostgreSQL
      mysql --version  # For MySQL
      ```

    - If it's not installed, download and install the database software.

2. **Clone the Repository**:
    - Copy the repository URL and run the following command in your terminal:

      ```bash
      git clone <REPOSITORY_URL>
      ```

3. **Import SQL Scripts**:
    - After cloning the repository, navigate to the project folder and run the SQL scripts in the respective databases to create tables and populate them with data.

      For PostgreSQL:

      ```bash
      psql -U your_user -d database_name -f path/to/script.sql
      ```

      For MySQL:

      ```bash
      mysql -u your_user -p database_name < path/to/script.sql
      ```

## 🌐 Deploy

The deploy of databases can be done using services like **Heroku**, **AWS RDS**, or **Google Cloud SQL**. Below are the basic steps to deploy on a cloud service:

1. **Create the Database on the Deploy Platform**:
    - Choose a managed database service, such as AWS RDS or Google Cloud SQL.
    - Follow the instructions to create a database on the chosen platform.

2. **Import Data**:
    - After creating the database on the cloud service, import the SQL scripts using the terminal or the SQL management tool provided by the platform.

3. **Configure Access**:
    - Set up remote access permissions and database users as needed for your production environment.
