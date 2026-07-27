# Konversations-Destillat 27.07.2026

Abdeckung: MacBook Pro 1'605 Sessions (davon 21 ausserhalb der Trainings-Loops) · Mac Mini
1'884 Sessions (davon 25 ausserhalb) · Cloud/Dispatch 19 Protokolle — Fenster 26h
(26.07. 19:37 bis 27.07. 21:37). Erhebung 27.07.2026, 21:37.

Hinweis zur Lueckenlage: fuer den 26.07.2026 existiert **kein** Destillat
(`260726-konversationen.md` fehlt, letzte Datei davor ist der 25.07.). Der Lauf vom 26.07.
ist offenbar ausgefallen; die Themen dieses Fensters decken den 26.07. ab 19:37 mit ab.

Echte Gespraeche mit Raphael in diesem Fenster: zwei (Vollgas-Entscheide auf dem MacBook Pro,
Gastrokuechen-Preise auf dem Mac Mini). Alles Uebrige sind Loop- und Monitor-Laeufe; deren
substanzielle Ergebnisse stehen weiter unten.

---

## 1. Vollgas-Flotte — vier Entscheide von Raphael getroffen (MacBook Pro, 27.07. ~21:20–21:36)

**Kern & Entscheide.** Der Vollgas-Chef-Radar legte Raphael den Stand vor: Fenster FREI, kein
Usage-Limit, 20 Commits in 90 Minuten, beide Stationen produktiv, je eine Runner-Instanz, keine
STOP-Datei. Raphael fragte «muss ich etwas machen entscheiden?» und entschied darauf vier
vorgelegte Punkte:

- **Takt der gesaettigten Loops → «Ereignis-Trigger».** Vier Loops melden Saettigung — `energie`
  (vierte Saettigungsbestaetigung in Folge, Run 108), `planungsgrundlagen` (17. Nullbefund,
  Run 83), `spec` (sechs Verifikationslaeufe ohne neuen Beleg), `immobewertung` (17. Delta-Null-
  Lauf). Sie zyklierten trotzdem alle ~20 Minuten weiter. Raphael waehlte die Umstellung auf
  Ereignis-Trigger statt Weiterlaufen oder Frischecheck. Umsetzung lief bei Redaktionsschluss
  noch (Session offen).
- **PL - 03 Brandschutz ins Normen-Inventar aufnehmen: ja.** Wurde im selben Lauf umgesetzt.
- **SIA-2024-Gesundheitsbau-Zwilling mergen: ja.** Der Loop hatte den destruktiven Merge korrekt
  verweigert und die Empfehlung vorgelegt; Merge wurde ausgefuehrt (drei nicht-redundante
  Bloecke eingefuegt, Backlinks umgebogen, Quelldatei geloescht, Index-Register bereinigt).
- **`energie` als eigener Skill (Meta-Punkt M2, seit Run 45 entscheidungsreif, 25-mal im Register
  vermerkt): Raphael hat zurueckgefragt** («ja oder was ist dein Vorschlag») — eine Empfehlung
  war bei Redaktionsschluss noch nicht ausformuliert.

Entwarnung im selben Zug: die Ruecktaktung `token-drosselung-100810` hat Raphael am 25.07. selbst
deaktiviert, der Runner hat kein Enddatum mehr (END_DATE 20991231). Vollgas laeuft damit **offen
und unbefristet** weiter — es endet nichts mehr von allein.

Radar-Hauptbefund ohne Entscheidungsbedarf: `wettbewerbs-dna-training` ist der einzige defekte
Loop der Flotte (6 von 8 Laeufen heute unproduktiv: vier Blindgaenger, ein Haenger von 3'742 s,
den der Stall-Killer beenden musste und der dabei den ganzen MacBook-Runner mitriss, ein
Kollisions-Selbstabbruch). Ursache offen; der Radar nimmt es sich im naechsten Lauf vor. Der
Blindgaenger-Fix von gestern Abend wirkte erstmals nachweislich (20:13 und 21:22 je ein leerer
Lauf gefangen, Retry gezogen).

**Offene Punkte & Folgeaktionen.**
- **Normkaeufe — unentschieden, von Raphael in diesem Gespraech NICHT beantwortet.** Fuenf
  gebuendelte Kaufentscheide haengen seit Run 98 in `energie`: SIA 385/1, SIA 385/2, SIA 384.354,
  SWKI VA105-01; dazu aus `normen` die fehlenden SIA-Volltexte 380/1 und 118:2013. Ohne die
  Volltexte koennen die betroffenen Aussagen nicht auf `established` gehoben werden.
