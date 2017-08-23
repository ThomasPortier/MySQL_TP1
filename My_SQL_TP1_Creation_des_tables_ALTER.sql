select sysdate() from dual;

DROP DATABASE base_tp;
CREATE DATABASE IF NOT EXISTS base_tp;
USE base_tp;

CREATE TABLE IF NOT EXISTS Commande
(
    ID_Commande INT PRIMARY KEY NOT NULL auto_increment,
    nom VARCHAR(100),
    date_du_jour DATE,
    total INT
    
);

CREATE TABLE IF NOT EXISTS Commmande_plats
(
    ID_Commande_plats INT PRIMARY KEY NOT NULL auto_increment,
    ID_Commande_CP INT NOT NULL, 
	ID_Plat_CP INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Plat
(
    ID_Plat INT PRIMARY KEY NOT NULL auto_increment,
    nom VARCHAR(100),
    tarif INT
);

CREATE TABLE IF NOT EXISTS Plat_ingredients
(
	 ID_Plat_PI INT,
	 ID_Ingredient_PI INT, 
    quantite INT
);

CREATE TABLE IF NOT EXISTS Ingredient
(
    ID_Ingredient INT PRIMARY KEY NOT NULL auto_increment,
	nom VARCHAR(100)
);


ALTER TABLE Commmande_plats
ADD CONSTRAINT FK_ID_C_Commande_plats FOREIGN KEY (ID_Commande_CP) REFERENCES Commande(ID_Commande),
ADD CONSTRAINT FK_ID_P_Commande_plats FOREIGN KEY (ID_Plat_CP) REFERENCES Plat(ID_Plat);

ALTER TABLE Plat_Ingredients
ADD CONSTRAINT FK_ID_P_Plat_Ingredient FOREIGN KEY (ID_Plat_PI) REFERENCES Plat(ID_Plat),
ADD CONSTRAINT FK_ID_I_Plat_Ingredient FOREIGN KEY (ID_Ingredient_PI) REFERENCES Ingredient(ID_Ingredient);



