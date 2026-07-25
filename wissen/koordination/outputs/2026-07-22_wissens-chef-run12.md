# Wissens-Chef Run 12 — Cross-KB-Konsistenzlauf (2026-07-22)

Gedrosselter Lauf (Rule 260714). 5 parallele Lese-Agenten über das reguläre Agent-Tool
(Workflow-Tool headless weiter nicht nutzbar, wie Run 10/11). 1 gemeldeter materieller Widerspruch
→ 1 adversarialer Verifier. Fokus: frischer Stoff seit Run 11 (auflagebereinigung SIA-181-Federführung
22.07., normen DIN-ersetzt_durch + SIA-500-Follow-up, planungsgrundlagen Training Run 56,
firmengruendung-ch neuer Artikel `nachgruendung-anmeldungen`).

## Geprüfte Paare / Felder (6)

| Paar / Feld | Widerspruch | Aktion |
|---|---|---|
| normen ↔ auflagebereinigung (SIA 181 Federführung, Erst-Check) | 0 (Ziffer-Struktur deckungsgleich) | SIA-181-Fassungs-Vorbehalt + ersetzt_durch-Frontmatter |
| normen ↔ baurecht (SN 640 060) | 1 → TEILWEISE (Rollen-Korrektur) | baurecht Wiki/QUESTIONS auf Rollen-Korrektur + Cross-Link |
| normen ↔ baurecht (SIA-500-Follow-up + DIN) | 0 neu (Flag steht sauber; DIN null) | INDEX-Kennwert/-Bezeichnung nachgezogen |
| baurecht ↔ planungsgrundlagen (WWG/Naturgefahren) | 0 materiell | § 22 WWG Inline-Flag; 2 Struktur-Punkte offen |
| energie ↔ planungsgrundlagen (Private Kontrolle/CLT) | 0 | last_updated-Fix + CLT-Querlink; 1 Rollen-Trim offen |
| firmengruendung-ch ↔ spec ↔ kunde-bopp (Nach-Gründung) | 0 | kein Edit (spec-Log eingefroren); Feld sauber |

## Befunde (bestätigt / widerlegt)

### 1. SN 640 060 — adversarial Rollen-korrigiert (normen ↔ baurecht) — KERNBEFUND
Gemeldet: baurecht `fahrzeugabstellplaetze-und-parkierung.md` Z.144-149 führte «SN 640 060 existiert
in der VSS-Parkierungsnormen-Struktur NICHT … Fehlzitat entfernt»; normen hält `vss-640060-1994`
(established, echtes VSS-PDF, gen. Nov 1994). Der Melder folgerte «baurecht falsch, korrigieren».

**Verifier-Verdikt TEILWEISE.** Der adversariale Verifier scheiterte am Widerlegen des normen-Destillats
(quellenbelegt, keine Halluzination, gegen SN 640 065/066 sauber getrennt) UND fand den entscheidenden
Beleg in **baurechts EIGENER Buchquelle** `buecher/band-2/13-...` (S. 914-915): dort zitiert das
Standardwerk SN 640 060/065/066 ausdrücklich als reale, ergänzende Zweiradverkehr-Normen (BEZ 2013 Nr. 15).
Der baurecht-Wiki-Fliesstext war eng korrekt («in der *Parkierungsnormen*-Struktur nicht» — 640 060 ist
keine Parkierungsnorm), aber die «Fehlzitat/existiert nicht»-Etikettierung war zu absolut und widersprach
der eigenen Buchquelle. Richtig ist eine **Rollen-Korrektur** (640 060 = Grundlagen leichter Zweiradverkehr,
640 065 = Abstellplatz-Bedarf, 640 066 = Projektierung/Geometrie), nicht die Löschung als Fehlzitat.
Dies ist erneut der Wert der Verifikationsstufe: ohne sie wäre der Melder-Befund («baurecht falsch»)
ungeprüft übernommen worden, obwohl er selbst zu weit ging.

**Autonom umgesetzt:** Wiki-Absatz auf Rollen-Korrektur + Cross-Link zu `normen/destillate/vss-640060-1994`;
QUESTIONS-Eintrag nachgezogen; INDEX unberührt (dort kein 640-060-Bezug).

### 2. SIA-500-Kennwert-Follow-up (normen ↔ baurecht)
Der Run-11-Flag («1/25 Wohnungen/100 m» vs. SIA 500:2009 Ziff. 9.7.2 «1 je 25 Parkplätze, keine 100 m»)
ist vom baurecht-Loop seit 21.07. **nicht** aufgelöst (CHANGELOG-Einträge 22.07. betreffen nur Umlaut-Bug/
Health-Check). Im Haupttext steht er sachgerecht offen (kein Live-Fehler). Aber der **INDEX** Z.61 trug den
umstrittenen Wert + alte Bezeichnung «SN 521 500» noch als Faktum → autonom auf «SIA 500:2009 Ziff. 9.7;
Kennwert Cross-KB-geflaggt Run 11» nachgezogen. Der Wert selbst bleibt offen (nicht raten).