- **`energie` als eigener Skill:** Vorschlag/Empfehlung an Raphael ausstehend.
- Bring-Schulden `immobewertung` (UBS-FS-Quantile, Bodenpreise, Diskontsatz) weiterhin offen.
- Der Radar notierte eine Ungenauigkeit in Rule 260725: der Satz «kein Doppellauf Runner↔Task»
  beschreibt nicht die Realitaet — beide laufen, der Kollisionsschutz faengt es ab.

**Radar-relevant: ja** — zwei unbeantwortete Entscheide (Normkaeufe = Geldentscheid und echte
Qualitaetsbremse; `energie`-Skill), plus die Zusage «Ereignis-Trigger wird gebaut» aus derselben
Session. Beide neu ins Register aufgenommen.

---

## 2. Gastrokuechen-Marktpreise recherchiert (Mac Mini, 27.07. 16:28)

**Kern & Ergebnis.** Raphael liess die marktueblichen Preise fuer eine Gastrokuechen-Zeile
recherchieren (Sockel, Unterschraenke, Kuehlkorpus Elit 700x660x760 mm eigengekuehlt mit 3
Schubladen GN 1/1 und Nische fuer bauseitigen Tiefkuehlschrank, Abdeckung Tekton Zenit mit Becken
Franke LAX 110/50/45, KWC Hebelmischer LIVELLO Chromeline A 225 mm, Rational iCombi Pro XS 6-2/3
mit Kondensationshaube). Ergebnisse (CHF inkl. MwSt, Stand Juli 2026):

