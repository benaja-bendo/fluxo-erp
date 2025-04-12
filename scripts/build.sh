#!/bin/bash
set -e

echo "🧪 Compilation du projet..."
mvn clean package

echo "📦 Création de l'installateur avec jpackage..."
jpackage \
  --input target \
  --name FluxoApp \
  --main-jar Fluxo-0.0.1-SNAPSHOT.jar \
  --main-class com.bgrfacile.fluxo.FluxoApplication \
  --type dmg \
  --dest installer/ \
  --icon src/main/resources/icon.icns \
  --java-options "--add-opens java.base/java.lang=ALL-UNNAMED" \
  --java-options "--add-opens java.base/java.io=ALL-UNNAMED"

echo "✅ Installateur généré dans le dossier 'installer/'"
