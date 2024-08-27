#!/bin/bash
set -e

# Script d'initialisation pour PostgreSQL
echo "Initialisation de la base de données PostgreSQL..."

# Exécuter le fichier SQL pour configurer la base de données
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" -f /docker-entrypoint-initdb.d/init.sql

echo "Base de données initialisée avec succès."
