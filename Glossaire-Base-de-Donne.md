# Glossaire des Bases de Données PostgreSQL

## ACID
**Définition :** Un ensemble de quatre propriétés (Atomicité, Cohérence, Isolation, Durabilité) garantissant que les transactions de base de données sont traitées de manière fiable.

## Base de Données
**Définition :** Collection organisée de données, stockée et accessible électroniquement via PostgreSQL. Chaque base de données peut contenir plusieurs tables, vues, et autres objets.

## Clé Primaire
**Définition :** Colonne ou ensemble de colonnes qui identifient de manière unique chaque ligne dans une table. Une clé primaire ne peut pas contenir de valeurs NULL et doit être unique.

## Clé Étrangère
**Définition :** Colonne ou ensemble de colonnes d’une table qui établissent une relation avec la clé primaire d’une autre table, permettant de maintenir l'intégrité des relations entre les tables.

## Index
**Définition :** Structure de données utilisée pour accélérer les opérations de recherche dans une base de données. Les index sont souvent créés sur des colonnes fréquemment utilisées dans des requêtes de recherche.

## Jointure (JOIN)
**Définition :** Opération SQL qui combine des colonnes de plusieurs tables dans une seule requête en se basant sur des conditions spécifiques (souvent des clés étrangères). Les types de jointures incluent INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN.

## Normalisation
**Définition :** Processus de structuration d'une base de données de manière à réduire la redondance des données et à améliorer l'intégrité. PostgreSQL prend en charge plusieurs formes normales (1NF, 2NF, 3NF, etc.).

## PostgreSQL
**Définition :** Système de gestion de bases de données relationnelles open-source, connu pour sa robustesse, son extensibilité, et sa conformité aux normes SQL.

## Requête (Query)
**Définition :** Commande SQL permettant de récupérer ou de manipuler des données dans une base de données. Les requêtes peuvent inclure des SELECT, INSERT, UPDATE, et DELETE.

## Schéma
**Définition :** Conteneur logique au sein d'une base de données PostgreSQL qui regroupe des objets comme des tables, vues, et procédures. Chaque base de données contient au moins un schéma par défaut appelé `public`.

## Séquence
**Définition :** Objet de base de données utilisé pour générer des valeurs numériques uniques, souvent utilisé pour les colonnes auto-incrémentées comme les clés primaires.

## SQL (Structured Query Language)
**Définition :** Langage standardisé pour interagir avec des bases de données relationnelles. PostgreSQL implémente une version riche et complète du SQL.

## Table
**Définition :** Objet de base de données où les données sont stockées sous forme de lignes et colonnes. Chaque colonne représente un type de données et chaque ligne une entrée dans la base.

## Transaction
**Définition :** Unité d'exécution complète dans une base de données qui peut inclure plusieurs opérations SQL. Les transactions doivent respecter les propriétés ACID pour assurer la cohérence des données.

## Vues
**Définition :** Objets de base de données qui agissent comme des tables virtuelles. Une vue est le résultat d'une requête SQL qui combine une ou plusieurs tables.

## WAL (Write-Ahead Logging)
**Définition :** Méthode utilisée par PostgreSQL pour garantir la durabilité des transactions. Les modifications sont d'abord enregistrées dans des journaux de transactions avant d'être appliquées aux données.

## Vacuum
**Définition :** Opération d'entretien dans PostgreSQL qui récupère de l'espace disque en supprimant les enregistrements obsolètes et améliore les performances en réorganisant les données.

## Partitionnement
**Définition :** Méthode de division d'une grande table en partitions plus petites et plus faciles à gérer. PostgreSQL prend en charge le partitionnement par plage (range) ou par liste (list).

## Trigger
**Définition :** Fonction ou règle définie pour s'exécuter automatiquement avant ou après une modification des données dans une table, comme une insertion, une mise à jour ou une suppression.

