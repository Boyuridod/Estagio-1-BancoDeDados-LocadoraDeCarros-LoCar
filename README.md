# 🚗 Projeto de Banco de Dados — **LoCar**

Este repositório contém um **projeto de banco de dados relacional** desenvolvido como parte de um **treinamento corporativo**, baseado no curso da **Udemy**:

🔗 [**Curso SQL do Zero ao Avançado**](https://www.udemy.com/course/curso-sql-do-zero-ao-avancado/)

O objetivo do projeto é aplicar, de forma prática, os principais conceitos de **SQL**, **modelagem de dados** e **relacionamentos entre tabelas**, simulando o cenário de uma **locadora de veículos**.

---

## 🎯 Objetivo do Projeto

* Praticar **modelagem relacional**
* Trabalhar com **PRIMARY KEY** e **FOREIGN KEY**
* Criar e organizar scripts SQL por responsabilidade
* Inserir dados consistentes respeitando integridade referencial
* Criar **views** para consultas e relatórios

---

## 🛠️ Tecnologias Utilizadas

* 🐬 **MySQL**
* 💻 **SQL**
* 🧠 Conceitos de **Banco de Dados Relacional**
* 🧩 Modelagem lógica e integridade referencial

---

## 🧱 Estrutura do Banco de Dados

O banco de dados **`lo_car`** é composto pelas seguintes tabelas:

* 🏷️ **marcas** — cadastro das montadoras
* 🚘 **modelos** — modelos de veículos vinculados às marcas
* 🚗 **carros** — veículos disponíveis para locação
* 👤 **clientes** — clientes que realizam o aluguel

### 🔗 Relacionamentos

* Uma **marca** possui vários **modelos**
* Um **modelo** pode estar associado a vários **carros**
* Um **cliente** aluga um **carro** por um período

---

## 📊 Exemplos de Funcionalidades

* Cadastro de marcas e modelos de veículos
* Controle de veículos disponíveis para locação
* Registro de clientes e períodos de aluguel
* Consultas com **JOINs** entre múltiplas tabelas
* Criação de **VIEWs** para relatórios consolidados

---

## 🎓 Contexto Educacional

Este projeto foi desenvolvido como parte de um **curso realizado na Udemy**, aplicado em um **treinamento corporativo**, com foco em:

* Aprendizado prático de SQL
* Boas práticas de organização de scripts
* Preparação para cenários reais de mercado

---

<!-- ## 🚀 Próximos Passos (Evoluções Possíveis)

* 🔒 Criação de usuários e permissões
* ⚙️ Triggers para controle de aluguel
* 📈 Views de faturamento
* 🧮 Procedures armazenadas
* 🗂️ Índices para otimização

--- -->

## 👨‍💻 Autor

Projeto desenvolvido por **Yuri Duarte**

Como parte de um treinamento prático em **Banco de Dados e SQL**.