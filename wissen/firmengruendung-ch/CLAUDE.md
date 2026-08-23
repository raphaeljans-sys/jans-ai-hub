# Wissensbasis: Firmengründung Schweiz (AG / GmbH / weitere Rechtsformen)

## Was das ist

Kompoundierendes Prozesswissen zur Gründung von Gesellschaften in der Schweiz —
Schwerpunkt Aktiengesellschaft (AG), rechtsform-übergreifend mit GmbH, Einzelfirma,
Kollektiv-/Kommanditgesellschaft und der englischen Ltd als Vergleich. Angelegt am
2026-06-02 im Zusammenhang mit der tatsächlichen Gründung einer AG durch Raphael Jans
(damalige Arbeitsfirma «JANS AG», seit 27.06.2026 «Raphael Jans AG»). Diese Gründung
hat einen realen Vorlauf: im Dezember 2022 wurden bereits Statuten entworfen
(`221206_Raphael_Jans_AG_Statuten.pdf`) und ein Notartermin vorbereitet (Screenshots
vom 03.12.2022, Ordner `AD - 06 Unternehmung/_Archiv/10_Gruendung`) — dieser erste
Anlauf wurde damals nicht zu Ende geführt (keine Handelsregister-Eintragung). Die 2026
wiederaufgenommene Gründung ist ein neuer, eigenständiger Anlauf (neue Zefix-Prüfung,
neues UBS-Kapitaleinzahlungskonto, neue Statuten-Fassung 260627) und war beim letzten
gesicherten Stand (14.08.2026, siehe unten) noch nicht im Handelsregister eingetragen.
**Die in `raw/` ingestierten Quellen sind ausschliesslich generische amtliche
Unterlagen** (HRA-ZH-Merkblätter, KMU-Checkliste, EasyGov-Kostenvergleich,
Opting-out-Erklärung, alle datiert 260602) — nicht die realen 2022er-Dokumente der
Raphael Jans AG selbst; diese liegen unverändert nur im OneDrive-Archiv (siehe
`raw/_INGESTED.md`, Abschnitt „Noch im OneDrive-Archiv").

**Der laufende, reale Gründungsfall wird NICHT hier, sondern operativ getrackt:**
Spec/Verlauf `wissen/spec/outputs/2026-06-21_ag-gruendung_spec.md`, Fristen/Status
`logbuch/fristen.md` (Suchbegriff „Raphael Jans AG"). Letzter dort bestätigter Stand
(14.08.2026): Notariat Wiedikon (M. Mathies) hat Gründungsurkunde/Statuten zur Prüfung,
verlangt eine Korrektur des Datums auf der HR-Anmeldung (Aktion Raphael), die
UBS-Kapitaleinzahlungsbestätigung ist beim Notariat weiterhin nicht eingetroffen. Der
automatisierte `ag-gruendung-monitor` ist seit ca. 19.08.2026 ausgefallen (ungültige
Modell-ID); ein Stand nach dem 14.08.2026 ist damit **nicht verifiziert** — vor jeder
Aussage zum aktuellen Gründungsstand den Live-Verlauf in den beiden Dateien oben lesen,
nicht diese KB.

Ziel dieser KB: das Gründungs-Know-how (Recht, Verfahren, Belege, Kosten) wird
rechtsform- und fallübergreifend zu lebendem, abrufbarem Wissen — für die laufende
Gründung, künftige weitere Gründungen (zweite Gesellschaft, Holding, Tochter,
Beteiligung) und als Entscheidungsgrundlage Rechtsformwahl. Sie ist bewusst
allgemeines Referenzwissen (Gesetzestext, amtliche Merkblätter) und kein Abbild des
konkreten Fallverlaufs.

## Fokus-Bereiche

1. **Rechtsformwahl** — AG/GmbH/Einzelfirma/Personengesellschaften/Ltd: Kapital,
   Haftung, Kosten, Steuern, Eignung.
2. **AG-Gründungsprozess** — Schritt-für-Schritt von Firma/Zweck bis HR-Eintrag.
3. **Dokumente & Belege** — Statuten, Errichtungsakt, Wahlannahme, Opting-out,
   Bankbestätigung, Rechtsdomizil, VR-Konstituierung (Handelsregister-Belege).
4. **Kapital & Liberierung** — Mindestkapital, Bar-/Sacheinlage, Sperrkonto,
   Emissionsabgabe.
5. **Kosten & Zeit** — Budget, Gebühren, Zeitbedarf.

## Bibliothekar-Rolle

Active librarian (Rule `rules/wissens-bibliothekar.md`): ingestieren, kompilieren,
verlinken ohne Rückfrage; jede Änderung im `CHANGELOG.md`; Pause + Rückfrage nur vor
Destruktivem.

## KB-spezifische Schreibregeln

- **Rechtsgrundlage-Pflicht:** Jede rechtlich/registerrelevante Aussage trägt ihre
  Grundlage (OR-Artikel, HRegV, z.B. `Art. 621 OR`, `Art. 44 HRegV`). Unbelegtes mit
  `status: speculative` markieren (verschärft `identifikatoren-verifizieren.md`).
- **Aktualitäts-Warnung:** Das Aktienrecht wurde per 01.01.2023 revidiert (u.a.
  Kapitalband, Aktien in fremder Währung, virtuelle GV). Quellen aus 2021/2022 können
  überholt sein — bei Beträgen/Verfahren immer auf aktuellen Stand prüfen und
  `needs-verification` setzen, wo unklar.
- **Kanton kennzeichnen:** Handelsregister-Praxis ist kantonal (Quellen hier:
  Handelsregisteramt Kanton Zürich) — nie als gesamtschweizerisch darstellen.
- **Keine Rechtsberatung-Fiktion:** Fachwissen, keine verbindliche Rechts-/Steuer-
  auskunft. Für den konkreten Fall Notar/Treuhänder beiziehen — im Artikel vermerken.
- Schweizer Hochdeutsch, echte Umlaute ä/ö/ü, kein ß, keine dekorativen Symbole.

## Ordner

- `raw/` — Merkblätter (HRegV ZH), KMU-Checklisten, Kostenvergleiche, Musterstatuten,
  Formularvorlagen, Notariats-/Bank-Korrespondenz. Reinkippen.
- `wiki/` — kompilierte Artikel + `INDEX.md` + `QUESTIONS.md`. Meine Domäne.
- `outputs/` — konkrete Vorgehens-/Dokumenten-Sets, Entscheidungshilfen, Health-Checks.

## Quellen-Hierarchie

1. Gesetz (OR — insb. Art. 620 ff.) und Handelsregisterverordnung (HRegV)
2. Handelsregisteramt-Merkblätter (kantonal, hier ZH) und EasyGov/Zefix
3. KMU-Portal des Bundes (kmu.admin.ch)
4. Treuhänder-/Notariats-Auskunft (datiert)
5. Eigener, laufender Gründungsfall JANS (Raphael Jans AG, Anlauf 2022 + Wiederaufnahme
   2026 — operativer Stand in `wissen/spec/outputs/2026-06-21_ag-gruendung_spec.md` und
   `logbuch/fristen.md`, nicht in dieser KB)
