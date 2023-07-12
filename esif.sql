-- Ceci cocerne la commande pour la cretion dune base de donnes --
CREATE DATABASE bd_esif_technologies;

 /*Ceci concerne la table des Categories*/
CREATE TABLE Categories (
    categorieID int NOT NULL AUTO_INCREMENT,
    nom_de_la_categorie  varchar(255),
    PRIMARY KEY (categorieID)
);

 /*Ceci concerne la table des Clients*/
CREATE TABLE Clients (
    clientID int NOT NULL AUTO_INCREMENT,
    nom_du_client varchar(255),
    prenom_du_client varchar (255),
    telephone_du_client int(255),
    email_du_client varchar(255),
    PRIMARY KEY (clientID)
);

 /*Ceci concerne la table des Articles*/
CREATE TABLE Articles (
    articleID int NOT NULL AUTO_INCREMENT,
    nom_de_l_article varchar(255),
    prix_de_article varchar(255),
    PRIMARY KEY (articleID),
    FOREIGN KEY (categorieID) REFERENCES Categories(categorieID)
);


 /*Ceci concerne la table des Ventes*/
CREATE TABLE Ventes (
    venteID int NOT NULL AUTO_INCREMENT,
    nom_de_l_article_vendu varchar(255),
    prix_de_l_article_vendu int(255),
    PRIMARY KEY (venteID),
    FOREIGN KEY (clientID) REFERENCES Clients(clientID),
    FOREIGN KEY (articleID) REFERENCES Articles(articleID)
);

 /*Ceci concerne la table des Fournisseurs*/
CREATE TABLE Fournisseurs (
    fournisseurID int NOT NULL AUTO_INCREMENT,
    nom_du_fournisseur varchar(255),
    telephone_du_fournisseur int(255),
    email_du_fournisseur varchar(255),
    nom_de_l_article_fournis varchar(255),
    prix_de_l_article_fournis int(20),
    PRIMARY KEY (fournisseurID)
);

 /*Ceci concerne la table des Achats*/
CREATE TABLE Achats (
    achatID int NOT NULL AUTO_INCREMENT,
    nom_de_l_article_acheter varchar(255),
    prix_de_l_article_acheter integer(20),
    PRIMARY KEY (achatID),
    FOREIGN KEY (fournisseurID) REFERENCES Fournisseurs(fournisseurID),
    FOREIGN KEY (articleID) REFERENCES Articles(articleID)
);

-- Ceci cocerne le INSERT TO de la table Categorie  --
INSERT INTO Categories (nom_de_la_categorie)
VALUES ('Ordinateur'),
VALUES ('Telephone'),
VALUES ('cle_usb'),
VALUES ('Cable'),
VALUES ('Souri');

-- Ceci cocerne le INSERT TO de la table Client  --
INSERT INTO Clients (nom_du_client, prenom_du_client, telephone_du_client, email_du_client,)
VALUES ('Ouedraogo', 'Ousseni', '54758546', 'Ouedraogoousseni@gmail.com'),
VALUES ('Ouedraogo', 'Ousseni', '54758546', 'Ouedraogoousseni@gmail.com'),
VALUES ('Ouedraogo', 'Ousseni', '54758546', 'Ouedraogoousseni@gmail.com'),
VALUES ('Ouedraogo', 'Ousseni', '54758546', 'Ouedraogoousseni@gmail.com'),
VALUES ('Ouedraogo', 'Ousseni', '54758546', 'Ouedraogoousseni@gmail.com');

-- Ceci cocerne le INSERT TO de la table Article  --
INSERT INTO Articles (nom_de_l_article, prix_de_article,)
VALUES ('Onduleur nxp', '0077777'),
VALUES ('Onduleur nxp', '0077777'),
VALUES ('Onduleur nxp', '0077777'),
VALUES ('Onduleur nxp', '0077777'),
VALUES ('Onduleur nxp', '0077777');

-- Ceci cocerne le INSERT TO de la table Vente  --
INSERT INTO Ventes (nom_de_l_article_vendu, prix_de_l_article_vendu,)
VALUES ('Tablette', '16150'),
VALUES ('Tabelette', '10150'),
VALUES ('Tablette', '10150'),
VALUES ('Tablette', '10150'),
VALUES ('Tablette', '10150'),;

-- Ceci cocerne le INSERT TO de la table Fournisseur  --
INSERT INTO Fournisseurs (nom_du_fournisseur, telephone_du_fournisseur_du_fournisseur, email_du_fournisseur, nom_de_l_article_fournis, prix_de_l_article_fournis,)
VALUES ('ETs NOUF', '64211212', 'etsnouf@gmail.com', 'HP Probook core i5', '700000'),
VALUES ('ETs NOUF', '64211212', 'etsnouf@gmail.com', 'HP Probook core i5', '700000'),
VALUES ('ETs NOUF, '64211212', 'etsnou@gmail.com', 'HP Probook core i5', '700000'),
VALUES ('ETs NOUF', '64211212', 'etsnouf@gmail.com', 'HP Probook core i5', '700000'),
VALUES ('ETs NOUF', '64211212', 'etsnouf@gmail.com', 'HP Probook core i5', '700000');

-- Ceci cocerne le INSERT TO de la table Achat  --
INSERT INTO Achats (nom_de_l_article_acheter, prix_de_l_article_acheter,)
VALUES ('Onduleur nxp', '64211212'),
VALUES ('Onduleur nxp', '64211212'),
VALUES ('Onduleur  nxp', '64211212'),
VALUES ('Onduleur  nxp', '64211212'),
VALUES ('Onduleur  nxp', '64211212');