# Créé par t.hausmann, le 06/11/2023 en Python 3.7
# importe le module de gestion des DB
import sqlite3
# on se connecte à la DB dans le même répertoire sinon on donne le chemin
connexion= sqlite3.connect('base_livres.db')
# on crée un curseur pour définir, manipuler ou faire des requêtes sur la BD
curseur=connexion.cursor()
# on transmet notre requête SQL à la BD
curseur.execute('SELECT langue_auteur as Langue, titre_livre as Titre, nom_auteur as Nom, prenom_auteur as Prénom, annee_livre as Annee FROM auteurs, livres \n WHERE Langue = "anglais" \n ORDER BY Nom, Annee')

# on récupère les enregistrements issus de la requête SQL avec la méthode
# fetchall qui renvoie tous les enregistrements sous forme d'un tuple.
enregistrements = curseur.fetchall()
# on affiche ligne par ligne les enregistrements du tuple
for l in enregistrements:
 print(l)
# on ferme le curseur et la connexion
curseur.close()
connexion.close()

