# Test Simundia

## Question 1
La première méthode est une méthode Active Record .where que l'on applique au model User, et qui prend en argument un hash dont les clés correspondent aux colonnes FIRST_NAME et LAST_NAME de la table users.
La deuxième méthode est la même méthode .where, mais qui prend cette fois-ci en argument une string.
Les deux premières méthodes retournent un objet de type Active Record Relation.
La dernière méthode est une méthode Ruby .select, à laquelle on applique un block, qui va itérer sur tous les utilisateurs de la base, et qui nous retournera un array contenant toutes les instances de User, pour lesquels la condition à l'intérieur du block aura retourné true.
La méthode la plus optimisée entre .where et .select est .where, car c'est une méthode Active Record > elle convertit l'argument de la méthode en language SQL, qui est le language le plus optimisé et le plus performant pour les interactions avec les bases de données. La méthode .select sera beaucoup plus lente, car elle récupère tout depuis la base de données, convertit tous les enregistrements en objets Ruby un par un, et exécute le block sur chacun d'entre eux.
Enfin, entre les deux premières, c'est la toute première méthode qui est la plus optimisée, car telle que la deuxième est écrite, elle est vulnérable aux injections SQL. Voici une meilleure façon d'écrire la deuxième méthode : User.where("first_name = ? and last_name = ?", 'Jérémy', 'Kénigsman').

## Question 2

### Technologies

* Bootstrap 5
* StimulusJS / SortableJS
* Ruby On Rails
* Gems
Acts as list: Simple list ordering

Database: PostgresQL
Deployed: Heroku

### Features
* Possibilité de créer des cards sans rafraichir la page
* Drag and drop les cards
