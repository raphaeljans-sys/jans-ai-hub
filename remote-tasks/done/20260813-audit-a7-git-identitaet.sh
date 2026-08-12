#!/bin/bash
# Audit-Massnahme A7: Git-Identitaet setzen (Mac Mini). Nur git config, kein Risiko.
R="$1"
git config --global user.name "Raphael Jans"
git config --global user.email "rj@raphaeljans.ch"
{
  echo "=== A7 Git-Identitaet Mac Mini $(date '+%Y-%m-%d %H:%M:%S') ==="
  git config --global user.name
  git config --global user.email
} > "$R/bericht.txt" 2>&1
echo "A7 erledigt."
