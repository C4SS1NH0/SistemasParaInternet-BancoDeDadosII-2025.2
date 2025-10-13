CREATE DATABASE blog_de_notícias;

USE blog_de_notícias;

CREATE TABLE autores (
	id_autor INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
    );
    
    CREATE TABLE post (
		id_post INT PRIMARY KEY,
        titulo VARCHAR(150) NOT NULL,
        conteudo TEXT NOT NULL ,
        data_da_publicacão TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        id_autor INT,
        FOREIGN KEY(id_autor) REFERENCES autores(id_autor)
        );
