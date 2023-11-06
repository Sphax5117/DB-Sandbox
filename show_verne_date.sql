SELECT titre_livre AS Titre, nom_auteur AS Nom, prenom_auteur as Prenom, annee_livre AS Annee FROM auteurs, livres
WHERE nom_auteur = "Verne"

ORDER BY annee_livre