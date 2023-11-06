# Créé par t.hausmann, le 06/11/2023 en Python 3.7
import sqlite3
connexion= sqlite3.connect('base_livres.db')
curseur=connexion.cursor()
curseur.execute('INSERT INTO livres (titre_livre, annee_livre, id_auteur_livre) \n VALUES \n("It", 1972, "Stephen King")')
curseur.execute('SELECT titre_livre as Titre FROM livres \n WHERE Titre = "It"')
enregistrements = curseur.fetchall()
for l in enregistrements:
 print(l)
# on ferme le curseur et la connexion

curseur.close()
# enregistre l'insertion ds le fichier base_livres.db

# on récupère les enregistrements issus de la requête SQL avec la méthode
# fetchall qui renvoie tous les enregistrements sous forme d'un tuple.

# on affiche ligne par ligne les enregistrements du tuple

connexion.commit()
connexion.close()
