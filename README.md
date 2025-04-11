# 💼 Fluxo ERP

Fluxo ERP est une application de bureau moderne combinant JavaFX pour l'interface utilisateur et Spring Boot pour la
logique métier et la persistance des données. Elle est conçue pour répondre aux besoins des PME en matière de gestion
commerciale, offrant une solution complète et intuitive.

## 🚀 Fonctionnalités principales

- Gestion des produits
    - Ajout, modification, suppression et visualisation des produits
    - Suivi des stocks avec alertes sur les niveaux bas


- Gestion des fournisseurs et clients
    - Fiches détaillées avec coordonnées et historique des transactions


- Facturation et devis
    - Génération automatique de factures et devis au format PDF
    - Suivi des paiements et historique des facturations


- Rapports & Statistiques
    - Rapports sur les ventes, stocks, fournisseurs et clients
    - Tableau de bord interactif avec graphiques dynamiques


- Gestion des utilisateurs
    - Authentification et gestion des rôles (Admin, Employé, Comptable, etc.)


- Sauvegarde & Exportation
    - Exportation des données clés vers Excel et PDF

## Schéma architecture

![img.png](assets/schema-architecture.png)

## ⚙️ Installation et exécution

### Prérequis

- Java 21 installé sur votre machine
- Maven installé

### Étapes

#### Si vous utilisez Maven directement

1- Cloner le dépôt

```shell
git clone https://github.com/benaja-bendo/fluxo-erp.git
cd fluxo-erp
```

2- Construire le projet

```shell
mvn clean install
```

3- Exécuter l'application

```shell
mvn javafx:run
```

## 📁 Structure du projet

```shell
fluxo-erp/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/bgrfacile/fluxo/
│   │   │       ├── controller/
│   │   │       ├── model/
│   │   │       ├── repository/
│   │   │       └── service/
│   │   └── resources/
│   │       ├── templates/
│   │       │   └── main-view.fxml
│   │       └── application.yml
├── pom.xml
└── README.md
```

## 📸 Captures d'écran

## 📄 Licence

Ce projet est sous licence MIT. Voir le fichier [LICENSE](LICENSE) pour plus d'informations.


