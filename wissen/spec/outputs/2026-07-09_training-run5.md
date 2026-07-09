# Spec-Training — Lauf 5 (2026-07-09)

Automatischer Lauf (Scheduled Task `spec-training`, alle 3 Tage; Vorlauf 06.07.). Phase 1
(Audit/Auswertung) komplett; Phase 2 (Aenderungen) bei eindeutigem Mehrwert direkt ausgefuehrt.

## 1. Stand gelesen
- **Keine neue Spec-Anwendung** in `outputs/` seit Lauf 4. Einzige Bewegung: die lebende
  AG-Gruendungs-Spec bekam drei weitere Monitor-Eintraege (07./08./09.07.), alle «NICHTS NEUES».
  Damit **19 Tage** lebende Spec (21.06.–09.07.), ~10 Tage in Phase B (Steady-State).
- QUESTIONS: F4 + F5 + F6 geschlossen. F1/F2/F3/F7 laufend. Keine offene Quellen-Schuld
  (PROGRAMM Schritt 5 diesen Lauf gegenstandslos).

## 2. Environment-Audit (Befund)
1. **Metadaten (Audit E):** run4-Fix hielt — `verifier.md` + `anwendung-jans.md` standen korrekt
   auf 07-06, CHANGELOG-Kopf 07-06, konsistent. Diesen Lauf beide auf **07-09** gezogen (inhaltlich
   ergaenzt, s.u.). Seed-Artikel (the-spec / 3-schritte-spec / environment) unveraendert → gruen.
2. **CLAUDE.md KB-Liste:** `spec/` steht in der «Aktuelle KBs»-Aufzaehlung. Gruen.
3. **Rule `spec-methode.md`:** unveraendert; Gate ueber 3+ belegte Faelle korrekt, kein Beleg fuer
   Ueberdehnung, keine neue Guardrail-/Hook-Luecke. Gruen — bewusst NICHT geaendert.
4. **INDEX/Backlinks + Template:** vollstaendig (5 Artikel + Vorlage). Gruen.
5. **Keine stehende Luecke** aus Vorlaeufen offen (F6 in Lauf 4 geschlossen). Die einzige
   Dauerbaustelle ist F1 (mittelgrosser Gegentest) — kommt nur aus realer Nutzung.

## 3. Auswertung: AG-Gruendung, Phase B haelt an (Praezisierungs-Lektion)
Kein neues Korrektur-Delta, aber der Verlauf schaerft die Monitor-Kadenz. Beobachtung aus dem
Monitor-Log: die Phase-B-Kadenz behandelt **zwei grundverschiedene Blocker** gleich:
- **Externes Warten** (Instanz am Zug): UBS-Kapitalbescheinigung, Notariats-/HRA-Antwort — hier ist
  «NICHTS NEUES» ohne Aktion richtig.
- **Selbst-blockierte Owner-Aktion** (an Raphael): «Antwort ans Notariat raus» (Name «Raphael Jans AG»
  bestaetigen + Word-Dateien Urkunde/Statuten senden) — offen seit 22.06., also **17 Tage**, lief aber
  ~10 Tage unter derselben low-noise-Zeile mit und alterte still.
- **Uebertragbare Erkenntnis:** low-noise gilt nur fuer echtes externes Warten; ein Punkt, der am
  eigenen Handeln haengt, gehoert in jeden Monitor-Lauf als aktive Nudge/Pendenz, nicht unter «nichts
  Neues». Trennfrage je Blocker: «Wartet die Instanz — oder warten wir auf uns selbst?» Das schaerft
  F2 (richtige Kadenz) und ergaenzt die Phase-B-Beschreibung um eine Falle der Steady-State-Ruhe.

## 4. Geaendert (Phase 2)
- `verifier.md`: neue Sektion «Zwei Blocker-Typen im Monitor auseinanderhalten» (externes Warten vs.
  selbst-blockierte Owner-Aktion; low-noise nur fuer externes Warten); Meta 07-09.
- `anwendung-jans.md`: Phase-B-Absatz um die Blocker-Trennung ergaenzt; Meta 07-09.
- `QUESTIONS.md`: F1 (19-Tage-Datenpunkt) + F2 (Praezisierung 09.07., zwei Blocker-Typen).
- KB-intern, additiv, reversibel, keine Rule-/Skill-Verhaltensaenderung → autonom im Rahmen
  `wissens-bibliothekar`. Rule `spec-methode.md` bewusst NICHT geaendert.

## 5. Quellen-Schuld (PROGRAMM Schritt 5)
- Keine offene Quelle: F4 (Karpathy + Cherny) und F5 (Anthropic-Doku) vollstaendig primaerquellenbelegt.

## 6. Offen / als naechstes
- **F1 Ueberdehnungs-Gegentest fehlt weiter:** alle bisherigen Faelle hoch-einsatzig; ein bewusst
  mittelgrosser Fall bleibt der wertvollste naechste Datenpunkt (nur aus realer Nutzung).
- **F3-Tabelle** je weiterer Domaene fuellen (Bau/Studie, Marketing/Text noch offen).
- **F7:** bei der naechsten neuen Spec-Anwendung pruefen, ob sie dem Template-Skelett folgt
  (Template als Verifier fuer sich selbst).
- **AG-Gruendung:** sobald Phase B endet (UBS-Bescheinigung / Notariats-Antwort) den Uebergang
  Phase B → Beurkundung/Eintrag als Abschluss-Datenpunkt der lebenden Spec auswerten.
