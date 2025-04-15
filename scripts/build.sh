#!/bin/bash
set -e

echo "🧪 Compilation du projet..."
#mvn clean package

echo "📦 Création de l'installateur avec jpackage..."

# Définir le chemin vers les fichiers .jmod de JavaFX
PATH_TO_FX_MODS="/Users/benji_mac/Documents/Lab/Lab_java/FX/Fluxo/sdk/javafx-jmods-17.0.14"

jpackage \
  --input target \
  --name FluxoApp \
  --main-jar Fluxo-0.0.1-SNAPSHOT.jar \
  --type dmg \
  --dest installer/ \
  --icon src/main/resources/assets/icones/icon.icns \
  --module-path "$PATH_TO_FX_MODS" \
  --add-modules javafx.controls,javafx.fxml \
  --java-options "--add-opens java.base/java.lang=ALL-UNNAMED" \
  --java-options "--add-opens java.base/java.io=ALL-UNNAMED"

echo "✅ Installateur généré dans le dossier 'installer/'"
