#!/usr/bin/env bash
# ---------------------------------------------------------------------------
# JANS AI Hub — Robuster DOCX -> PDF Konverter (geteiltes Werkzeug)
# ---------------------------------------------------------------------------
# Ersetzt die bisher in jeder Session neu improvisierte soffice/convert/gs-
# Kette. Quer ueber alle Skills nutzbar (ausschreibung, brandschutz,
# protokoll, pendenzenliste, honorarberechnung-sia102, telesales ...).
#
# Loest die drei wiederkehrenden Stillstands-Ursachen:
#   1. Paralleler soffice-Profil-Lock  -> isoliertes -env:UserInstallation
#   2. Stiller Fehlschlag (PDF fehlt)   -> Output-Verifikation + Exit-Code
#   3. Haengender Headless-Prozess      -> Timeout + Retry
#
# Verwendung:
#   bash docx2pdf.sh <datei.docx> [ziel-ordner]
#   bash docx2pdf.sh <ordner-mit-docx>          # Batch: alle *.docx darin
# ---------------------------------------------------------------------------
set -euo pipefail

SOFFICE="$(command -v soffice || echo /Applications/LibreOffice.app/Contents/MacOS/soffice)"
[ -x "$SOFFICE" ] || { echo "❌ soffice nicht gefunden (brew install --cask libreoffice)"; exit 2; }

TIMEOUT_BIN="$(command -v gtimeout || command -v timeout || true)"
MAX_TRIES=2

_convert_one() {
  local src="$1" outdir="$2"
  local base; base="$(basename "${src%.docx}")"
  local target="$outdir/$base.pdf"
  # Eigenes, isoliertes LibreOffice-Profil -> kein Lock-Konflikt bei Parallel-Laeufen
  local profile; profile="$(mktemp -d)"
  local try=1 rc=0
  while [ "$try" -le "$MAX_TRIES" ]; do
    rc=0
    if [ -n "$TIMEOUT_BIN" ]; then
      "$TIMEOUT_BIN" 120 "$SOFFICE" --headless \
        -env:UserInstallation="file://$profile" \
        --convert-to pdf --outdir "$outdir" "$src" >/dev/null 2>&1 || rc=$?
    else
      "$SOFFICE" --headless \
        -env:UserInstallation="file://$profile" \
        --convert-to pdf --outdir "$outdir" "$src" >/dev/null 2>&1 || rc=$?
    fi
    # Verifikation: PDF muss existieren UND nicht leer sein
    if [ -s "$target" ]; then
      rm -rf "$profile"
      echo "✅ $target"
      return 0
    fi
    try=$((try+1))
  done
  rm -rf "$profile"
  echo "❌ Konvertierung fehlgeschlagen (rc=$rc): $src" >&2
  return 1
}

[ $# -ge 1 ] || { echo "Verwendung: docx2pdf.sh <datei.docx|ordner> [ziel-ordner]"; exit 1; }

INPUT="$1"
fail=0
if [ -d "$INPUT" ]; then
  OUTDIR="${2:-$INPUT}"
  found=0
  while IFS= read -r -d '' f; do
    found=1
    _convert_one "$f" "$OUTDIR" || fail=1
  done < <(find "$INPUT" -maxdepth 1 -name '*.docx' ! -name '~$*' -print0)
  [ "$found" = 1 ] || { echo "⚠️  Keine *.docx in $INPUT gefunden"; exit 1; }
else
  [ -f "$INPUT" ] || { echo "❌ Datei nicht gefunden: $INPUT"; exit 1; }
  OUTDIR="${2:-$(dirname "$INPUT")}"
  _convert_one "$INPUT" "$OUTDIR" || fail=1
fi
exit "$fail"
