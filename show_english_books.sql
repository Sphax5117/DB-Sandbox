SELECT langue_auteur as Langue, titre_livre as Titre, nom_auteur as Nom, prenom_auteur as Prénom, annee_livre as Annee FROM auteurs, livres
WHERE Langue = "anglais" 
ORDER BY Nom, Annee