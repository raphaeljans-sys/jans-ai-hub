---
title: Synergie-Lauf 38 (Tagestakt) — 17.09.2026
status: established
last_updated: 2026-09-17
sources:
  - git origin/main, Fenster 16.09.2026 17:10 bis 17.09.2026 17:10 (127 Commits)
  - connectors/bexio-auth.mjs, connectors/bexio.mjs, connectors/README.md, connectors/WEGE.md
  - rules/auto-verbesserungen.md (Eintraege 260702 Neufassung, 260917b)
  - logbuch/AKTIONS-WHITELIST.md (A9), templates/user-level/CLAUDE.md (Z. 51, Z. 57)
  - Scheduled Task bexio-buchen-monatlich (Mac Mini, per ssh gemessen)
links:
  - SYNERGIE-REGISTER.md (SYN-90, SYN-91)
---

# Synergie-Lauf 38 — 17.09.2026

## Ergebnis in drei Saetzen

Das Fenster brachte **einen neuen Connector** (`connectors/bexio-auth.mjs`, OIDC-Dauerzugang zu bexio) und
die **Neufassung der Buchungsvollmacht** (Rule `auto-verbesserungen` 260702, Entscheid Raphael): Claude
kontiert und bucht Banktransaktionen ab sofort selbstaendig, ohne Betragsgrenze. Der Connector ist
**vorbildlich verdrahtet** — README, Wege-Register, Spec, beidseitige Rueckkante, Task auf dem Mac Mini;
dort war nichts zu beanstanden. Offen sind **zwei Governance-Kanten derselben Vollmachtsaenderung**: die
zitierte Whitelist-Zeile A9 regelt den Zweifelsfall noch gegenteilig (**SYN-90**), und die User-Level-Grenze
verbietet woertlich weiterhin, was die Rule jetzt erlaubt (**SYN-91**).

## Schritt 0 — Uhr und NAS

NAS gemountet. Station 17:10 CEST gegen den nativen Synology-Log gestellt (`selfcommit-202609.log`, letzter
Eintrag 17:00:06 `push OK 8a4df7cb7`) — **keine Abweichung**, der Lauf faehrt mit dem realen Datum.

## Schritt 1 — Delta

127 Commits im 24-h-Fenster. HEAD lokal und `origin/main` identisch (`8a4df7cb7`). Anschlussprobe: aeltester
Commit im Fenster `37e0065e4` vom 16.09. 17:15, direkt nach der Delta-Basis 17:10 — keine Luecke, kein
Uhr-Verdacht.

## Schritt 3 — Verdrahtung des neuen Bausteins

`connectors/bexio-auth.mjs` haelt den bexio-Zugang ueber einen Refresh-Token im macOS-Schluesselbund
(Service `jans-bexio-oidc`) statt ueber den 60-Tage-PAT. Geprueft und **in Ordnung**:

01 **Werkzeug-Index.** `connectors/README.md` Z. 26-27 fuehrt `bexio.mjs` und `bexio-auth.mjs` je mit Zweck,
Einstiegs-Flags und Zugangsweg.

02 **Wege-Register.** `connectors/WEGE.md` Z. 49 nennt OIDC als ersten Weg, den PAT als Rueckfall samt
60-Tage-Grenze und die belegte Sackgasse «in ssh-Sessions ist der Schluesselbund gesperrt (rc=36)».

03 **Rueckkante beidseitig.** `bexio.mjs` Z. 46 importiert `holeOidcToken`/`oidcStatus`; der Kopf von
`bexio-auth.mjs` nennt `bexio.mjs` und den Rueckfallweg. Keine einseitige Kante.

04 **Spec vorhanden.** `wissen/spec/outputs/2026-09-17_bexio-oidc-dauerzugang_spec.md`, dazu die zweite Spec
zum selbstaendigen Buchen.

05 **Task registriert und real.** `logbuch/rollen/rollen-map.tsv` Z. 96 fuehrt `bexio-buchen-monatlich` als
maintainer/aktiv; der Task liegt auf dem **Mac Mini** (per `ssh mini` gemessen, kanonische Form nach dem
heute gefassten Eintrag 260917b). Auf dieser Station fehlt er erwartungsgemaess — zwei Task-Registries.

**Zwei Verdrahtungs-Verdachte gegengeprueft und fallengelassen:** eine connectorspezifische Allowlist-Zeile
ist nicht die Konvention (`.claude/settings.json` fuehrt `Bash(*)`), und `rollen-map.tsv` fuehrt ueberhaupt
keine Connectoren (Typen: command, loop, parkiert, referenz, script, skill, task).

## Die zwei Befunde

### SYN-90 — die Vollmacht zitiert eine Grundlage, die ihr widerspricht

