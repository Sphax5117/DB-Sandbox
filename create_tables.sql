CREATE TABLE livres
(
 id_livre INTEGER NOT NULL UNIQUE,
 titre_livre TEXT NOT NULL,
 id_auteur_livre TEXT NOT NULL,
 "annee_livre" INTEGER,
 PRIMARY KEY (id_livre, AUTOINCREMENT)
);

CREATE TABLE auteurs
(
	id_auteur INTEGER NOT NULL UNIQUE,
	nom_auteur TEXT NOT NULL,
	prenom_auteur TEXT,
	annee_auteur INTEGER,
	langue_auteur TEXT NOT NULL,
	PRIMARY KEY (id_auteur, AUTOINCREMENT)
);