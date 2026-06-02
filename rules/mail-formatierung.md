# Regel: Mail-Formatierung (Aptos 12 pt)

## Hintergrund

Alle ausgehenden E-Mails von JANS (Raphael Jans Architekten ETH) werden in der Schrift **Aptos 12 pt** verfasst. Aptos ist der neue Standard-Font von Microsoft 365 und löst Calibri ab. Er ist auf raphaeljans.ch und in allen Office-Dokumenten konsistent eingesetzt — damit auch in der E-Mail-Korrespondenz dasselbe Schriftbild gewahrt bleibt, wird Aptos 12 pt als verbindlicher Standard gesetzt.

Der Standard wurde am 13. Mai 2026 festgelegt und gilt für alle Folgemails, sofern der Benutzer nicht explizit eine andere Schrift fordert.

## Verbindliche Mail-Formatierung

| Element | Wert |
|---|---|
| Schrift | **Aptos** |
| Grösse | **12 pt** |
| Farbe | Schwarz |
| Stil | Regular (keine Akzentfarben, kein Hintergrund) |

## Wo eingestellt

### Apple Mail (macOS)

Default-Schrift für neue ausgehende Mails:

```bash
defaults write com.apple.mail NSFont -string "Aptos"
defaults write com.apple.mail NSFontSize -int 12
```

Nach Aenderung Apple Mail einmal neu starten (Cmd+Q, dann öffnen).

### Aptos-Font installieren

Aptos wird mit Microsoft Word ausgeliefert, ist aber nicht standardmaessig systemweit registriert. Installation in den User-Font-Ordner:

```bash
mkdir -p ~/Library/Fonts
cp "/Applications/Microsoft Word.app/Contents/Resources/DFonts/Aptos.ttf" \
   "/Applications/Microsoft Word.app/Contents/Resources/DFonts/Aptos-Bold.ttf" \
   "/Applications/Microsoft Word.app/Contents/Resources/DFonts/Aptos-Italic.ttf" \
   "/Applications/Microsoft Word.app/Contents/Resources/DFonts/Aptos-Bold-Italic.ttf" \
   "/Applications/Microsoft Word.app/Contents/Resources/DFonts/Aptos-Light.ttf" \
   "/Applications/Microsoft Word.app/Contents/Resources/DFonts/Aptos-SemiBold.ttf" \
   ~/Library/Fonts/
```

### Verifikation

```bash
osascript <<'EOF'
use framework "AppKit"
set fontList to (current application's NSFontManager's sharedFontManager()'s availableFontFamilies()) as list
return (fontList as string) contains "Aptos"
EOF
```

## Microsoft 365 / Outlook Web

In Outlook Web (outlook.office.com) ist Aptos bereits der Default-Font für neue Mails (M365-Standard seit 2024). Keine zusaetzliche Konfiguration noetig.

## osascript-Drafts (Apple Mail via Bundle-ID)

Bei programmatisch erstellten Drafts versucht das Skript zusaetzlich, die Schrift per AppleScript zu setzen:

```applescript
tell content of newDraft
  set font of every paragraph to "Aptos"
  set size of every paragraph to 12
end tell
```

Diese Variante ist nicht in allen macOS-Versionen zuverlaessig. Die `defaults write`-Methode oben ist der robuste Fallback und gilt fuer alle neu erstellten Drafts (auch im UI).

## Unterschied zu Dokumenten

| Kontext | Schrift |
|---|---|
| **E-Mails** (Apple Mail, Outlook Web) | **Aptos 12 pt** |
| **Dokumente** (DOCX, PDF) | **Cambria 11 pt** (siehe `dokument-layout-standard.md`) |
| Praesentationen (PPTX) | eigene Konvention |

Der Stilbruch ist beabsichtigt: Cambria (Serif) wirkt in gedruckten Dokumenten ruhig und seriös, Aptos (Sans-Serif) ist in Bildschirmkommunikation lesbarer und entspricht dem aktuellen M365-Standard.

## Wann gilt diese Regel

- Alle E-Mails, die Claude im Auftrag von JANS verfasst (per Apple Mail, M365, andere)
- Alle E-Mail-Drafts, die via osascript oder MCP-Connector erstellt werden
- Sowohl auf Mac Mini als auch MacBook Pro

## Wann NICHT

- Wenn der Benutzer explizit eine andere Schrift fordert ("in Helvetica", "wie XY")
- Wenn das Ziel-Mailsystem Aptos nicht rendern kann (Fallback: Calibri, Helvetica)
- Englische Korrespondenz mit Empfaengern aus Aerospace/Tech (dort oft eigene Konventionen)

## Verknuepfung

Wird in CLAUDE.md per `@`-Import eingebunden, sodass die Regel automatisch in jeder Claude-Session aktiv ist.
