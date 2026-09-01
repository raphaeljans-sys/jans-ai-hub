# Wissens-Health-Check: Kunde Christoph Bopp — 2026-09-01

## Zusammenfassung

| Audit | Findings |
|---|---|
| A Widersprueche | 1 |
| B Kaputte Backlinks/Orphans | 4 (gekennzeichnet, strukturell ok) |
| C Unbelegte Claims | 0 |
| D RAW-Coverage-Luecken | 0 |
| E Veraltete Artikel | 0 |
| F Schreibregel-Verstoesse | 1 |
| G Promotion-Kandidaten | 2 |

**Gesamtbefund:** Zwei Befunde brauchen Aufmerksamkeit: (1) Abschnitt «Aktuell offen» in `profil-christoph-bopp.md` ist veraltet seit 24.07., soll gekuerzt werden (bekannt seit 25.07. HC, nicht umgesetzt); (2) Meta-Dateien haben ae/oe/ue statt echter Umlaute (bekannt seit 19.08., noch nicht behoben Phase 2). B-Befund ist strukturell ok (geplante Artikel bewusst als Vorwärtsverweise gekennzeichnet).

## Top-3 (für Aufmerksamkeit)

1. **Audit A: Abschnitt «Aktuell offen» in `profil-christoph-bopp.md` ist überholt.** Z. 76-82 beschreiben den Giebelweg-12-Auftrag im Erstauftrags-Stadium (Stand 03.06.). Der Detailartikel `projekt-giebelweg12.md` wurde 24.07. angelegt und ist seitdem führend. Health-Check 25.07. empfahl Kürzung auf Verweis — noch nicht durchgeführt. **Audit A1 bestätigt: Abschnitt sollte reduziert werden.**
2. **Audit F: CHANGELOG, CLAUDE.md, QUESTIONS.md haben ae/oe/ue statt echter Umlaute.** 19.08. HC notierte 121 echte Treffer in Meta-Dateien; die Sachartikel selbst sind korrekt (`profil-christoph-bopp`, `projekt-giebelweg12` beide mit echten Umlauten). Diesen Session nur Audit (Phase 1), Korrektur nicht ausgefuehrt.
3. **Audit B: Backlinks zu geplanten Artikeln sind bewusst und richtig gekennzeichnet.** `[[auftrags-muster-bopp]]` und `[[zusammenarbeit-lessons-bopp]]` sind mit *(geplant)* in INDEX.md markiert; CHANGELOG 25.08.2026 (Run 43) hat diese Vorwärtsreferenzen als solche explizit dokumentiert. Kein struktureller Fehler, nur Kennzeichnung.

## Details je Audit

### A. Widersprueche zwischen Artikeln

**Befund:** `profil-christoph-bopp.md` Z. 76-82, Abschnitt «Laufende Projekte»: nennt Giebelweg 12 mit Erstauftrags-Details («Machbarkeit gelöst, Baulinien-Einwendung bei der Gemeinde hängig, Stand 24.08.2026»). Der Detailartikel `projekt-giebelweg12.md` wurde am 24.07.2026 angelegt und ist seither führend für den aktuellen Stand.

**Konsistenz-Lage:** Abschnitt in `profil-christoph-bopp` ist nicht falsch, nur veraltet. Siehe auch CHANGELOG 25.07.: «Abschnitt auf Verweis kuerzen». 

**Phase 2 Empfehlung (nicht diese Session):** Abschnitt reduzieren auf: «Siehe [[projekt-giebelweg12]] für den aktuellen Stand (Machbarkeit gelöst, Baulinien-Einwendung hängig, Stand 2026-08-24).»

Befund: **1**

### B. Kaputte Backlinks & Orphans

Prüflauf `wiki-konsistenz.sh` am 01.09.2026: 4 Befunde gemeldet.

```
! INDEX                        [[auftrags-muster-bopp]]
! INDEX                        [[zusammenarbeit-lessons-bopp]]
! profil-christoph-bopp        [[auftrags-muster-bopp]]
! profil-christoph-bopp        [[zusammenarbeit-lessons-bopp]]
```

**Struktur-Prüfung:** Beide Links sind in INDEX.md und `profil-christoph-bopp` mit *(geplant)* gekennzeichnet (nicht als tote Links, sondern als Vorwärtsverweise auf geplante Cluster-Artikel). CHANGELOG 25.08.2026 (Run 43) dokumentiert: «Vorwärtsreferenz als solche gekennzeichnet» — das wurde gestern explizit gemacht.

**Kein struktureller Fehler.** Der Werkzeug-Befund ist korrekt (die Ziele existieren nicht), aber sachlich bewusst (geplante, noch nicht angelegte Artikel).

Befund: **4** (technisch), aber strukturell ok (gekennzeichnet)

### C. Unbelegte Claims

