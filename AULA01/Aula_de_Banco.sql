/* DDL - Comando de Definição de Estrutura*/
    create database biblioteca_uirapuru;
    
    /* Diz que será este o banco utilizado*/
    use biblioteca_uirapuru;
    
    create table livros(
		id int primary key,
        titulo varchar(60),
        autor varchar(70),
        preco decimal(10, 2),
        editora varchar(80),
        genero varchar(50),
        ano_publi int
    );
    
                                                                                                                                                                                                                                                                                                                                                   
    /* Removendo uma coluna da tabela */
    alter table livros drop genero;
    alter table livros drop editora;
    
    select * from livros;
    
    /* Comando para adicionar uma coluna */
    alter table livros add cnpj int;
    
    /* Comando para alterar uma coluna */
    alter table livros modify cnpj varchar(25);
    
 ALTER TABLE livros MODIFY titulo VARCHAR(60) NOT NULL;
 ALTER TABLE livros MODIFY autor VARCHAR(70) NOT NULL;
 
 DESC livros;
 
 ALTER TABLE livros DROP cnpj;
 
 SELECT * FROM livros;
 
 INSERT INTO livros (id, titulo, autor, preco, ano_publi) VALUES (1, "Smilley Creature", "Vinicius F.", 30.59, 2026);
 INSERT INTO livros (id, titulo, autor, preco, ano_publi) VALUES (2, "Harry Potter", "J.K. Rowlling", 45.56, 2002);
 INSERT INTO livros (id, titulo, autor, preco, ano_publi) VALUES (3, "Coraline", "Neil Gaiman", 35.56, 2002);
 
 UPDATE livros SET preco = 20.00 WHERE id = 1;
 
 TRUNCATE TABLE livros;
 
 DROP TABLE livros;