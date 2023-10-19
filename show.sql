-- SELECT titre_film FROM films
-- WHERE titre_film LIKE "Star%";
-- 
-- SELECT annee_film, titre_film FROM films
-- WHERE annee_film < 2019 AND annee_film > 2010
-- ORDER BY annee_film, titre_film
-- 
-- SELECT titre_film AS Titre, nom_realisateur AS Réalisateur 
-- ROM films
-- JOIN realisateurs
-- ON realisateurs.id_realisateur = films.id_realisateur_film
-- WHERE realisateurs.nom_realisateur = 'Lucas';

SELECT titre_film AS Titre, nom_realisateur AS Réalisateur, nom_genre AS Genre, annee_film AS Année FROM films
JOIN realisateurs
ON realisateurs.id_realisateur = films.id_realisateur_film -- ASSURE L'ASSOCIATION ENTRE LES DEUX VALEURS
JOIN genres
ON genres.id_genre = films.id_genre_film -- MÊME CHOSE
WHERE realisateurs.nom_realisateur = 'Lucas' AND genres.nom_genre = 'Science fiction'
ORDER BY annee_film;