`profil-christoph-bopp.md`:
- Firmen-/Rollen-Daten (WOMA, Nova Property, Feag): Quellen im `sources`-Feld mit CHANGELOG-Referenzen (20./21.07.2026, Handelsregister/Zefix verifiziert).
- Projekte-Tabelle: Alle Einträge mit Skill-Zuordnung und Links auf Detailartikel.
- Status `emerging` ist angemessen (Profil verifiziert, aber kein Promotion zu `established` ohne Abschluss von Projekten/Entscheid Raphael).

`projekt-giebelweg12.md`:
- Baumasse 1'162 m³ / Attika 128.9 m²: Quelle ist PROJEKT-STAND.md im Projektordner und Deliverable `260612_Hangschnitt-Nachweis_Giebelweg-12.pdf` Version 3 (13.06.2026), verifiziert 24.08.2026 per Rule `projekt-ablage-stand`.
- Gemeinde-Antwort offen: Verifizierung 24.08. (kein neuer Ordner/Datei seit 30.06.2026).
- Status `emerging` ist angemessen (aktives, nicht abgeschlossenes Projekt).

Befund: **0**

### D. RAW-Coverage-Luecken

`raw/` ist leer. Seed-Artikel `profil-christoph-bopp` wurde direkt aus Apple-Mail-Archiv (25 Mails) kompiliert (CHANGELOG 03.06.2026), nicht aus raw/-Datei. Projekt-Artikel entstand aus Projektordner-Verifikation.

Keine unbewerteten raw/-Quellen mit offener Coverage.

Befund: **0**

### E. Veraltete Artikel

`profil-christoph-bopp.md` last_updated 24.08. (sehr aktuell, gestern aktualisiert, siehe CHANGELOG 24.08.2026 Audit A-Fix).

`projekt-giebelweg12.md` last_updated 24.08. (sehr aktuell, verifiziert gestern).

Befund: **0**

### F. Schreibregel-Verstoesse

**Sachartikel:** 
- `profil-christoph-bopp.md`: Frontmatter vollständig, echte Umlaute (Ä/Ö/Ü/ä/ö/ü), kein ß. Sauberer Stand seit Fix 20.07.
- `projekt-giebelweg12.md`: Frontmatter vollständig, echte Umlaute, kein ß.

**Meta-Dateien:**
- `CLAUDE.md`: durchgehend ae/oe/ue (z.B. Z. 4 «Beleg-Pflicht», Z. 43 «Versand»). **F1 rot**
- `CHANGELOG.md`: durchgehend ae/oe/ue (z.B. Z. 62 «Machbarkeit», mehrfach). **F1 rot**
- `QUESTIONS.md`: durchgehend ae/oe/ue (z.B. Z. 3 «STWEG», Z. 17 «Anfragen»). **F1 rot**
- `wiki/INDEX.md`: Sachartikel-Einträge ok, aber Hinweistexte teilweise ae/oe/ue.

19.08. HC-Bericht notierte: 121 echte Treffer von ae/oe/ue-Digraphen statt echter Umlaute. Das war ein korrekter Befund. Phase 2 Korrektur wurde 19.08. nicht ausgefuehrt (unbeaufsichtigter Lauf).

Befund: **1** (rot, aber bekannt; Phase 2 Arbeit, nicht diese Session)

### G. Promotion-Kandidaten

1. **Status-Promotion `profil-christoph-bopp`: emerging → established.** Nach 4-5 Projekt-Zyklen + 4 Firmen-Mandats-Verifikationen wäre eine Promotion möglich. Entscheid Raphael, nicht automatisch.

2. **Zwei Cluster-Artikel sind geplant und sollten angelegt werden:** `auftrags-muster-bopp` (drei wiederkehrende Auftragsarten: STWEG, TDD, Machbarkeit mit Skill-Mapping) und `zusammenarbeit-lessons-bopp` (Lessons aus 5 Projekten: Tonfall, Honorar-Muster, Termin-Vorlieben). Beide sind aktuell als Vorwärtsverweise markiert und wären G-Kandidaten.

3. **Projekt-Giebelweg12 bleibt `emerging`.** Zu früh für Promotion, noch nicht abgeschlossen (Gemeinde-Antwort ausstehend).

Befund: **2** (ein Status-Upgrade, zwei geplante Cluster-Artikel)

## Weitere Anmerkungen

**Struktur:** KB ist prototypisch für pro-Kunde-KBs (Schema: Profil · Projekte · Auftrags-Muster · Lessons). Beide Sachartikel sind mit Detaillierungsgrad passend.

**Öffnung:** Die zwei bekannten Befunde (A1 + F1) sind transparent im Status dokumentiert. A1 war bekannt seit 25.07., wurde aber nicht Phase-2-bearbeitet.

Bericht verfasst 2026-09-01 (Phase 1, unbeaufsichtigt).
