# Training Run 22 — KB Planungsgrundlagen · 2026-07-13

**Schwerpunkt-Domaenen (Token-Vollgas, 2 Domaenen):** Kartenportale (PL-01, Prioritaet) + Meta/
Querschnitt (M2). Rotation gemaess Run-21-Empfehlung: statt turnusgemaess nochmals Brandschutz
wurde die Prioritaets-Domaene Kartenportale gewaehlt (nahezu vollstaendig laut curriculum, aber
zwei SharePoint-Ordner unbearbeitet) plus die von Run 21 explizit benannte offene Meta-Luecke M2.
**Connector-Schritt:** kein neuer Connector-Code (beide neuen Themen sind bewusst nicht
automatisiert — siehe Verifikation).

## Ausgangslage / erkannte Luecke

Domaenen-Inventar geprueft: Kartenportale-curriculum (K1-K9, A1-A6) fast vollstaendig `[x]`, aber
zwei SharePoint-Ordner in `PL-01 Kartenportale/` waren nie Gegenstand einer Lektion:
`Objektschutz/` (Naturgefahrenkarten + reales Objektschutzkonzept) und `Werkleitungen/`
(Leitungskataster-Planauskunft EKZ/Swisscom/Sunrise-UPC). Beide enthalten echtes JANS-
Auftraggebermaterial (Fall Reckholdernstrasse 20, Willerzell) und waren damit ergiebiger als ein
weiterer Refresh bereits belegter Punkte. Gleichzeitig hatte Run 21 M2 ("Anbindung an
machbarkeit/ankaufspruefung/behoerden-vorabklaerung schaerfen") als echte, noch offene Luecke
identifiziert: keiner der drei SKILL.md referenziert `planungsgrundlagen` zurueck.

## Bearbeitete Fragen (Run 22)

**Kartenportale — neue Lektionen K10 (Naturgefahren/Objektschutz) + K11 (Werkleitungskataster):**
1. Welche Rechtsgrundlage verpflichtet Kantone/Gemeinden zur Naturgefahren-Erfassung, und welchen
   rechtlichen Status hat die Karte? → Art. 6/15 RPG, § 20/17 PBG SZ; Karte ist rechtserheblich
   auch vor Umsetzung in die Nutzungsplanung.
2. Was bedeuten die Gefahrenstufen rot/blau/gelb/gelb-weiss konkret fuer die Bauvorschrift? →
   belegte Tabelle inkl. Healthcare-Relevanz der blauen Zone ("keine sensiblen Objekte").
3. Wie sieht ein reales Objektschutzkonzept aus (Ablauf, Fachplaner, Massnahmen-Ebenen)? →
   Benchmark Reckholdernstrasse 20 Willerzell, 4-stufiger Massnahmenkatalog.
4. Welche Schutzziele gelten nach SIA 261/261-1 fuer Neubauten je Naturgefahr? → belegte Tabelle
   mit Wiederkehrperioden 50/300/475 Jahre + Jaehrlichkeits-Merksatz.
5. Wie bezieht man die Naturgefahrenkarte automatisiert (SZ/ZH)? → SZ-WebGIS-Link-Schema aus
   realem Dokument entnommen, aber **nicht** als getesteter REST-Endpunkt bestaetigt; ZH offen.
6. Wer liefert Werkleitungsdaten (Strom/Kommunikation/Gas/Wasser), und gibt es ein zentrales
   Portal? → nein, betreiberspezifisch: EKZ/Swisscom/Sunrise-UPC/Gemeindewerke.
7. Wie laeuft eine reale Planauskunft ab (Anmeldung → Bestellung → Lieferung), und wie lange ist
   sie gueltig? → EKZ-Ablauf belegt, Gueltigkeit nur 2 Wochen, Swisscom 3 Monate.
8. Welche Norm/welches Datenmodell liegt den Leitungsplaenen zugrunde, und welche Nutzungs-
   bestimmungen/Sicherheitshinweise gelten? → SIA GEO 405, Farbdruck-Pflicht, 190-Volt-Warnhinweis.

**Meta/Querschnitt — M2:**
9. Referenzieren `machbarkeit`, `ankaufspruefung`, `behoerden-vorabklaerung` den Skill
   `planungsgrundlagen`? → nein (Grep-Befund bestaetigt Run-21-Vermutung), Anbindung war einseitig.
10. Wo im Contract/in den Datenquellen jedes Skills gehoert die Referenz hin, ohne die Datei
    aufzublaehen? → an der bestehenden GIS-/Geodaten-Zeile jedes Skills ergaenzt, nicht neu
    strukturiert.

## Was geaendert wurde

- **NEU [[kartenportale-naturgefahren-objektschutz]]:** vollstaendiger Artikel — Rechtsgrundlagen,
  Gefahrenstufen-Tabelle, Bezugswege (SZ-Link real, ZH offen), realer Benchmark Reckholdern,
  SIA-261-Schutzziele-Tabelle, offene Punkte transparent ausgewiesen. Status `emerging`.
- **NEU [[kartenportale-werkleitungskataster]]:** vollstaendiger Artikel — Zustaendigkeiten-Tabelle,
  realer EKZ-Ablauf, Nutzungsbestimmungen, Datenformat/Massstab, expliziter Verzicht auf
  Connector-Automatisierung mit Begruendung. Status `emerging`.
- **[[kartenportale-grundlagen-checkliste-neue-parzelle]]:** Naturgefahren als Querschnitt-Pruefung
  ergaenzt (Abschnitt nach den 8 Pflicht-Grundlagen), Werkleitungskataster als "nicht Teil der 8,
  aber vor Ausfuehrung noetig" eingeordnet, M2-Abschluss dokumentiert, links-Frontmatter erweitert.
- **[[kartenportale-sharepoint-ablage]]:** Ordner-Landkarte-Zeilen `Werkleitungen/` und
  `Objektschutz/` verlinken jetzt auf die neuen Artikel.
- **SKILL.md machbarkeit** (§Datenquellen Punkt 4): GIS/Geodaten-Quelle auf `planungsgrundlagen`-
  Connector umgestellt (vorher nur manueller GIS-Browser-Verweis), inkl. Verweis auf die M1-
  Checkliste und Fallback-Hinweis fuer noch nicht automatisierte Themen.
- **SKILL.md ankaufspruefung** (§Datenquellen): `planungsgrundlagen` ergaenzt + Naturgefahren/
  Objektschutzkonzept als eigene Pruefdimension bei Hanglagen/Bachnaehe benannt.
- **SKILL.md behoerden-vorabklaerung:** Hinweis ergaenzt, dass `planungsgrundlagen` Teile der
  "gummigen" Masse (Baulinien-/Wald-/Gewaesserabstand mit `dist_m`) bereits belegt liefert, plus
  Praezisierung, dass Werkleitungen bei den Werken (nicht beim Tiefbauamt) liegen.
- **Register:** curriculum (K10/K11/M2 neu `[x]`), QUESTIONS (Sektion A erweitert, neue Sektion F
  Meta/Querschnitt fuer M2), INDEX (2 neue Kartenportale-Eintraege), raw/_INGESTED (4 neue Zeilen),
  CHANGELOG.

## Verifikation

- **Naturgefahren-Rechtsgrundlagen + Gefahrenstufen:** Original-PDF des Amts fuer Wald und
  Naturgefahren SZ direkt gelesen (amtliches Merkblatt, kein Sekundaerzitat) — Modell-D-
  Volltextabgleich. Gefahrenstufen-Tabelle 1:1 aus dem Dokument uebernommen, keine Interpolation.
- **Reales Objektschutzkonzept Reckholdern:** Original-Auftraggeberdokument (2304RE20, 26.09.2023)
  direkt gelesen — dient als unabhaengige **Zweitquelle**, die die generischen Gefahrenstufen-
  Regeln an einem echten Fall bestaetigt (drei Gefahrenstufen auf einer Parzelle, konsistent mit
  der amtlichen Systematik).
- **SIA-261-Schutzziele:** aus dem `schutz-vor-naturgefahren.ch`-Dokument (VKG/SIA/HEV/ASA-SVV-
  getragen, Dezember 2020) direkt gelesen, nicht aus Sekundaerquelle.
- **SZ-WebGIS-Layer-Namen:** **bewusst nicht** als getesteter Endpunkt in den Connector
  uebernommen — nur der manuelle Link aus dem realen Auftraggeberdokument dokumentiert. Dies ist
  die korrekte Anwendung der Leitplanke "Endpunkte immer testen, bevor established": ohne
  `identify`-Testaufruf bleibt der Artikel bei Status `emerging`, kein Connector-Versprechen.
- **Werkleitungskataster-Ablauf:** Original-PDFs (EKZ-Merkblatt, Swisscom-Netzauskunft, UPC-
  Katasterauskuenfte-Kontaktblatt) direkt gelesen, reale JANS-Bestellung (Reckholdern,
  27.11.2023) als Praxisbeleg — kein Sekundaerzitat.
- **M2:** Grep-Befund (`grep -n -i "planungsgrundlagen" SKILL.md`) fuer alle drei Skills VOR der
  Aenderung dokumentiert (keine Treffer) und nach der Aenderung implizit durch die Edits selbst
  verifiziert (Diff nachvollziehbar). Kein Refuter-Agent noetig, da es sich um eine belegbare
  Datei-Tatsache (Grep-Ergebnis) handelt, nicht um eine externe Sachbehauptung.

## Naechster Lauf (Run 23)

Rotation → **Recht/Norm** waere turnusgemaess dran (letzter Recht/Norm-Lauf Run 21). Kandidaten:
kommunale Parkplatzverordnungen (Vorrang vor VSS 640 281, noch nicht kartiert), SN 640 065/066
(Zweiradverkehr, geringer Nutzen fuer Tiefgaragen). **Kartenportale-Rest:** ZH-Naturgefahren-
Endpunkt kartieren (vermutlich AWEL, analog Gewaesserraum-Layer in
[[recht-norm-abstandsvorschriften-wald-gewaesser]]); SZ-Naturgefahren-Layer als REST-Endpunkt
testen, bevor `--produkt naturgefahren` in den Connector aufgenommen wird; `Baumkataster/`-Ordner
in PL-01 ist noch komplett unbearbeitet (kleineres Thema, niedrige Prioritaet). **Brandschutz-Rest**
(B5/C6 BSV 2026) bleibt blockiert bis 08/2026. **Energie-Kandidat** weiterhin D5 (PV-System-CHF/
kWp, wartet auf reale Schlussabrechnung).
