# Utiliser l'image officielle de PostgreSQL
FROM postgres:13

# Copier le script d'initialisation
COPY init-db.sh /docker-entrypoint-initdb.d/
COPY init.sql /docker-entrypoint-initdb.d/

# Donner les permissions d'exécution au script
RUN chmod +x /docker-entrypoint-initdb.d/init-db.sh
