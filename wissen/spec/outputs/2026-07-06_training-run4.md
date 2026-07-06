# Spec-Training — Lauf 4 (2026-07-06)

Automatischer Lauf (Scheduled Task `spec-training`, alle 3 Tage; Vorlauf 03.07.). Phase 1
(Audit/Auswertung) komplett; Phase 2 (Aenderungen) bei eindeutigem Mehrwert direkt ausgefuehrt.

## 1. Stand gelesen
- **Keine neue Spec-Anwendung** in `outputs/` seit Lauf 3. Die einzige Bewegung: die lebende
  AG-Gruendungs-Spec bekam Monitor-Eintraege bis 06.07. (Status unveraendert, kein neues
  Korrektur-Delta seit 29.06.).
- QUESTIONS: **F4 + F5 vollstaendig eingeloest** (Karpathy 06-30, Cherny 07-03, Anthropic-Doku
  06-27) → keine offene Quellen-Schuld mehr (PROGRAMM Schritt 5 diesen Lauf gegenstandslos).
  F1/F2/F3 laufend, F6/F7 offen.

## 2. Environment-Audit (Befund)
1. **Metadaten-Drift (Audit E):** run3-Fix hielt — `verifier.md` + `anwendung-jans.md` standen
   korrekt auf 07-03. Diesen Lauf auf **07-06** gezogen (beide inhaltlich ergaenzt, s.u.). Seed-
   Artikel (the-spec / 3-schritte-spec / environment) unveraendert → korrekt gruen.
2. **CLAUDE.md KB-Liste:** run3-Fix hielt — `spec/` steht in der «Aktuelle KBs»-Aufzaehlung. Gruen.
3. **Rule `spec-methode.md`:** unveraendert; Gate ueber 3+ belegte Faelle korrekt, kein Beleg fuer
   Ueberdehnung, keine neue Guardrail-/Hook-Luecke. Gruen — bewusst NICHT geaendert.
4. **INDEX/Backlinks:** vollstaendig (5 Artikel); Template als Vorlage nachgetragen.
5. **Einzige stehende Luecke:** F6-Template 3 Laeufe in Folge geflaggt, nie gebaut → diesen Lauf
   geschlossen (s.u.), damit die «Grenzfall»-Schleife nicht ein 4. Mal leer laeuft.

## 3. Auswertung: AG-Gruendung als 15-Tage-lebende-Spec (neue Lektion)
Kein neues Korrektur-Delta, aber der **Verlauf selbst** ist die Lektion. Der Monitor-Log zeigt
zwei klar getrennte Lebensphasen einer lebenden Spec:
- **Phase A — aktive Formung (21.–29.06.):** Schluesselentscheide kippen spaet (Name, Liberierung),
  Belegset wird versioniert nachgezogen (bereits in [[anwendung-jans]] belegt).
- **Phase B — Steady-State-Monitoring (30.06.–06.07., 8+ Eintraege):** das Vorhaben wartet auf die
  autoritative Instanz (UBS-Kapitalbescheinigung, Notariat/HRA). Der Monitor laeuft **low-noise**:
  «NICHTS NEUES», keine Status-Mail, Eskalation nur bei echter Aenderung.
- **Uebertragbare Erkenntnis:** In Phase B ist die *awartete* autoritative Instanz selbst der
  Verifier — das Warten ist kein Stillstand, sondern ein gueltiger Verifier-Zustand. Das schaerft
  F1 (Spec bleibt auch in langer Wartephase nuetzlich) und F2 (richtige Kadenz = low-noise Monitor).

## 4. Geaendert (Phase 2)
- **F6 geschlossen — Template gebaut:** `wissen/spec/templates/spec-vorlage.md`. Kopier-Skelett
  (Ziel · Abgrenzung · Ist-Zustand[Scan] · Schluesselentscheide · Kriterien · Plan · Verifikation ·
  Faktenbasis · Monitor-Log) + Zwei-Phasen-Notiz. KB-intern, additiv, reversibel, keine Rule-/Skill-
  Verhaltensaenderung → autonom im Rahmen `wissens-bibliothekar` (Raphael kann anpassen/verwerfen).
- `anwendung-jans.md`: Zwei-Phasen-Lektion in Schritt 2; Template-Referenz in Compounding; Meta 07-06.
- `verifier.md`: neue Sektion «Verifier-Zustand ‹Warten auf die autoritative Instanz›» (low-noise
  Monitor als gueltiger Verifier-Zustand); Meta 07-06.
- `QUESTIONS.md`: F1 (15-Tage-Datenpunkt, zwei Phasen), F2 (Steady-State-Kadenz), F6 (✓ eingeloest).
- `INDEX.md`: Abschnitt «Vorlagen» mit `templates/spec-vorlage.md`.

## 5. Quellen-Schuld (PROGRAMM Schritt 5)
- Keine offene Quelle mehr: F4 (Karpathy + Cherny) und F5 (Anthropic-Doku) sind vollstaendig
  primaerquellenbelegt. Schritt 5 diesen Lauf ohne Aufgabe.

## 6. Offen / als naechstes
- **F1 Ueberdehnungs-Gegentest fehlt weiter:** alle bisherigen Faelle hoch-einsatzig. Ein bewusst
  mittelgrosser Fall waere der beste naechste Datenpunkt (kann nur aus realer Nutzung kommen).
- **F3-Tabelle** je weiterer Domaene fuellen (Bau/Studie, Marketing/Text noch offen).
- **F7:** Template steht; die 3 Goldstandard-Specs bleiben als Beispiele kuratiert — bei neuer
  Spec-Anwendung pruefen, ob sie dem Skelett folgt (Template als Verifier fuer sich selbst).