- Rational iCombi Pro XS 6-2/3: CH-Listenpreis rund 13'400–13'500 (Gastro Ingross 13'484.70 inkl.
  / 12'474.30 exkl.), Strassenpreise ab rund 9'800 (SwissFrigo) — marktueblich 10'000–13'500.
- Kondensationshaube UltraVent XS: marktueblich 2'800–3'800; Variante UltraVent Plus rund
  800–1'000 hoeher.
- Kuehlkorpus Elit (eigengekuehlt, 3 Laden GN 1/1): Elit AG publiziert keine Preise und listet die
  Korpusse nur zentralgekuehlt — die eigengekuehlte 700-mm-Ausfuehrung ist eine Auf-Anfrage-
  Position. Vergleichsfabrikate (Chromonorm, Nordcap) 2'500–3'500 Euro netto; fuer Elit Richtwert
  4'500–6'500. Belastbarer Wert nur ueber Preisauskunft bei Elit AG (+41 56 460 50 60).

**Offene Punkte & Folgeaktionen.** Kein Projekt genannt, die Positionen decken sich aber
inhaltlich mit **KISPI LOS 273.35 Kuechenbau** (Roethlisberger/Inniger). Der Pruefbericht vom
17.07. nennt fuer denselben Steamer «Markt ca. 9'900–10'700 exkl. MwSt» — die heutige Recherche
bestaetigt diese Groessenordnung und liefert zusaetzlich Haube und Kuehlkorpus. Die Preisauskunft
bei Elit AG waere der naechste konkrete Schritt, falls die Zahl fuer die Verhandlung gebraucht wird.

**Radar-relevant: ja, aber ohne neue Zeile** — betrifft den bestehenden Register-Punkt «KISPI
LOS 273.35 Kuechenbau / Geraetepreise Roethlisberger» mit der Selbstfrist **Verhandlungs-/
Bestellentscheid bis 31.07.2026** (empfohlene Reduktion CHF 5'000–8'000, max. vertretbar 12'000).
Der Register-Eintrag ist um diese Datengrundlage zu ergaenzen, nicht zu duplizieren.

---

## 3. Debitoren-Verzug: drei Rechnungen, alle KISPI (MacBook Pro, Verzugscheck 27.07.)

**Kern.** 5 offene Rechnungen, davon **3 im echten Zahlungsverzug ueber CHF 32'280.00**, alle beim
Universitaets-Kinderspital Zuerich – Eleonorenstiftung (kreditoren@kispi.uzh.ch):

- **RE-00087, CHF 15'000.00**, faellig seit 16.04.2026, **102 Tage ueberfaellig**, Stufe Mahnung 2,
  deren Frist am 15.07.2026 abgelaufen ist. Vorschlag: Mahnung 3 / Betreibung (Stufe 4) — mit der
  Empfehlung, vorher persoenlich nachzufassen, weil zwei weitere Rechnungen desselben Debitors
  offen sind und ein gemeinsames Vorgehen sinnvoller ist als eine isolierte Betreibung.
- **RE-00098 (CHF 13'600.00)** und **RE-00099 (CHF 3'680.00)**, je seit 20.07.2026 faellig, 7 Tage
  ueberfaellig, Stufe Zahlungserinnerung, Frist laeuft bis 03.08.2026. Ab **04.08.2026** waere
  Mahnung 1 (Stufe 2) der korrekte naechste Schritt. Heute keine Aktion.

In Beobachtung (Faelligkeit in den naechsten 5 Tagen, noch nicht im Verzug): Nova Property Fund
Management AG, RE-00100, CHF 13'120.00, faellig 30.07.2026 · Tschopp Gertrud & Stefan, RE-00101,
CHF 6'000.00, faellig 31.07.2026.

Der Lauf war read-only: nichts erzeugt, nichts versendet, keine Mahnung gebucht.

**Radar-relevant: ja** — betrifft den bestehenden Register-Punkt «RE-00087 (KISPI, CHF 15'000)»
(Stand 25.07.: 100 Tage, jetzt 102 Tage) und die Zahlungserinnerungs-Frist 03.08. der beiden
uebrigen. Keine neue Zeile, Nachfuehrung des bestehenden Eintrags.

---

## 4. Abo-Auslastung weiterhin nicht messbar — Re-Login seit sieben Tagen offen (Mac Mini)

**Kern.** Der woechentliche Abo-Auslastungs-Check konnte erneut nicht messen: der Connector
`connectors/claude-usage.mjs` bricht beim Token-Refresh mit `invalid_grant` («Refresh token not
found or invalid», HTTP 400) ab, der Usage-Endpunkt antwortet danach 401. Weder Wochen-Prozentwert
noch Extra-Usage-Zahl liegen vor; letzte belastbare Messung bleibt der **19.07.2026 (31 % Woche /
0.00 USD Extra Usage, gruen)**. Neuer Beleg fuer das Ausbleiben der Aktion: der Keychain-Eintrag
«Claude Code-credentials» (Account raphaeljans) traegt unveraendert das Aenderungsdatum
**12.07.2026 22:01 UTC** — seit 15 Tagen kein Schreibzugriff.

**Offene Aktion Raphael, unveraendert seit dem 20.07.:** einmalig `claude` im interaktiven
Terminal starten und `/login` ausfuehren, danach Kontrolllauf `node connectors/claude-usage.mjs`.
Dringlichkeit wurde auf **mittel-hoch** gehoben: seit der Drossel-Aufhebung vom 25.07. laufen die
Vollgas-Runner auf beiden Stationen wieder, ein Anlaufen der kostenpflichtigen Extra Usage bliebe
derzeit unbemerkt.

**Radar-relevant: ja** — bereits im Register nachgefuehrt (Nachtrag 27.07. zum 401-/Re-Login-
Eintrag vom 20.07.), keine neue Zeile.

---

## 5. Infrastruktur-Befunde aus den Nachtschicht-Zyklen (Mac Mini)

- **Runner-Bug behoben:** `scripts/vollgas-runner.sh` schloss entgegen Rule 260725 nur
  `wissens-chef` von `EXCLUDE_RE` aus. Vier weitere hochgetaktete Loops (`twin`, `spec-training`,
  `wettbewerbs-dna`, `normen-training-nacht`) fehlten und wurden doppelt gefeuert — Ursache eines
  echten `index.lock`-Konflikts am 25.07. Ergaenzt und gegen alle sechs Loop-Namen sowie die
  regulaeren Vollgas-Tasks getestet, keine Kollateral-Exklusion. (Der vorangehende Zyklus hatte
  bereits `grobkosten` nachgetragen.)
- **Neuer Loop `grobkosten-training`** auf dem Mac Mini eingerichtet (Programm unter
  `wissen/grobkosten/training/PROGRAMM.md`) — additive Umlenkung der Kapazitaet der gesaettigten
  KBs. Begruendung: die KB traegt heute nur Seed-Werte, `raw/` ist leer, waehrend
  `grobkosten-onepager` und der Agent `grobkosten-rechner` damit jede fruehe Studie rechnen.
  Messkorrektur dabei dokumentiert: der erste Quellen-Scan lief am falschen Ort
  (`02_Architektur_Archiv`, 0 Treffer) — die realen Kostendokumente liegen unter
  `/Volumes/daten/04_Buero/02_Projekte/<projekt>/04_Kosten`, inkl. einer vollstaendigen
  Bauabrechnung bei 1527 EH Europe.
- **Heartbeat 27.07. 21:37: alles OK** (Exit-Code 0). NAS erreichbar, Git clean auf `main`,
  M365-Connector verbunden, 70.3 GB frei von 920 GB, keine offenen Sync-Tasks, Symlinks OK,
  DOCX→PDF-Pipeline bereit. Einziger Beobachtungspunkt bleibt der freie Speicher.

**Radar-relevant: nein** (Infrastruktur, selbst behoben, keine Frist).

---

## 6. Loop-Ergebnisse mit Substanz (Zusammenfassung)

Rund 3'450 Trainings-/Routine-Laeufe in diesem Fenster (MacBook Pro: wettbewerbs-dna, normen,
baurecht-buch, twin-fidelity, twin-mail je ~315–322; Mac Mini: grobkosten 1'859), ganz
ueberwiegend ohne Besonderheiten. Fachlich substanziell waren:

- **Normen Run 31:** Bei der VKF-Arbeitshilfe 1001-15 liegt die **volle 2017/2018-Fassung** in
  einem nie gescannten Ordner und traegt gegenueber dem bisherigen Stand **28 materielle
  Aenderungen** (die «0 Abweichungen»-Behauptung ist widerlegt, bei Ziff. 6 auch inhaltlich; zwei
  Deltas steckten allein in Zellfarben). Die Widerlegungsstufe fand ausserdem Regressionen aus
  Run 30 — u.a. eine «Korrektur» der Untergrenze in Lignum-Tab. 446-1 von korrekt 50 mm auf falsch
  60 mm. Befunde: Lignum 4.1 26, SIA D 0165 17, Lignum 4.2 18, Lignatec 17. Commit `149c6668`.
- **Energie Run 116:** Vier Luecken geschlossen (Fettabscheider, Abwaermepflicht, Abwasserwaerme,
  Therapiebad). Zentraler Fund, an der Primaerquelle verifiziert: **§ 30a BBV I** begruendet eine
  echte Abwaerme-Nutzungspflicht, und **MuKEn 2025 Art. 1.18 Abs. 2** enthaelt die 2-GWh-Klausel
  doch — mit der fuer Architekten brauchbaren Umrechnung **2 GWh ≈ ab 230 kW elektrischer
  Dauerleistung** eines Rechenzentrums. 186 Destillate, FAQ F168–F171. Commit `9fde70fe`.
- **Wettbewerbs-DNA:** Baustein B3 Wohnungsbau auf **8/8** — Ziel erreicht (fuenf Destillate
  Tranche 2, alle nach Refuter-Pruefung `established`). Commit `338dba50`.
- **Twin Batch 74:** rj@-Frontier leer, deshalb Strangwechsel auf das bisher unerschlossene
  Postfach **mail@raphaeljans.ch** (45 Sent Items, erst 2 destilliert) — drei authentische
  vor-Claude-Mails auf drei Facetten verteilt.
- **firmengruendung-ch:** Revisionsschwellen belegt aus dem OR-Volltext — Art. 727 (Bilanzsumme
  CHF 20 Mio., Umsatz CHF 40 Mio., 250 Vollzeitstellen; zwei von drei in zwei aufeinanderfolgenden
  Geschaeftsjahren) und Art. 727a; `needs-verification`-Flag geloest.
- **architekten-synobsis:** Sechs offene Identitaetsfragen recherchiert — drei geklaert
  (Herter/Maillart-Zusammenarbeit bestaetigt, Sofalounge AG als Vorgaengerfirma von blgp
  architekten AG mit Gruenderin Pinar Goenuel, Fabio Don als Zuercher ETH-Architekt), zwei als
  Negativ-Befund dokumentiert (AASZ, Studio_Mumbai_Betoi), eine praezisiert (Sergison Bates
  fuehrt aktuell kein Dubliner Buero).

**Radar-relevant: nein.**

---

## Nicht abgedeckt

- Reine Claude-App-Chats vom iPhone/iPad sind headless nicht auslesbar (bekannte Grenze).
- Mehrere Monitor-Laeufe (tenant-hygiene Phase 1, Behoerden-Dokumenten-Check, hub-chef,
  logbuch-radar, Wissens-Chef, Zahlungsabgleich) waren zum Erhebungszeitpunkt **noch nicht
  abgeschlossen** — ihre Ergebnisse erscheinen im Destillat von morgen.