### 3. SIA 181 Federführung (normen ↔ auflagebereinigung) — neues Paar, 0 Widerspruch
auflagebereinigung zitiert nur die Ziffer-Struktur (4.2/4.3/4.4, 2.2.3/2.2.4), exakt deckungsgleich mit
`normen/destillate/sia-181-2006`; keine dB-Werte, keine Doppelspur (nur die organisatorische Gewerk-Ebene,
eigene Domäne). **Befund (veraltet):** Verankerung auf SIA 181:2006 ohne Fassungs-Vorbehalt, obwohl normen
SIA 181:2020 flaggt — und die Supersession lebte nur in REGISTER/QUESTIONS, nicht im Destillat-Frontmatter.
→ `ersetzt_durch`-Feld ins normen-Destillat + Fassungs-Vorbehalt-Kasten in auflagebereinigung.

### 4–6. Weitere Paare — 0 materieller Widerspruch
- **baurecht ↔ planungsgrundlagen:** Wasserrecht (WWG→WsG/WsV) sauber synchron. § 22 WWG-Bullet las sich
  isoliert wie geltendes Recht → Inline-Flag. Zwei Struktur-Punkte offen (unten).
- **energie ↔ planungsgrundlagen:** alle Kennwerte fassungsgleich, Private-Kontrolle-Link (Run 11) hält.
  Stale `last_updated` + fehlender CLT-Querlink → beide autonom gefixt; Rollen-Trim offen.
- **firmengruendung-ch ↔ spec ↔ kunde-bopp:** saubere Arbeitsteilung (firmengruendung = Fakten, spec =
  Methode/Live-Fall), 0 Doppelspur; kunde-bopp-Null-Befund (Run 10) bestätigt. Kein Edit — spec-Output ist
  ein eingefrorenes Fall-Log; die sinnvolle Verlinkung gehört ins lebende `logbuch/fristen.md`.

## Ausgeführte Aktionen (8 Dateien in 5 KBs — nur Links/Präzisierungen/Flags/1 Frontmatter-Feld, keine Löschung)

- baurecht/wiki/fahrzeugabstellplaetze-und-parkierung.md — SN 640 060 Rollen-Korrektur + Cross-Link
- baurecht/wiki/QUESTIONS.md — SN-640-060-Eintrag von «Fehlzitat» auf Rollen-Korrektur nachgezogen
- baurecht/wiki/INDEX.md — SIA-500-Kennwert/-Bezeichnung Z.61 auf den geflaggten Stand nachgezogen
- normen/destillate/sia-181-2006.md — Frontmatter `ersetzt_durch: SIA 181:2020 (Re-Destillat ausstehend)`
- auflagebereinigung/wiki/auflagentypen-gewerkzuteilung.md — SIA-181-Fassungs-Vorbehalt-Kasten
- planungsgrundlagen/wiki/kartenportale-naturgefahren-objektschutz.md — § 22 WWG Inline-Aufhebungsflag
- planungsgrundlagen/wiki/energie-uebersicht.md — CLT-Querlink zum führenden energie-Fachphysik-Destillat
- energie/destillate/private-kontrolle-zh.md — stale `last_updated` 2026-06-11 → 2026-07-21

Register QUERBEZUEGE um 6 datierte Paar-/Feld-Einträge ergänzt; je KB CHANGELOG protokolliert;
koordination/CHANGELOG Run-12-Eintrag.

## Offene Punkte (kein neuer Entscheid für Raphael)

Alles Loop-/Struktur-Arbeit:
- **SIA-500-Kennwert** (baurecht): wahre Quelle des «25 Wohnungen/100 m»-Werts belegen, dann angleichen.
- **§ 22 WWG Gefahrenbereiche** (baurecht): pg delegiert den WsG/WsV-Nachfolge-§ an baurecht als «führend»,
  aber baurecht führt die Frage in keinem Artikel (Dangling-Delegation / Bring-Schuld in der führenden KB).
- **GSchV-41a/41b-Doppelspur** (baurecht↔pg): Trim auf Verweis = Umstrukturierung, seit Run 7/8 offen.
- **Private-Kontrolle-Rollen-Trim** (energie↔pg): Substanz an pg abgeben — Umstrukturierung, seit Run 11.
- **SIA 181:2020 Re-Destillat** (normen): bekannte Bring-Schuld (REGISTER).

## Cross-KB-Beobachtung (nicht autonom, für hub-chef/Raphael)

Der **Umlaut-Bug** (ASCII-Ersatzschreibung ae/oe/ue in Haiku/Sonnet-Subagenten-Outputs seit der
«Minimum Viable Model»-Delegation 19.07.) ist KB-übergreifend in 5 KBs bestätigt (baurecht, energie,
planungsgrundlagen, normen, architekten-synobsis; voller Befund + Fix-Vorschlag in
`baurecht/outputs/2026-07-22_umlaut-bug-verifikation-nachtschicht.md`). Das ist eine Config-/
Infrastruktur-Änderung (Scheduled-Task-Prompts), **nicht autonom ausführbar** (Whitelist-verboten) —
hier nur registriert, keine Doppelmeldung (hub-chef-taeglich nimmt es ins Tagesbriefing auf).

## Methodik-Notiz
Adversariale Verifikation nur für den einen gemeldeten materiellen Widerspruch (SN 640 060); die übrigen
Befunde waren fehlende Links / Frontmatter-Staleness / Fassungs-Flags / prozessuale Drift, am zitierten
file:line-Anker direkt verifiziert. Der Verifier hat den Melder-Befund substanziell korrigiert (nicht
«baurecht falsch», sondern «zu absolut» — der Beleg kam aus baurechts eigener Buchquelle) — erneut ein
Beleg, dass die Stufe nicht zeremoniell ist.
