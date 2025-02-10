# TickFly

TickFly est une application web qui permet aux utilisateurs de rechercher des vols en fonction de leurs préférences. Le projet utilise l'API Amadeus pour récupérer les données des vols et inclut également une API personnalisée permettant d'obtenir des informations sur les billets les moins chers de la semaine ou du mois précédent.

## Technologies Utilisées

- **Frontend** : React
- **Backend** : Django
- **API** : FastAPI
- **Base de données** : MariaDB
- **Gestion de conteneurs** : Docker, Docker Compose
- **Outils supplémentaires** : phpMyAdmin pour la gestion de la base de données

## Prérequis

Avant de commencer, assurez-vous d'avoir les outils suivants installés sur votre machine :

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Installation

1. Clonez le répertoire du projet :

   ```bash
   git clone https://github.com/votre-utilisateur/tickfly.git
   cd tickfly
   ```

2. Créez un fichier `.env` à la racine du projet avec les variables suivantes :

   ```env
   MARIADB_ROOT_PASSWORD=your_root_password
   MARIADB_DATABASE=tickfly_db
   MARIADB_USER=tickfly_user
   MARIADB_PASSWORD=your_password

   DJANGO_SECRET_KEY=your_django_secret_key
   DJANGO_DEBUG=True
   DJANGO_ALLOWED_HOSTS=*
   ```

3. Construisez les conteneurs Docker :

   ```bash
   docker-compose build
   ```

## Utilisation

Pour lancer l'application, utilisez la commande suivante :

```bash
docker-compose up
```

Accédez ensuite aux différents services via les URLs suivantes :

- **Frontend (React)** : [http://localhost:5173](http://localhost:5173)
- **Backend (Django)** : [http://localhost:8001](http://localhost:8001)
- **API (FastAPI)** : [http://localhost:8000](http://localhost:8000)
- **phpMyAdmin** : [http://localhost:8081](http://localhost:8081)

## Fonctionnalités

- Recherche de vols via l'API Amadeus.
- API personnalisée pour obtenir les billets les moins chers de la semaine ou du mois précédent.
- Interface utilisateur moderne avec React.
- Backend robuste avec Django.
- Accès et gestion facile de la base de données via phpMyAdmin.

## Auteur

Ce projet a été développé par **Walid Kherroubi**.

---

Pour toute question ou suggestion, n'hésitez pas à me contacter à : **kherroubi.walid78@gmail.com**.


