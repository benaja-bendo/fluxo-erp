# 📦 Génération d’un installateur natif JavaFX + Spring Boot avec `jpackage`

Ce projet utilise [`jpackage`](https://docs.oracle.com/en/java/javase/17/docs/specs/man/jpackage.html) (inclus dans le
JDK
14+) pour générer un installateur natif à partir d’un projet **Maven** contenant une application JavaFX intégrée avec
Spring Boot.

---

## 🛠️ Prérequis

- **JDK 17 ou +** installé avec `jpackage`
- Maven installé (`mvn`)
- Un environnement macOS (pour `.dmg`) ou adapté à la plateforme cible
- Fichier d’icône `icon.icns` placé dans `src/main/resources/`

---

## 📁 Structure du projet

```md
Fluxo/
├── src/
├── target/
│ └── Fluxo-0.0.1-SNAPSHOT.jar
├── scripts/
│ └── build.sh
└── installer/  <-- Le dossier où sera généré l installateur
```

## ▶️ Lancer le script

### Depuis la racine du projet :

```shell
chmod +x scripts/build.sh
./scripts/build.sh
```

### Configurer IntelliJ IDEA pour exécuter le script

1. Créer une configuration d'exécution pour le script :

- Allez dans Exécution > Modifier les configurations...
- Cliquez sur le bouton + et sélectionnez Script Shell.
- Nom : `Build & Package`
- Chemin du script : `$ProjectFileDir$/build.sh`
- Interpréteur : `/bin/bash`
- Cliquez sur OK pour enregistrer la configuration.

2. Exécuter le script depuis IntelliJ IDEA :

- Sélectionnez la configuration Build & Package dans la liste des configurations d'exécution.
- Cliquez sur le bouton Exécuter (icône de lecture) ou utilisez le raccourci clavier associé.

## 🧪 Résultat

- Un fichier `.dmg` est généré dans le dossier `installer/`
- Il est prêt à être partagé ou installé localement

## ✅ Notes

- Le script est compatible macOS (DMG). Pour un `.exe` Windows ou `.deb` Linux, remplacez `--type dmg` par `--type exe`
  ou `--type deb`
- En cas d’erreur `main jar does not exist, vérifier que le nom du JAR correspond et est bien dans target/

## 📌 À faire plus tard

- Ajouter la signature numérique (macOS, Windows)
- Générer des installateurs multi-plateformes
- Ajouter une icône de fenêtre (via JavaFX stage setup)