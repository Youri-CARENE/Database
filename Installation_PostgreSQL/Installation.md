Ouvrez un terminal et exécutez la commande suivante pour mettre à jour la liste des paquets et installer les mises à jour disponibles:

 
sudo apt update && sudo apt upgrade -y
Installer PostgreSQL:
Exécutez la commande suivante pour installer PostgreSQL et ses composants nécessaires:

 
sudo apt install -y postgresql postgresql-contrib
Démarrer et activer le service PostgreSQL:
Après l'installation, le service PostgreSQL devrait démarrer automatiquement. Vérifiez le statut du service avec la commande suivante:

 
sudo systemctl status postgresql
Pour activer le service PostgreSQL au démarrage, exécutez la commande suivante:

 
sudo systemctl enable postgresql
Se connecter à PostgreSQL:
Par défaut, PostgreSQL crée un utilisateur système nommé postgres. Pour vous connecter à la base de données en tant qu'utilisateur postgres, exécutez la commande suivante:

 
sudo -i -u postgres
Accéder à l'interface de ligne de commande PostgreSQL:
Une fois connecté en tant qu'utilisateur postgres, accédez à l'interface de ligne de commande psql avec la commande suivante:

 
Créer un nouvel utilisateur et une base de données:
Pour créer un nouvel utilisateur et une base de données, utilisez les commandes SQL suivantes à partir de l'interface psql:

 
CREATE USER myuser WITH PASSWORD 'mypassword';
CREATE DATABASE mydatabase OWNER myuser;
Remplacez myuser, mypassword et mydatabase par les noms d'utilisateur, mots de passe et noms de base de données de votre choix.

Accorder les privilèges:
Accordez à l'utilisateur les privilèges nécessaires sur la base de données en exécutant la commande suivante:

 
GRANT ALL PRIVILEGES ON DATABASE mydatabase TO myuser;
Quitter l'interface de ligne de commande et se déconnecter:
Pour quitter l'interface psql, tapez \q puis appuyez sur Entrée. Pour vous déconnecter de l'utilisateur postgres, tapez exit ou logout.

Configurer l'authentification:
Pour configurer l'authentification des utilisateurs de la base de données, modifiez le fichier pg_hba.conf:

 
sudo nano /etc/postgresql/13/main/pg_hba.conf
(remplacez "13" par la version de PostgreSQL installée sur votre système)

Localisez la section appropriée et modifiez la méthode d'authentification pour les connexions locales en utilisant md5 ou password, par exemple:

 
# IPv4 local connections:
host    all             all             127.0.0.1/32            md5
Redémarrer le service PostgreSQL:
Après avoir apporté des modifications à la configuration, redémarrez le service PostgreSQL pour que les changements prennent effet:

 
sudo systemctl restart postgresql
Se connecter en tant que nouvel utilisateur:
Pour vous connecter en tant que nouvel utilisateur que vous avez créé, utilisez la commande suivante:

 
psql -U myuser -d mydatabase -h 127.0