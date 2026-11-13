#!/bin/bash
# publier-lecon.sh — Publie une leçon sur son dépôt GitHub dédié
# Usage : ./publier-lecon.sh 3    (pour lecons/lesson-03)

set -e  # arrêter en cas d'erreur

# --- Paramètres ---
NUM="$1"
if [ -z "$NUM" ]; then
    echo "Usage : $0 <numéro_de_leçon>"
    echo "Exemple : $0 3"
    exit 1
fi

# Normaliser sur 2 chiffres (3 -> 03)
NUM_PAD=$(printf "%02d" "$NUM")
LECON="lecons/lesson-${NUM_PAD}"
DEPOT="lesson-${NUM_PAD}"
URL="https://github.com/amoungui/${DEPOT}.git"

# --- Répertoires ---
LIBRARY_DIR="C:/Users/Ultra Tech/Documents/projets/vacations/library"
TRAVAIL_DIR="C:/Users/Ultra Tech/Documents/projets"
CLEAN_DIR="${TRAVAIL_DIR}/library-clean"

# --- Vérifications ---
cd "$LIBRARY_DIR"

if [ ! -d "$LECON" ]; then
    echo "Erreur : le dossier $LECON n'existe pas dans $LIBRARY_DIR"
    echo "Créez-le d'abord avec : mkdir -p $LECON"
    exit 1
fi

if ! git diff --quiet HEAD -- "$LECON" 2>/dev/null; then
    echo "Attention : il y a des modifications non commitées dans $LECON"
    echo "Committez-les d'abord dans library :"
    echo "  git add $LECON && git commit -m 'Leçon ${NUM_PAD} : ...' && git push"
    exit 1
fi

if ! git ls-files --error-unmatch "$LECON" >/dev/null 2>&1; then
    echo "Erreur : $LECON n'est pas encore commité dans library"
    echo "Committez-le d'abord :"
    echo "  git add $LECON && git commit -m 'Leçon ${NUM_PAD} : ...' && git push"
    exit 1
fi

# --- Étape 1 : clone frais ---
echo "==> Clonage frais de library dans library-clean..."
cd "$TRAVAIL_DIR"
rm -rf "$CLEAN_DIR"
git clone https://github.com/amoungui/library.git library-clean

# --- Étape 2 : extraction ---
echo "==> Extraction de $LECON..."
cd "$CLEAN_DIR"
git filter-repo --subdirectory-filter "$LECON" --force

# --- Étape 3 : .gitignore ---
echo "==> Copie du .gitignore..."
cp "$LIBRARY_DIR/.gitignore" .
git add .gitignore
git commit -m "Ajout .gitignore C++"

# --- Étape 4 : push ---
echo "==> Push vers $URL..."
git push --force "$URL" HEAD:main

# --- Étape 5 : nettoyage ---
cd "$TRAVAIL_DIR"
rm -rf "$CLEAN_DIR"

echo ""
echo "✅ Leçon ${NUM_PAD} publiée avec succès sur :"
echo "   https://github.com/amoungui/${DEPOT}"