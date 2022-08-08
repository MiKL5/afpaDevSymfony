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

- Liste des artistes
    - il est possible uniquement à l'administrateur d'ajouter et retirer les artistes ;
    - les clients et l'administrateur voient la fiche des artistes ;

<img src="src\screenshot\record\artists.png" alt="Artists" title="Artists" widht="900 px" height="auto">


- Liste des disque
    - il est possible uniquement à l'administrateur d'ajouter et retirer les discques ;
    - les clients et l'administrateur voient la fiche des disques ;

<img src="src\screenshot\record\discs.png" alt="Discs" title="Discs" widht="900 px" height="auto">


- L'authentification
    - Les personnes non connectés ont le rôles user qui permet de voir uniquement :
        - la liste des disques et artistes ;
        - d'accéder au menu de connexion pour soit se connecter ou créer un compte ;
    - Seul l'administrateur voit les informations de tous les utilisateurs
        - Les clients ne voient que leurs informations personnelles ;
    - Il est possible de réinitialiser le mot de passe ;

- Liste de utilisateur

| Nom | Prénom | Rôle | Email | Mot de passe |
|---|---|---|---|---|
| | | Admin | admin@admin.com | admin1 |
| O'Nym | Ann | Client | ann.o-nym@gmail.com | azerty1 |
| PART | Léo | Client | leo.part@gmail.com | 123456 |

Écran de connexion

<img src="src\screenshot\record\authentication.png" alt="Authentification" title="Authentification" widht="900 px" height="auto">

S'enregistrer

<img src="src\screenshot\record\register.png" alt="Register" title="Regitster" widht="900 px" height="auto">
