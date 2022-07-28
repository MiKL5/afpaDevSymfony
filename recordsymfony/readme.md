# **Velvet Record**

> avec le framework Symfony

- Créer un projet nomée 'Record'

Utiliser le contrôleur, il se charge de contruire la page.
Il possède plusieurs méthodes chacunes assocées à une route afin de créer un objet pouvant contenir du html, une chaîne JSON ou même un fichier binaire tel qu'une image ou un PDF.
Si la page affiche du code html, la méthode un template, ce dernier est la vue de l'utilisateur.
Le contrôleur est une méthode qui gère chaque requête adresser à Symfony et rendre un template (vue) qui élabore la réponse au client qui peut-être du html, xml, JSON, un téléchargement de fichier, un erreur, et cætera.
Configurer la route qui est une correspondance entre l'Uniform Ressource Locator et un méthode.
Utilser un moteur de template (Twig) qui récupère facilement les données transmises par le contrôleur & intègre l'hèritage.

- Base de données & Doctrine
Utiliser ORM (Object-Relational Mapping) de Doctrine.
C'est un type de programme qui se place en interface entre le site Record et la base de données, qui définit les correspondance ente les schémas de la BDD est les classes du site - un mapping - ces denières sont associées a une table et chaque propièté de classes associées à un champ. Avec Doctrine cela ce fait avec les annotations.
*
Ajouter un jeu de test dans la base.
Créer les premières fixtures.

- Les formulaires & leurs contrôles sous Synfony

[finir à cette page : https://ncode.amorce.org/parcours/172/7034]

- L'authentification



- Les API avec API-Plateform



- Les tests unitaires