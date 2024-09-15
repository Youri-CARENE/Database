
## Installation de PostgreSQL

### Étapes pour Linux (exemple Ubuntu)

1. Mettez à jour la liste des paquets :

   ```bash
   sudo apt update
   ```

2. Installez PostgreSQL :

   ```bash
   sudo apt install postgresql postgresql-contrib
   ```

3. Vérifiez l'installation :

   ```bash
   psql --version
   ```

4. Accédez à PostgreSQL :

   ```bash
   sudo -i -u postgres
   psql
   ```

5. Quittez PostgreSQL :

   ```bash
   \q
   ```
