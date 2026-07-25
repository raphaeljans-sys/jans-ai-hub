# Aptos-Font: Installation und Verifikation (ausgelagert aus Rule mail-formatierung, 19.07.2026)

## Apple Mail Default-Schrift setzen

```bash
defaults write com.apple.mail NSFont -string "Aptos"
defaults write com.apple.mail NSFontSize -int 12
```
Danach Apple Mail neu starten (Cmd+Q, oeffnen).

## Aptos systemweit installieren (wird mit Word ausgeliefert)

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

## Verifikation

```bash
osascript <<'EOF'
use framework "AppKit"
set fontList to (current application's NSFontManager's sharedFontManager()'s availableFontFamilies()) as list
return (fontList as string) contains "Aptos"
EOF
```

## osascript-Drafts: Schrift setzen (nicht in allen macOS-Versionen zuverlaessig)

```applescript
tell content of newDraft
  set font of every paragraph to "Aptos"
  set size of every paragraph to 12
end tell
```
Robuster Fallback ist die `defaults write`-Methode oben. In Outlook Web ist Aptos bereits Default.
