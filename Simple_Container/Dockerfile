# Utiliser l'image officielle de PostgreSQL 
FROM postgres:latest

# Définir des variables d'environnement pour le nom d'utilisateur et le mot de passe (modifiables)
ENV POSTGRES_USER=mon_utilisateur
ENV POSTGRES_PASSWORD=mon_mot_de_passe
ENV POSTGRES_DB=madatabase

# Exposer le port sur lequel PostgreSQL écoute par défaut
EXPOSE 5432

# Les volumes ou les scripts de configuration supplémentaires peuvent être ajoutés ici si nécessaire

# Le point d'entrée et la commande par défaut sont déjà définis dans l'image de base de PostgreSQL, donc pas besoin de les ajouter à nouveau
