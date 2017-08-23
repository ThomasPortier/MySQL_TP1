
USE base_tp;

SELECT Plat.nom as 'Nom du plat', Ingredient.nom as 'Nom ingredient' 
FROM Plat_Ingredients 
right join Plat on Plat.ID_Plat=Plat_Ingredients.ID_Plat
left join Ingredient on Ingredient.ID_Ingredient=Plat_Ingredients.ID_Ingredient;

