#!/bin/bash
set -e

echo "🧪 Compilation du projet..."
mvn clean package

echo "📦 Création de l'installateur avec jpackage..."

# Configuration multi-OS
case "$(uname -s)" in
    Darwin*)
        OS="MAC"
        INSTALLER_TYPE="dmg"
        ICON="src/main/resources/icons/mac/icon.icns"
        FX_MODS="sdk/javafx-jmods-21.0.7"
        ;;
    Linux*)
        OS="LINUX"
        INSTALLER_TYPE="deb"
        ICON="src/main/resources/icons/linux/icon_512x512x32.png"
        FX_MODS="sdk/javafx-jmods-21.0.7"
        ;;
    CYGWIN*|MINGW32*|MSYS*|MINGW*)
        OS="WINDOWS"
        INSTALLER_TYPE="msi"
        ICON="src/main/resources/icons/win/icon.ico"
        FX_MODS="sdk/javafx-jmods-21.0.7"
        ;;
    *)
        echo "OS non supporté"
        exit 1
        ;;
esac

# Options communes
COMMON_OPTIONS=(
    --input target
    --name FluxoApp
    --main-jar Fluxo-0.0.1-SNAPSHOT.jar
    --dest installer
    --module-path "$FX_MODS"
    --add-modules javafx.controls,javafx.fxml
    --java-options "--add-opens java.base/java.lang=ALL-UNNAMED"
    --java-options "--add-opens java.base/java.io=ALL-UNNAMED"
)

# Options spécifiques à Windows
if [ "$OS" = "WINDOWS" ]; then
    COMMON_OPTIONS+=(--win-console)
fi

jpackage \
    --type "$INSTALLER_TYPE" \
    --icon "$ICON" \
    "${COMMON_OPTIONS[@]}"

echo "✅ Installateur $INSTALLER_TYPE généré dans le dossier 'installer/'"