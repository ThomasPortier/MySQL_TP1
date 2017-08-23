USE base_tp;

 INSERT INTO Commande (nom, date_du_jour, total)
  VALUES ('Karadoc', curdate(), 18), 
		 ('Perceval', curdate(), 26);

 
 INSERT INTO Plat (nom, tarif)
 VALUES ('Poulet Artichaud', 18),
		('Le Plateau du Chevalier', 26);

 
 INSERT INTO Ingredient (nom)
 VALUES ('Poulet'),
		('Artichaud'),
        ('Saucisson de Chèvre'),
        ('Fromage de Brebis'),
		('Miche de Pain');
 
 INSERT INTO Commmande_plats (ID_Commande, ID_Plat)
 VALUES (1,2),							-- Karadoc a commandé le seconde plat declaré
		(2,1);							-- Perceval a commandé le premier plat declaré
 
 INSERT INTO Plat_ingredients (ID_Plat, ID_Ingredient, quantite)
 VALUES (1,1,3),  						-- le plat (poulet artichaud) contient 3 poulet
		(1,2,1),						-- le plat (poulet artichaud) contient 1 artichaud
        (2,3,1),
        (2,4,2),
        (2,5,3),
        (2,3,1);
 

 