Eintrag 260702 in der Neufassung vom 17.09. ordnet an: was sich nicht belegen laesst, geht **auf 1090
Transferkonto mit Praefix «ABKLAERUNG:»**, ausdruecklich «nie auf ein geratenes Aufwandkonto». Derselbe
Eintrag schliesst mit «Mahnstufen weiter nach `logbuch/AKTIONS-WHITELIST.md` (A1, A9)». A9 ist aber keine
reine Mahn-Zeile: sie heisst «bexio-Buchungen **und** Mahnstufe 2+» und sagt zum selben Fall «bei Zweifel an
Betrag, Konto oder Duplikat: **Entwurf statt Buchung**». Zweite Achse: A9 traegt ein **Widerrufsfenster von
60 Minuten**, die Neufassung berichtet «im Tagesbriefing» — bei einem Monatslauf ist das kein Widerruf.

**Ehrliche Daempfung.** Der Vollzug ist gedeckt: der Task-Prompt auf dem Mini regelt den Zweifelsfall selbst
nach der Neufassung (Z. 17, 1090/ABKLAERUNG ab 60 Tagen Alter) und listet die harten Grenzen vollstaendig.
Der Widerspruch trifft also nicht den Buchungslauf, sondern jede andere Stelle, die A9 als Vollmacht liest —
namentlich den `hub-chef`, der die Whitelist als Governance-Dokument fuehrt.

### SYN-91 — die Grundschicht verbietet, was die Projekt-Rule erlaubt

`templates/user-level/CLAUDE.md` Z. 57 (und die verteilte Kopie `~/.claude/CLAUDE.md`, Wortlaut identisch)
sagt unter «Grenzen» seit dem 29.07.2026 unveraendert: «Nie Zahlungen ausloesen, **nie Buchungen ohne
ausdrueckliche Einzelfreigabe**.» Genau diese Formel ersetzt die Neufassung.

**Ehrliche Daempfung.** Die Datei loest den Rang selbst auf (Z. 51: im Hub-Repo gilt dessen CLAUDE.md, die
User-Datei ist «nur die Grundschicht darunter»), und die Grundschicht ist die **strengere** Seite — ein
Fehlgriff fuehrt zu Nicht-Handeln, nicht zu falschem Geld. Real bleibt: die Rangklausel ist allgemein
formuliert, die Grenze absolut, und ausserhalb des Hub-Repos laedt die Projekt-Rule gar nicht.

### Warum dieser Lauf nichts davon selbst gesetzt hat

Bei SYN-88 wurde gestern ein Vermerk direkt in `rules/anrede-kontakte.md` geschrieben — dort ging es um eine
**Stil**-Rule. Hier stehen ein **Vollmachtstext** (A9) und eine **Sicherheitsgrenze** (User-Level) zur
Debatte, beide Raphaels Text und beide geldnah. Eine Vollmacht weitet man nicht durch einen Aufsichtslauf,
auch nicht durch einen als «Vermerk» bezeichneten Zusatz. Beide Befunde sind vorgelegt, keiner umgesetzt.

**Kein Fristen-Register-Eintrag nach Rule 260805:** der naechste Buchungslauf ist durch seinen eigenen Prompt
gedeckt, es haengt kein Termin und kein Geldbetrag an der Klaerung.

## Weiteres Gegengepruefte (kein Befund)

01 **`zahlungsabgleich` gegen die Neufassung.** Der Skill sagt kategorisch «bucht, reconciled und loescht
NICHTS automatisch» (Z. 11, Z. 72). Das ist **kein** Widerspruch — die Neufassung nimmt Reconcilen,
Zahlungen, Loeschen und Stornieren ausdruecklich aus. Ein Fehlbefund, wenn man nur das Stichwort greppt.

02 **Tailscale-Waechter auf dem Mac Mini.** Rule 260917b und Chronik 260917b halten fest, dass er dort fehlt.
Er steht mit exaktem Behebungsbefehl bereits in `logbuch/fristen.md` Z. 4498-4506 — abgedeckt.

03 **Hygiene, nicht Synergie:** `.claude/settings.local.json` traegt neben der generischen Zeile 57
`Bash(ssh mini *)` noch vier fossile Eintraege der Form `Bash(ssh -o ConnectTimeout=10 mini '<ganzer
Befehl>')` (Z. 54, 60-62) — genau die Abdruecke, die Eintrag 260917b beschreibt. Stationslokal, nicht in Git,
funktional harmlos. Aufraeumen ist eine Permission-Aenderung und damit Raphaels Entscheid; hier nur vermerkt.

## Leerlauf-Ehrlichkeit

Der Frueh-Ausstieg griff nicht (ein neuer Connector im Delta). Die Analyse lief inline, ohne Subagenten; die
Messungen waren wenige Befehle, ein Fan-out haette nach Rule `modellwahl-routine` mehr gekostet als gebracht.
