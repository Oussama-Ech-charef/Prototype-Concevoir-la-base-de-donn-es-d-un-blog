drop database if exists blog_db;
create database blog_db;
use blog_db;
CREATE TABLE utilisateur (
    id_utilisateur INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    email VARCHAR(100)  UNIQUE,
    mot_de_passe VARCHAR(50)
    
)COMMENT = 'Table de utilisateur';

CREATE TABLE categorie (
    id_categorie INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(30) NOT NULL
    
)COMMENT = 'Table de categorie';

CREATE TABLE article (
    id_article INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(50) NOT NULL,
    contenu TEXT NOT NULL,
    date_pub DATE ,
    statu ENUM('publier', 'draft'), 
    id_utilisateur INT,
    id_categorie INT,
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur),
    FOREIGN KEY (id_categorie) REFERENCES categorie(id_categorie)
    
)COMMENT = 'Table de artlicle';

CREATE TABLE commentaire (
    id_commentaire INT PRIMARY KEY AUTO_INCREMENT,
    contenu TEXT NOT NULL,
    date_pub DATE,
    id_utilisateur INT,
    id_article INT, 
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur),
    FOREIGN KEY (id_article) REFERENCES article(id_article)
    
)COMMENT = 'Table de commentaire';


