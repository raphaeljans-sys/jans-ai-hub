---
title: Ein Git-Arbeitsbaum auf einer SMB-Freigabe ist ein Konstruktionsfehler, kein Betriebsfehler
status: established
last_updated: 2026-09-11
sources:
  - docs/konzepte/260911-Systemanalyse-Hub-Architektur-NAS-Git/260911-Systemanalyse-Hub-Architektur-NAS-Git.md
  - rules/betrieb-chronik.md (260726, 260729, 260807, 260824e, 260831, 260831b, 260901)
  - docs/konzepte/260830-Laufzeitschicht-Umbau/SPEC.md (B6, F1)
links: []
---

# Ein Git-Arbeitsbaum auf einer SMB-Freigabe ist ein Konstruktionsfehler

## Befund

Der JANS AI Hub hielt vom Setup im Maerz 2026 bis heute seinen kanonischen Git-Arbeitsbaum auf einer SMB-Freigabe des NAS und liess drei Stationen samt Dutzenden headless-Laeufen darin arbeiten. Gemessen zwischen 25.07. und 07.09.2026: sieben Ausfalltage mit bis zu 275 Mount-Abrissen am Tag, zwei Spaltungen zwischen NAS-Repo und GitHub (6 Stunden; 4 Tage mit 488 vergeblichen Abgleichversuchen), ein 18-Stunden-Stillstand des Committers. Acht Hilfs-Scripts, eine SMB-Client-Haertung und ein Git-Verbot ueber SMB existierten nur, um diese Bauweise zu stuetzen.

## Verallgemeinerbare Regel

1. Git verlangt ein lokales Dateisystem. Ueber SMB haengen schreibende **und lesende** Befehle uninterruptibel (Chronik 260729). Ein Verbot des Werkzeugs ist ein Umweg um die Bauweise, keine Loesung.
2. Wenn die gesamte Faehigkeit eines Claude-Code-Setups (Skills, Agenten, Rules per `@`-Import, Symlinks) an einem Netz-Mountpoint haengt, ist jeder Mount-Abriss ein Totalausfall der Station, nicht ein Teilausfall.
3. Ein Waechter, der heilt, aber nicht verhindert, verschiebt den Schaden in das Fenster zwischen Abriss und Heilung; headless-Laeufe brechen genau dort ab.
4. Zwei Schreiber auf einem Zweig (nativer Committer und Auto-Sync der Stationen) erzeugen Spaltungen, sobald Append-at-top-Dateien (CHANGELOG, Register) parallel beschrieben werden. Gegenmittel ist `merge=union` in `.gitattributes`, nicht ein weiterer Waechter.
5. Die tragfaehige Bauweise fuer mehrere Stationen ist die Standard-Bauweise: ein Origin (GitHub), je Station ein vollstaendiger Klon, jeder Lauf endet mit Pull, Commit, Push. Ein Netz-Dateiserver bleibt Dateiserver (Archiv, Rohkorpora, schwere Binaerdateien), nie Git-Arbeitsbaum.

## Woran man den Fehler frueh erkennt

Ein Setup, das Regeln der Form «nie X ueber den Mount» oder «Treiber nicht vom NAS-Pfad starten» sammelt, behandelt Symptome einer Bauweise. Drei solche Regeln in Folge (hier 260726, 260729, 260807) sind das Signal, die Ebene zu wechseln.
