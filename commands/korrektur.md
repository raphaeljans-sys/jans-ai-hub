---
description: Korrektur-Harness — jagt ein Erzeugnis durch die Prüf-Agenten rechtschreibung + layout (echte Umlaute, Schweizer Hochdeutsch, Layout-Standard) und gibt eine versandfertige Fassung zurück
---

Führe den Korrektur-Harness aus (Skill `korrektur`).

Nimm den Text/das Erzeugnis aus $ARGUMENTS — oder, falls leer, das zuletzt in
dieser Session erstellte Erzeugnis (Mail-Body, Dokument-Inhalt, LV, Protokoll, Post).

Starte die beiden Prüf-Agenten **`rechtschreibung`** und **`layout`** parallel,
merge die Ergebnisse und gib zurück:
1. die finale, versandfertige Fassung
2. den QA-Bericht mit zwei Ampeln

Wichtigste Prüfung: echte Umlaute ä/ö/ü überall dort, wo aktuell fälschlich
ae/oe/ue steht (für, Rückmeldung, Grüsse, …) — aber nie blind ersetzen.
