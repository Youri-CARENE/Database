
# Documentation de Test de Base de Données en env

## 1. Vérification de l'état du conteneur

### a. Lister les conteneurs Docker
```bash
docker ps -a
```

### b. Vérifier l'état du conteneur
```bash
docker inspect <nom_ou_id_du_conteneur>
```

## 2. Vérification du déploiement du service

### a. Vérification avec Kubernetes
```bash
kubectl get pods
```

## 3. Connexion à la base de données

### a. Connexion via Docker
```bash
docker exec -it <nom_ou_id_du_conteneur> <commande_de_connexion_db>
```

### b. Connexion directe
```bash
psql -h <hôte> -p <port> -U <nom_utilisateur> -d <nom_base_de_données>
```

## 4. Exécution de requêtes de test
```sql
SELECT * FROM <nom_table>;
```

## 5. Vérification des logs

### a. Logs Docker
```bash
docker logs <nom_ou_id_du_conteneur>
```

### b. Logs Kubernetes
```bash
kubectl logs <nom_du_pod>
```

