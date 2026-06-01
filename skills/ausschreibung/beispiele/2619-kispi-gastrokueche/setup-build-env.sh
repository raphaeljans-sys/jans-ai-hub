#!/bin/bash
# Setup-Skript fuer den Submissions-Build-Workflow auf einer neuen Station.
# Installiert die noetigen Abhaengigkeiten (Node docx, Python PyMuPDF) lokal in /tmp/build_kispi/.
#
# Nutzung:
#   bash setup-build-env.sh
#
# Voraussetzungen (muessen auf der Station vorhanden sein):
#   - Node (>= 18)
#   - Python3 (>= 3.9)
#   - Homebrew-Tools: soffice (LibreOffice), pdfinfo (poppler)
#
# Pruefung der Voraussetzungen am Ende.

set -e

WORKDIR="/tmp/build_kispi"
mkdir -p "$WORKDIR"
cd "$WORKDIR"

echo "=== Node-Abhaengigkeiten (docx) ==="
if [ ! -d "$WORKDIR/node_modules/docx" ]; then
  npm init -y > /dev/null 2>&1
  npm install --silent docx
  echo "  -> docx installiert"
else
  echo "  -> docx schon installiert"
fi

echo ""
echo "=== Python-Abhaengigkeiten (PyMuPDF) ==="
if [ ! -d "$WORKDIR/venv" ]; then
  python3 -m venv "$WORKDIR/venv"
  "$WORKDIR/venv/bin/pip" install --quiet --upgrade pip
  "$WORKDIR/venv/bin/pip" install --quiet pymupdf
  echo "  -> PyMuPDF installiert in venv"
else
  echo "  -> venv schon vorhanden"
fi

echo ""
echo "=== Voraussetzungen pruefen ==="
MISSING=0
for tool in node soffice pdfinfo; do
  if command -v "$tool" >/dev/null 2>&1; then
    echo "  OK  $tool ($(command -v $tool))"
  else
    echo "  FEHLT  $tool — bitte installieren"
    MISSING=1
  fi
done

if [ $MISSING -eq 1 ]; then
  echo ""
  echo "Fehlende Tools installieren:"
  echo "  brew install node libreoffice poppler"
  exit 1
fi

echo ""
echo "FERTIG: Build-Umgebung in $WORKDIR bereit."
echo "Build-Skripte sind in: /Volumes/daten/jans-ai-hub/skills/ausschreibung/beispiele/2619-kispi-gastrokueche/"
echo ""
echo "Beispiel: cp <skript>.js $WORKDIR/ && cd $WORKDIR && node <skript>.js"
