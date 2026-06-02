---
name: marketing
description: LinkedIn-Marketing-Harness für JANS (Raphael Jans Architekten ETH/SIA). Baut systematisch organische Reichweite und Akquise über LinkedIn auf — im polarisierenden, meinungsstarken Stakkato-Stil (Hook, Kunden-Typologie, Wertepaare, Orts-Anker). Orchestriert drei Sub-Agenten (linkedin-stratege, linkedin-texter, linkedin-engagement). Diesen Skill verwenden wenn der Benutzer fragt - "LinkedIn Post", "Post schreiben", "Marketing", "Content erstellen", "Redaktionsplan", "Content-Plan", "Social Media", "Reichweite aufbauen", "Beitrag für LinkedIn", "Hook finden", "Kommentar antworten", "Vernetzungsnachricht", "Post recyceln", "was soll ich posten". Auch auslösen wenn aus einem Projekt, einer Baustellen-Beobachtung, einem Fachthema (Brandschutz, Healthcare, Bauen im Betrieb) ein LinkedIn-Beitrag entstehen soll.
---

# JANS Marketing-Harness — LinkedIn

## Contract

- **Trigger:** Greift, wenn organische LinkedIn-Reichweite/Akquise aufgebaut werden soll — Redaktionsplan, einzelner Post, Kommentar/Vernetzung/Recycling — oder wenn aus einem Projekt, einer Baustellen-Beobachtung oder einem Fachthema (Healthcare, Brandschutz, Bauen im Betrieb) ein LinkedIn-Beitrag entstehen soll.
- **Inputs:** Thema/Hook oder Projektbezug, gewünschte Content-Säule, ggf. bestehender Redaktionsplan; bei Engagement der fremde Post/Kommentar.
- **Output-Ablage:** LinkedIn-Posts (Text) zum Kopieren; bei dauerhafter Ablage `~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken-JANS/AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/marketing/` mit Namensschema `YYMMDD-Thema.md`.
- **Abhaengige Rules:** umlaute-konvention, antwort-formatierung, auftrags-dekomposition; Korrektur-Pflicht (Skill `korrektur` vor Ausgabe jedes Posts/Texterzeugnisses).
- **Vorgelagert:** —
- **Nachgelagert:** Agenten `linkedin-stratege` / `linkedin-texter` / `linkedin-engagement` (orchestriert durch diesen Skill).

## Zweck

Dieser Skill baut für **Raphael Jans Architekten ETH/SIA** systematisch organische
Reichweite und qualifizierte Akquise über LinkedIn auf. Er ist das Marketing-Gegenstück
zum `telesales`-Skill (dort: Kaltakquise am Telefon; hier: Sog-Wirkung über Content).

Der Stil ist bewusst **polarisierend und meinungsstark** — modelliert nach der
Content-Mechanik erfolgreicher B2B-Solo-Profile (Hook → Typologie → Wertepaare →
Orts-/Autoritäts-Anker → Selbstselektion der Wunschkunden), aber inhaltlich auf
Healthcare-Architektur, Brandschutz und Immobilien-Asset-Beratung übertragen.

Leitsatz: **Content, der die falschen Bauherren laut wegschickt, zieht die richtigen an.**

## Der Harness — drei Sub-Agenten

| Agent | Rolle | Wann |
|---|---|---|
| `linkedin-stratege` | Positionierung, Content-Säulen, 30-Tage-Redaktionsplan, Themen-Ideen | Am Anfang oder wenn die Pipeline leer ist: "Was soll ich diesen Monat posten?" |
| `linkedin-texter` | Schreibt den fertigen, postreifen Beitrag im JANS-Stil aus Thema/Hook | "Schreib mir einen Post über X" |
| `linkedin-engagement` | Kommentar-Antworten, Reaktionen auf fremde Posts, Vernetzungsnachrichten, Recycling alter Posts | "Antworte auf diesen Kommentar", "Post recyceln", "Vernetzungsnachricht" |

Der Skill orchestriert: Bei einer offenen Anfrage ("mach mir Marketing") zuerst
`linkedin-stratege` für den Plan, dann pro Beitrag `linkedin-texter`. Bei einer
konkreten Post-Anfrage direkt `linkedin-texter`.

