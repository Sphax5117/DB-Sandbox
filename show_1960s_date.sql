SELECT titre_livre AS Titre, annee_livre AS Annee FROM livres
WHERE Annee BETWEEN 1960 AND 1969
ORDER BY Annee, Titre