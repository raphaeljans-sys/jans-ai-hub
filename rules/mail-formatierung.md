# Regel: Mail-Formatierung (Aptos 12 pt)

Alle ausgehenden JANS-E-Mails in **Aptos 12 pt**, Schwarz, Regular (M365-Standard-Font,
konsistent mit raphaeljans.ch und Office). Festgelegt 13.05.2026.

| Kontext | Schrift |
|---|---|
| E-Mails (Apple Mail, Outlook Web) | **Aptos 12 pt** |
| Dokumente (DOCX/PDF) | Cambria 11 pt (Rule `dokument-layout-standard.md`) |

- In Apple Mail ueber `defaults write com.apple.mail NSFont/NSFontSize` gesetzt; in Outlook
  Web ist Aptos Default. Installation/Verifikation/osascript-Details:
  `docs/referenz/aptos-font-installation.md`.
- Gilt fuer alle Mails und Drafts (osascript/MCP), beide Stationen. Ausnahmen: expliziter
  anderer Schrift-Wunsch; Zielsystem ohne Aptos (Fallback Calibri/Helvetica).