## Wissensbasis (in diesem Ordner)

Vor jeder Texterstellung **immer** diese Dateien als verbindliche Grundlage lesen:

| Datei | Inhalt |
|---|---|
| `voice-guide.md` | Der JANS-LinkedIn-Stil: Mechanik, Satzbau, Do/Don't, Formatierung |
| `kunden-typologien.md` | Wunschkunden + die "Mit wem JANS NICHT baut"-Liste (Polarisierungs-Material) |
| `content-saeulen.md` | Die 5 Content-Säulen + Themen-Pool |
| `hook-bibliothek.md` | Bewährte Hook-Muster zum Wiederverwenden |
| `beispiel-posts.md` | Goldstandard-Beispielposts (an diesen messen) |

## Positionierung (Kurzfassung)

- **Wer**: Raphael Jans, Architekt ETH/SIA, Founder & MD. Zürich, Grubenstrasse 37.
- **Nische**: Healthcare-Architektur (Spital, Klinik, Psychiatrie, Pflege) · Brandschutz-Tiefe · Asset-/Portfolio-Beratung für Immobilien-Investoren.
- **Kern-Differenzierung**: Betrieb vor Fläche · Brandschutz als Entwurfsparameter statt Nachweis · Healthcare-Spezialwissen statt Generalisten-Breite · Bauen im laufenden Betrieb.
- **Referenz-Beweise**: Kinderspital Zürich (KISPI), Clienia Oetwil am See, Kinder- und Jugendpsychiatrie Chur, Pflegeheim Herose Aarau, Psychiatrische Klinik Dolderstrasse 29.

## Workflow

### A) "Bau mir Marketing auf" / "Was soll ich posten?"
1. `linkedin-stratege` aufrufen → liefert Positionierungs-Check + 30-Tage-Redaktionsplan (12–16 Post-Ideen, je Säule getaggt).
2. Plan mit Raphael abstimmen.
3. Pro freigegebener Idee `linkedin-texter` → fertiger Post.

### B) "Schreib mir einen Post über X"
1. Wissensbasis lesen (voice-guide, typologien, hooks).
2. `linkedin-texter` direkt → 1 Hauptvariante + 2 alternative Hooks.
3. Post in Ablage speichern (siehe unten).

### C) "Antworte / kommentiere / vernetze / recycle"
1. `linkedin-engagement` → kontextgerechte Antwort im JANS-Ton.

## Eiserne Regeln (gelten für jeden Output)

- **Echte Umlaute** ä/ö/ü, **ss statt ß** (Schweizer Hochdeutsch).
- **Ein Gedanke pro Zeile**, kurze Sätze, viele Umbrüche — mobil-lesbar.
- **Keine Hashtag-Wolke**: maximal 3 gezielte Hashtags am Ende.
- **Keine Emoji-Inflation**: sparsam, höchstens 1–2 pro Post, oft gar keine.
- **Immer ein Standpunkt** — nie neutral, nie "es kommt darauf an" als Hauptaussage.
- **Kein Fachjargon ohne Übersetzung** — Entscheider sind oft keine Architekten.
- **Keine erfundenen Fakten/Projekte/Zahlen** — nur reale JANS-Referenzen verwenden; im Zweifel bei Raphael nachfragen.
- **CTA dezent**: Orts-/Kontakt-Anker statt "Jetzt Termin buchen!!!".

## Ablage

Fertige Posts und Redaktionspläne werden abgelegt unter:
```
~/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/
  AD - 01 Geschaeftsfuerung/JANS AI/30 JANS AI HUB OUTPUT/marketing/
    redaktionsplan/    ← Content-Pläne (YYYYMM-redaktionsplan.md)
    posts/             ← fertige Posts (YYYYMMTT-thema.md)
```
Dateinamen ASCII-only gemäss `dateinamen-konvention.md` (Posttext im Inneren mit echten Umlauten).

## Firmenangaben (verbindlich)

```
Raphael Jans I Architekten ETH I SIA
Grubenstrasse 37 I 8045 Zürich
Raphael Jans, Founder I MD · MSc ETH I SIA
rj@raphaeljans.ch · +41 79 846 11 65 · www.raphaeljans.ch
```
