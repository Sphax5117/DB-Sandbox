
 CREATE TABLE "realisateurs"
 (
 id_realisateur INTEGER NOT NULL UNIQUE,
 nom_realisateur char (45) NOT NULL,
 prenom_realisateur char (45) NULL,
 ddn_realisateur date,
 id_nationalite_realisateur char (45) NULL,
 CONSTRAINT pk_realisateur PRIMARY KEY (id_realisateur AUTOINCREMENT),
 CHECK (ddn_realisateur BETWEEN "1891-01-01" AND "2100-12-31")
 );

 CREATE TABLE "nationalite"
 (
 	id_nationalite INTEGER NOT NULL UNIQUE,
 	nom_nationalite TEXT NOT NULL,
 	CONSTRAINT pk_nationalite PRIMARY KEY (id_nationalite AUTOINCREMENT)
 );
