# M365-Connector: Zertifikat erneuern (alle 2 Jahre)

Ausgelagert aus CLAUDE.md am 30.07.2026 (Kontext-Diaet, /doctor-Lauf). Das aktuelle
Zertifikat ist gueltig bis 23. Maerz 2028; App Registration «SharePoint MCP Connector (JANS)»,
Stammdaten (App ID, Tenant ID, Berechtigungen) stehen in CLAUDE.md, Abschnitt «M365 Connector».

## Ablauf

```bash
openssl req -x509 -newkey rsa:2048 -keyout ~/.cli-m365-cert-key.pem -out ~/.cli-m365-cert.pem -days 730 -nodes -subj '/CN=JANS-AI-Hub-M365'
cat ~/.cli-m365-cert-key.pem ~/.cli-m365-cert.pem > ~/.cli-m365-cert-combined.pem
chmod 600 ~/.cli-m365-cert-combined.pem ~/.cli-m365-cert-key.pem
```

Danach:

1. Public-Cert (`~/.cli-m365-cert.pem`) in Azure bei der App Registration hochladen
   (Zertifikate & Geheimnisse), altes Zertifikat nach Verifikation entfernen.
2. Auf den Mac Mini kopieren:
   `scp ~/.cli-m365-cert-combined.pem raphaeljans@100.120.219.12:~/.cli-m365-cert-combined.pem`
3. Verbindung testen: `/m365` bzw. der Connector-Selbsttest.

Das kombinierte PEM bleibt lokal pro Station (`~/.cli-m365-cert-combined.pem`), wird nie
committet (Rule: Credentials nie in Git).
