#  Projeto de Modelagem de Banco de Dados 

Projeto acadêmico desenvolvido durante os estudos de **Data Science na FIAP**, com foco em **Modelagem de Dados, SQL e Banco de Dados Relacional**.

A proposta do projeto é estruturar um banco de dados para uma plataforma de música, permitindo representar usuários, artistas, músicas, playlists e relacionamentos entre essas entidades.

---

## 🗂️ Sobre o Projeto

O projeto envolve a criação de um modelo de dados relacional capaz de representar diferentes informações de uma plataforma musical.

Entre as principais entidades estão:

* 👤 **Usuário**
* 🎤 **Artista**
* 🎵 **Música**
* 🎧 **Ouvinte**
* 📀 **Playlist**
* 📋 **Item da Playlist**
* 👥 **Seguidores**

A modelagem busca organizar os dados de forma estruturada, estabelecendo **chaves primárias, chaves estrangeiras e relacionamentos** entre as entidades.

---

## 🛠️ Tecnologias e Ferramentas

![SQL](https://img.shields.io/badge/SQL-Database-blue?style=for-the-badge)

![MySQL](https://img.shields.io/badge/MySQL-Database-4479A1?style=for-the-badge\&logo=mysql\&logoColor=white)

![Oracle](https://img.shields.io/badge/Oracle-Database-F80000?style=for-the-badge&logo=oracle&logoColor=white)

![GitHub](https://img.shields.io/badge/GitHub-Repository-181717?style=for-the-badge\&logo=github\&logoColor=white)

![FIAP](https://img.shields.io/badge/FIAP-Data%20Science-EC4899?style=for-the-badge)

### Principais conceitos utilizados

* SQL
* Oracle
* Banco de Dados Relacional
* Modelagem de Dados
* Modelo Entidade-Relacionamento (MER)
* Chaves Primárias (PK)
* Chaves Estrangeiras (FK)
* Relacionamentos entre entidades
* Criação de tabelas
* Restrições de integridade
* Git e GitHub

---

## 🧩 Estrutura do Banco

O modelo é composto pelas seguintes entidades:

| Entidade        | Descrição                            |
| --------------- | ------------------------------------ |
| `usuario`       | Armazena informações dos usuários    |
| `ouvinte`       | Representa os ouvintes da plataforma |
| `artista`       | Armazena informações dos artistas    |
| `musica`        | Contém as músicas disponíveis        |
| `playlist`      | Representa as playlists criadas      |
| `item_playlist` | Relaciona músicas e playlists        |
| `seguidores`    | Representa relações de seguidores    |

---

## 🗃️ Estrutura SQL

Os scripts SQL do projeto são utilizados para criação e estruturação do banco de dados.

Exemplo:

```sql
CREATE TABLE usuario (
    id_usuario INT PRIMARY KEY,
    nome_usuario VARCHAR(45)
);
```

O código utiliza a linguagem **SQL** para definição da estrutura do banco de dados.

---

## 📐 Modelagem

O projeto parte da construção de um **Modelo Entidade-Relacionamento (MER)** para representar visualmente as entidades e seus relacionamentos.

A partir da modelagem, o modelo pode ser transformado em uma estrutura relacional utilizando tabelas, chaves e restrições.

### Exemplo de relacionamento

```text
USUARIO
   │
   └── OUvinte
          │
          └── PLAYLIST
                 │
                 └── ITEM_PLAYLIST
                        │
                        └── MUSICA
                               │
                               └── ARTISTA
```

---

## 📁 Organização do Repositório

```text
projeto-modelagem-musical/
│
├── README.md
│
├── sql/
│   └── database.sql
│
└── modelo/
    └── modelo-relacional.png
```

---

## 🎯 Objetivos de Aprendizado

Com este projeto, foram trabalhados conceitos relacionados a:

* Estruturação de bancos de dados relacionais;
* Identificação de entidades e atributos;
* Definição de relacionamentos;
* Utilização de chaves primárias e estrangeiras;
* Escrita de comandos SQL;
* Organização de scripts de banco de dados;
* Versionamento de projetos utilizando Git e GitHub.

---

## 👩‍💻 Autora

**Cecília F. Souza**

🎓 Estudante de **Data Science — FIAP**

💻 Data Science | Python | SQL | Power BI | AWS | Git

---

Projeto desenvolvido para fins acadêmicos e de aprendizado em **Modelagem de Dados e SQL**.

