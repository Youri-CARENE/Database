
# Documentation pour Tester PostgreSQL sur Kubernetes

## 1. Vérification de l'état du Pod PostgreSQL

### a. Lister les Pods dans Kubernetes
```bash
kubectl get pods
```
- Cherchez le pod PostgreSQL dans la liste pour vérifier son état.

## 2. Connexion à la base de données PostgreSQL

### a. Connexion via le Pod Kubernetes
```bash
kubectl exec -it <nom_du_pod_postgresql> -- psql -U <nom_utilisateur> -d <nom_base_de_données>
```
- Remplacez `<nom_du_pod_postgresql>`, `<nom_utilisateur>`, et `<nom_base_de_données>` par vos informations.

## 3. Exécution de requêtes de test

Une fois connecté, exécutez des requêtes SQL pour vérifier la base de données :

```sql
SELECT * FROM <nom_table>;
```
- Remplacez `<nom_table>` par le nom d'une table dans votre base de données.

## 4. Vérification des logs du Pod

Pour détecter d'éventuelles erreurs, consultez les logs du pod :

```bash
kubectl logs <nom_du_pod_postgresql>
```

## 5. Vérification des Services et Déploiements

Pour s'assurer que le service PostgreSQL est correctement configuré et déployé :

### a. Lister les services
```bash
kubectl get svc
```

### b. Lister les déploiements
```bash
kubectl get deployments
```

