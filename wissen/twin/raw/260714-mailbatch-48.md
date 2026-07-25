# Mailbatch 48 — Sent Items rj@, sequentieller Sweep fortgesetzt

**Fenster:** Index 334 bis 314 in "Gesendete Elemente" (Exchange-Konto), **2026-06-01 08:59
bis 2026-06-02 11:14** (neueste=1/älteste=1282, Gesamtbestand unverändert 1282). Zugriff via
Apple Mail osascript (Bundle-ID `com.apple.mail`, Account "Exchange") — dritte etablierte
Zugriffsroute; M365-MCP-Server liefert in dieser Session nur CLI-Kommandosuche
(`m365_search_commands`/`m365_run_command`), kein direktes Mail-Read-Tool; Cowork-Connector
`outlook_email_search` in dieser Session nicht verfügbar.

Index 335 = letzter in Batch 47 verwerteter Mail ("LOS 258.06 Küche Vergleich", 29.05.2026
16:16) — bestätigt als exakte Fortsetzung des Registerstands.

21 Mails im Fenster gesichtet (Index 314-334), 6 Volltexte gelesen, 1 reine
Teams-Besprechungseinladung ohne Fliesstext übersprungen (Index 332), 1 Auto-"Angenommen"-
Termin-Bestätigung ohne Fliesstext übersprungen (Index 317). Rest = Serie von 12
Offertanfrage-Mails (Submissionsvorbereitung Albertstrasse 7 Kostenvoranschlag, versch.
Gewerke: BKP 228.1 Rollläden, 230.00 Elektro ×3, 250 Sanitär ×3, 272.5 Briefkastenanlage,
273 Schreinerarbeiten, 275.0 Schliessanlage, 281.7 Bodenbeläge Holz, 285.00 Malerarbeiten) —
eine davon (Index 318, Stählin Elektro) im Volltext gelesen als Vertreter der Serie.

## Hauptfäden

- **Albertstrasse 7 (Nova Property Fund, Roman Steinmann Investor-Du):** Submissionsrunde
  KV — Serie identisch aufgebauter Offertanfrage-Mails an diverse Handwerker/Gewerbler
  (Sie-Register, Bullet-Liste der Arbeiten, "Für Ihren Rückruf/Ihre Rückmeldung bin ich
  Ihnen dankbar"); Besichtigungstermin-Koordination mit Steinmann (Du, FG+Block) und mit
  Vision Apartments/Jorge Gomes (Sie, "Geschätzter Herr Gomes", warme Sie-Stufe).
- **KISPI Lenggstrasse 30 (Albin Spahic/Stefanie Sonderegger, Du):** Küchenvergleich-
  Entscheidfindung, ultrakurze Terminantwort an Sonderegger ("Hoi Stefi, Online per Teams.").
- **Wartstrasse 8 (Bauherrin Undine, Du) / Bauamt Stadt ZH (Frau Hottinger, Sie):**
  Rechnungsweiterleitung FSG an Undine; dringliche Nachfrage zum Vorab-Bauentscheid an
  Hottinger mit P.S.-Zusatzfrage zur Zuständigkeit.

## Gewichtung

Authentisch, klar vor-Claude-Stil (Flüchtigkeits-Slips: "Guten Felix Stählin" statt "Guten
Tag Herr Stählin"; "63742.00" ungerundet in früherer Quote-Mail bereits bekannt). Keine
Echo-Falle in den 6 gelesenen Volltexten — alle Offertanfragen tragen dieselbe leicht
unpolierte Bullet-Struktur mit "•" und inline-">"-Zusatz, kein KI-typisches Muster
(keine H2/nummerierte Struktur, kein Assistenz-Schluss).

## Mikro-Metrik

251 Wörter (6 Kernmails via `stilmetrik.py`): Du-Gross-Quote 1.0; Tausender-Apostroph 0;
Ellipsen 0; Satzlänge ø 13.2 W; Anreden gemischt (Hoi Stefi, Geschätzter Roman, Geschätzte
Frau [Hottinger], Geschätzte Undine, Geschätzter Herr [Gomes] je 1×); Grüsse "Freundliche
Grüsse" 6× dominant, auch im reinen Du-Register (Roman, Undine) — bestätigt erneut FG als
Standard-Gruss, sobald ein Sach-/Rechnungskern transportiert wird.

## Neue Marker (Details im jeweiligen Wiki-Artikel)

- **stimme:** informeller Typo-Anredefehler "Guten <Vorname> <Nachname>" statt "Guten Tag
  Herr <Nachname>" in Offertanfrage-Serien-Mails; präventive Dankesformel "Für Ihre
  Organisation bedanke ich mich schon im Voraus"; ultrakurze Teams-Terminantwort "Hoi Stefi,
  Online per Teams."; Reassurance-Satz zur Enthebung einer Du-Bitte ("ist es nicht so
  schlimm, ... werden stabil bleiben"); dringliche Kurzformel an Behörde "Es ist jetzt
  wirklich dringend." + informelle P.S.-Zusatzfrage.
- **beziehungsregister:** Nickname-Mapping Stefanie Sonderegger → "Stefi" (sie selbst
  signiert "steffi"); Roman Steinmann (Investor-Du) bleibt bei FG+Block für reine
  Termin-/Orga-Mails (kein Lieber-Gruss-Kurzform); Jorge Gomes (Vision Apartments, Sie)
  "Geschätzter Herr Gomes" warme Sie-Stufe bestätigt.
- **arbeitsweise:** wiederverwendbare Offertanfrage-Bullet-Vorlage über eine ganze
  Submissionsrunde (12 Gewerke/Firmen, gleiche Struktur, individualisierter Leistungsteil);
  aktive Nachfass-Zusage "Ich werde mich noch telefonisch bei Ihnen melden um die Begehung
  vorzubesprechen."
- **denken:** Enthebungs-Logik bei Terminverzicht ("nicht so schlimm, weil die Preise stabil
  bleiben") als kleine Wenn-dann-Beruhigung statt Insistieren.

## Fortsetzung

Nächster Lauf: ab Index 313 in "Gesendete Elemente" (Exchange, neueste=1/älteste=1282).
