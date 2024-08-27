# Projet PostgreSQL et Flask avec Docker

Ce projet montre comment orchestrer ces deux services avec Docker Compose.

## Prérequis

- Docker (version récente)
- Docker Compose

## Structure du Projet

- `Application-test/`: Contient l'application Flask.
  - `Dockerfile`: Image Docker pour Flask.
  - `application-simple-flask.py`: Code source de l'application.
  - `requirements.txt`: Dépendances Python.
- `base/`: Contient la configuration PostgreSQL.
  - `Dockerfile`: Image Docker pour PostgreSQL.
  - `init-db.sh`: Script d'initialisation pour la base de données.
  - `init.sql`: Script SQL pour créer une table et insérer des données.
- `docker-compose.yml`: Orchestration des services.
- `.env`: Variables d'environnement pour PostgreSQL.

## Déploiement

1. **Cloner le dépôt** :
   ```bash
   git clone https://github.com/votre-profil/postgresql-flask-docker-project.git
   cd postgresql-flask-docker-project
