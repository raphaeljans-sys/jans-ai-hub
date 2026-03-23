const { Document, Packer, Paragraph, TextRun, Table, TableRow, TableCell,
        Header, Footer, AlignmentType, HeadingLevel, BorderStyle, WidthType,
        ShadingType, PageNumber, PageBreak, LevelFormat } = require('docx');
const fs = require('fs');

const BLUE = "1A365D";
const ORANGE = "ED8936";
const LIGHT_BLUE = "E8EFF7";
const LIGHT_ORANGE = "FEF3E2";
const WHITE = "FFFFFF";

const border = { style: BorderStyle.SINGLE, size: 1, color: "CCCCCC" };
const borders = { top: border, bottom: border, left: border, right: border };
const cellMargins = { top: 60, bottom: 60, left: 100, right: 100 };

const commonStyles = {
  styles: {
    default: { document: { run: { font: "Arial", size: 22 } } },
    paragraphStyles: [
      { id: "Heading1", name: "Heading 1", basedOn: "Normal", next: "Normal", quickFormat: true,
        run: { size: 36, bold: true, font: "Arial", color: BLUE },
        paragraph: { spacing: { before: 360, after: 200 }, outlineLevel: 0 } },
      { id: "Heading2", name: "Heading 2", basedOn: "Normal", next: "Normal", quickFormat: true,
        run: { size: 28, bold: true, font: "Arial", color: BLUE },
        paragraph: { spacing: { before: 240, after: 120 }, outlineLevel: 1 } },
      { id: "Heading3", name: "Heading 3", basedOn: "Normal", next: "Normal", quickFormat: true,
        run: { size: 24, bold: true, font: "Arial", color: ORANGE },
        paragraph: { spacing: { before: 200, after: 100 }, outlineLevel: 2 } },
    ]
  },
  numbering: {
    config: [
      { reference: "bullets",
        levels: [{ level: 0, format: LevelFormat.BULLET, text: "\u2022", alignment: AlignmentType.LEFT,
          style: { paragraph: { indent: { left: 720, hanging: 360 } } } }] },
    ]
  }
};

function makeHeader(title, subtitle) {
  return new Header({
    children: [
      new Paragraph({
        border: { bottom: { style: BorderStyle.SINGLE, size: 6, color: ORANGE, space: 4 } },
        children: [
          new TextRun({ text: title, font: "Arial", size: 16, color: BLUE, bold: true }),
          new TextRun({ text: "  |  " + subtitle, font: "Arial", size: 14, color: "999999" }),
        ]
      })
    ]
  });
}

function makeFooter() {
  return new Footer({
    children: [
      new Paragraph({
        border: { top: { style: BorderStyle.SINGLE, size: 2, color: ORANGE, space: 4 } },
        alignment: AlignmentType.RIGHT,
        children: [
          new TextRun({ text: "JANS AI CENTER  |  Seite ", font: "Arial", size: 14, color: "999999" }),
          new TextRun({ children: [PageNumber.CURRENT], font: "Arial", size: 14, color: "999999" }),
        ]
      })
    ]
  });
}

function codeBlock(lines) {
  return lines.map(line =>
    new Paragraph({
      spacing: { before: 20, after: 20 },
      shading: { fill: "F5F5F5", type: ShadingType.CLEAR },
      indent: { left: 360 },
      children: [new TextRun({ text: line, font: "Courier New", size: 18 })]
    })
  );
}

// ============================================
// DOCUMENT 1: Ordnerstruktur AI-Hub
// ============================================
async function createOrdnerstruktur() {
  const doc = new Document({
    ...commonStyles,
    sections: [{
      properties: {
        page: {
          size: { width: 11906, height: 16838 },
          margin: { top: 1440, right: 1200, bottom: 1440, left: 1200 }
        }
      },
      headers: { default: makeHeader("JANS AI CENTER", "Ordnerstruktur & Ablagesystem") },
      footers: { default: makeFooter() },
      children: [
        // Titel
        new Paragraph({
          spacing: { after: 100 },
          children: [new TextRun({ text: "JANS AI CENTER", font: "Arial", size: 48, bold: true, color: BLUE })]
        }),
        new Paragraph({
          spacing: { after: 400 },
          border: { bottom: { style: BorderStyle.SINGLE, size: 8, color: ORANGE, space: 8 } },
          children: [new TextRun({ text: "Ordnerstruktur & Ablagesystem", font: "Arial", size: 32, color: ORANGE })]
        }),
        new Paragraph({
          spacing: { after: 100 },
          children: [new TextRun({ text: "Stand: 22. M\u00e4rz 2026", font: "Arial", size: 20, color: "666666" })]
        }),

        // Grundprinzip
        new Paragraph({ heading: HeadingLevel.HEADING_1, children: [new TextRun("Grundprinzip")] }),
        new Paragraph({
          spacing: { before: 100, after: 200 },
          alignment: AlignmentType.CENTER,
          shading: { fill: LIGHT_BLUE, type: ShadingType.CLEAR },
          children: [
            new TextRun({ text: "QUELLDATEN (Read)", font: "Arial", size: 24, bold: true, color: BLUE }),
            new TextRun({ text: "  \u2192  ", font: "Arial", size: 24, color: ORANGE }),
            new TextRun({ text: "AI VERARBEITUNG (Mac Mini)", font: "Arial", size: 24, bold: true, color: ORANGE }),
            new TextRun({ text: "  \u2192  ", font: "Arial", size: 24, color: ORANGE }),
            new TextRun({ text: "OUTPUTS (Write)", font: "Arial", size: 24, bold: true, color: BLUE }),
          ]
        }),

        // Mac Mini
        new Paragraph({ heading: HeadingLevel.HEADING_1, children: [new TextRun("Mac Mini \u2013 Lokale Struktur (SSD)")] }),
        ...codeBlock([
          "~/Developer/",
          "\u251C\u2500\u2500 claude-code/              # Claude Code Hauptprojekt",
          "\u2502   \u251C\u2500\u2500 .mcp.json             # MCP Connectoren",
          "\u2502   \u2514\u2500\u2500 docs/                 # Dokumentation",
          "\u251C\u2500\u2500 agents/                   # AI Agenten Definitionen",
          "\u2502   \u251C\u2500\u2500 ci-agent/             # Corporate Identity",
          "\u2502   \u251C\u2500\u2500 baurecht-agent/       # Baurecht & Normen",
          "\u2502   \u251C\u2500\u2500 content-agent/        # Website Content",
          "\u2502   \u251C\u2500\u2500 buchhaltung-agent/    # Bexio/Buchhaltung",
          "\u2502   \u2514\u2500\u2500 projekt-admin-agent/  # Projektabwicklung",
          "\u2514\u2500\u2500 rag/                      # RAG Pipeline",
          "    \u251C\u2500\u2500 embeddings/           # Vektor-Embeddings",
          "    \u251C\u2500\u2500 index/                # Suchindex",
          "    \u2514\u2500\u2500 config/               # RAG Konfiguration",
        ]),

        // NAS
        new Paragraph({ heading: HeadingLevel.HEADING_1, children: [new TextRun("NAS DS918+ \u2013 Quelldaten (READ)")] }),
        ...codeBlock([
          "/volume2/daten/               # Hauptdaten (6TB)",
          "\u251C\u2500\u2500 00_ARCHITEKTUR_KB/        # Wissensdatenbank (AI optimiert)",
          "\u2502   \u251C\u2500\u2500 referenzprojekte/     # Bilder + Texte",
          "\u2502   \u251C\u2500\u2500 wettbewerbe/          # Wettbewerbstexte",
          "\u2502   \u251C\u2500\u2500 normen/               # SIA, Baurecht",
          "\u2502   \u2514\u2500\u2500 vorlagen/             # Templates, CI",
          "\u251C\u2500\u2500 PROJEKTE/                 # Aktive Projekte",
          "\u251C\u2500\u2500 ARCHIV/                   # Abgeschlossene Projekte",
          "\u2514\u2500\u2500 VERWALTUNG/               # Buchhaltung, HR",
        ]),

        new Paragraph({ children: [new PageBreak()] }),

        // Cloud-Quellen
        new Paragraph({ heading: HeadingLevel.HEADING_1, children: [new TextRun("Cloud-Datenquellen")] }),
        new Table({
          width: { size: 9506, type: WidthType.DXA },
          columnWidths: [2500, 2500, 2000, 2506],
          rows: [
            new TableRow({
              children: ["Quelle", "Pfad / URL", "Zugriff", "Typ"].map(text =>
                new TableCell({
                  borders, margins: cellMargins,
                  width: { size: 2376, type: WidthType.DXA },
                  shading: { fill: BLUE, type: ShadingType.CLEAR },
                  children: [new Paragraph({ children: [new TextRun({ text, bold: true, color: WHITE, size: 20, font: "Arial" })] })]
                })
              )
            }),
            ...[
              ["SharePoint", "raphaeljans.sharepoint.com", "MCP Connector", "READ/WRITE"],
              ["OneDrive", "CloudStorage/OneDrive-JANS", "MCP + Mount", "READ/WRITE"],
              ["Dropbox", "CloudStorage/Dropbox", "Lokaler Mount", "READ"],
              ["Outlook", "rj@raphaeljans.ch", "MCP Connector", "READ/WRITE"],
            ].map(row =>
              new TableRow({
                children: row.map(text =>
                  new TableCell({
                    borders, margins: cellMargins,
                    width: { size: 2376, type: WidthType.DXA },
                    children: [new Paragraph({ children: [new TextRun({ text, size: 20, font: "Arial" })] })]
                  })
                )
              })
            )
          ]
        }),

        // Output
        new Paragraph({ heading: HeadingLevel.HEADING_1, children: [new TextRun("Output-Verzeichnisse (WRITE)")] }),
        ...codeBlock([
          "/volume2/daten/AI_OUTPUTS/    # NAS - Permanente Speicherung",
          "\u251C\u2500\u2500 wettbewerbstexte/         # Generierte Texte",
          "\u251C\u2500\u2500 bildgenerierung/          # AI-generierte Bilder",
          "\u251C\u2500\u2500 projektberichte/          # Reports, Analysen",
          "\u251C\u2500\u2500 website-content/          # WordPress-Content",
          "\u2514\u2500\u2500 buchhaltung/              # Finanzberichte",
        ]),

        // Datenfluss
        new Paragraph({ heading: HeadingLevel.HEADING_1, children: [new TextRun("Datenfluss pro Agent")] }),
        new Table({
          width: { size: 9506, type: WidthType.DXA },
          columnWidths: [2000, 3000, 2000, 2506],
          rows: [
            new TableRow({
              children: ["Agent", "Quellen", "Verarbeitung", "Output"].map(text =>
                new TableCell({
                  borders, margins: cellMargins,
                  width: { size: 2376, type: WidthType.DXA },
                  shading: { fill: ORANGE, type: ShadingType.CLEAR },
                  children: [new Paragraph({ children: [new TextRun({ text, bold: true, color: WHITE, size: 20, font: "Arial" })] })]
                })
              )
            }),
            ...[
              ["CI Agent", "NAS + Dropbox", "Claude Code", "NAS/AI_OUTPUTS"],
              ["Baurecht", "NAS/normen + Online", "RAG Pipeline", "NAS/AI_OUTPUTS"],
              ["Content", "Dropbox + NAS", "Claude Code", "WordPress API"],
              ["Buchhaltung", "Bexio + NAS", "Mac Mini", "NAS/AI_OUTPUTS"],
              ["Projekt Admin", "NAS + SharePoint + Outlook", "Mac Mini", "NAS + SharePoint"],
            ].map(row =>
              new TableRow({
                children: row.map(text =>
                  new TableCell({
                    borders, margins: cellMargins,
                    width: { size: 2376, type: WidthType.DXA },
                    children: [new Paragraph({ children: [new TextRun({ text, size: 20, font: "Arial" })] })]
                  })
                )
              })
            )
          ]
        }),
      ]
    }]
  });

  const buffer = await Packer.toBuffer(doc);
  fs.writeFileSync("/Users/raphaeljans/Developer/claude-code/docs/JANS-AI-Hub-Ordnerstruktur.docx", buffer);
  console.log("Ordnerstruktur DOCX erstellt");
}

// ============================================
// DOCUMENT 2: Setup-Blatt
// ============================================
async function createSetupBlatt() {
  const doc = new Document({
    ...commonStyles,
    sections: [{
      properties: {
        page: {
          size: { width: 11906, height: 16838 },
          margin: { top: 1440, right: 1200, bottom: 1440, left: 1200 }
        }
      },
      headers: { default: makeHeader("JANS AI CENTER", "Setup-Blatt") },
      footers: { default: makeFooter() },
      children: [
        new Paragraph({
          spacing: { after: 100 },
          children: [new TextRun({ text: "JANS AI CENTER", font: "Arial", size: 48, bold: true, color: BLUE })]
        }),
        new Paragraph({
          spacing: { after: 400 },
          border: { bottom: { style: BorderStyle.SINGLE, size: 8, color: ORANGE, space: 8 } },
          children: [new TextRun({ text: "Setup-Blatt", font: "Arial", size: 32, color: ORANGE })]
        }),
        new Paragraph({
          spacing: { after: 200 },
          children: [new TextRun({ text: "Stand: 22. M\u00e4rz 2026", font: "Arial", size: 20, color: "666666" })]
        }),

        // Geräte & Netzwerk
        new Paragraph({ heading: HeadingLevel.HEADING_1, children: [new TextRun("1. Ger\u00e4te & Netzwerk")] }),
        new Table({
          width: { size: 9506, type: WidthType.DXA },
          columnWidths: [2200, 1800, 2200, 3306],
          rows: [
            new TableRow({
              children: ["Ger\u00e4t", "IP (LAN)", "Tailscale IP", "Rolle"].map(text =>
                new TableCell({
                  borders, margins: cellMargins,
                  width: { size: 2376, type: WidthType.DXA },
                  shading: { fill: BLUE, type: ShadingType.CLEAR },
                  children: [new Paragraph({ children: [new TextRun({ text, bold: true, color: WHITE, size: 20, font: "Arial" })] })]
                })
              )
            }),
            ...[
              ["Mac Mini", "192.168.1.210", "100.120.219.12", "AI-Hub Server 24/7"],
              ["NAS DS918+", "192.168.1.10", "100.92.246.28", "Datenspeicher"],
              ["MacBook Pro", "DHCP", "100.117.99.62", "Mobile Workstation"],
              ["iPad", "-", "Tailscale App", "Monitoring"],
              ["OPNsense FW", "192.168.1.1", "-", "Firewall/Router"],
              ["bizhub c300i", "192.168.1.140", "-", "Drucker (Kostenstelle JANS)"],
            ].map(row =>
              new TableRow({
                children: row.map(text =>
                  new TableCell({
                    borders, margins: cellMargins,
                    width: { size: 2376, type: WidthType.DXA },
                    children: [new Paragraph({ children: [new TextRun({ text, size: 18, font: "Arial" })] })]
                  })
                )
              })
            )
          ]
        }),

        // Datenquellen
        new Paragraph({ heading: HeadingLevel.HEADING_1, children: [new TextRun("2. Datenquellen & Connectoren")] }),
        new Table({
          width: { size: 9506, type: WidthType.DXA },
          columnWidths: [1800, 2800, 2500, 2406],
          rows: [
            new TableRow({
              children: ["Quelle", "Connector", "Methode", "Account"].map(text =>
                new TableCell({
                  borders, margins: cellMargins,
                  width: { size: 2376, type: WidthType.DXA },
                  shading: { fill: BLUE, type: ShadingType.CLEAR },
                  children: [new Paragraph({ children: [new TextRun({ text, bold: true, color: WHITE, size: 18, font: "Arial" })] })]
                })
              )
            }),
            ...[
              ["NAS DS918+", "SMB Mount", "//DiskStation918/daten", "raphaeljans"],
              ["SharePoint", "MCP (Graph API)", "@pnp/cli-m365-mcp", "rj@raphaeljans.ch"],
              ["Outlook", "MCP (Graph API)", "@pnp/cli-m365-mcp", "rj@raphaeljans.ch"],
              ["OneDrive", "MCP + Mount", "Graph API + Cloud", "rj@raphaeljans.ch"],
              ["Dropbox", "Lokaler Mount", "CloudStorage/Dropbox", "raphaeljans"],
              ["Google Cal", "MCP", "Google Calendar MCP", "raphaeljans@me.com"],
            ].map(row =>
              new TableRow({
                children: row.map(text =>
                  new TableCell({
                    borders, margins: cellMargins,
                    width: { size: 2376, type: WidthType.DXA },
                    children: [new Paragraph({ children: [new TextRun({ text, size: 17, font: "Arial" })] })]
                  })
                )
              })
            )
          ]
        }),

        new Paragraph({ children: [new PageBreak()] }),

        // Azure
        new Paragraph({ heading: HeadingLevel.HEADING_1, children: [new TextRun("3. Azure App Registration")] }),
        new Table({
          width: { size: 9506, type: WidthType.DXA },
          columnWidths: [3500, 5506],
          rows: [
            ...[
              ["App Name", "JANS AI Hub"],
              ["App ID", "296600a7-9126-422d-b536-36f0acf93940"],
              ["Tenant ID", "d3ea8e1a-8ecc-479d-b831-6c0784ee0b51"],
              ["Auth Type", "Device Code Flow"],
              ["Public Client", "Aktiviert"],
              ["Admin Consent", "Erteilt"],
            ].map(([label, value]) =>
              new TableRow({
                children: [
                  new TableCell({
                    borders, margins: cellMargins,
                    width: { size: 3500, type: WidthType.DXA },
                    shading: { fill: LIGHT_BLUE, type: ShadingType.CLEAR },
                    children: [new Paragraph({ children: [new TextRun({ text: label, bold: true, size: 20, font: "Arial" })] })]
                  }),
                  new TableCell({
                    borders, margins: cellMargins,
                    width: { size: 5506, type: WidthType.DXA },
                    children: [new Paragraph({ children: [new TextRun({ text: value, size: 20, font: "Courier New" })] })]
                  }),
                ]
              })
            )
          ]
        }),

        // Server Config
        new Paragraph({ heading: HeadingLevel.HEADING_1, children: [new TextRun("4. Mac Mini Server-Konfiguration")] }),
        new Table({
          width: { size: 9506, type: WidthType.DXA },
          columnWidths: [3500, 5506],
          rows: [
            ...[
              ["Schlafmodus", "Deaktiviert"],
              ["Display-Schlaf", "Erlaubt"],
              ["Wake for Network", "Aktiviert"],
              ["Tailscale", "Subnet Router + Exit Node"],
              ["Node.js", "v22.14.0"],
              ["Claude Code", "~/Developer/claude-code/"],
              ["Overnight Jobs", "~/ai-jobs/scripts/"],
            ].map(([label, value]) =>
              new TableRow({
                children: [
                  new TableCell({
                    borders, margins: cellMargins,
                    width: { size: 3500, type: WidthType.DXA },
                    shading: { fill: LIGHT_ORANGE, type: ShadingType.CLEAR },
                    children: [new Paragraph({ children: [new TextRun({ text: label, bold: true, size: 20, font: "Arial" })] })]
                  }),
                  new TableCell({
                    borders, margins: cellMargins,
                    width: { size: 5506, type: WidthType.DXA },
                    children: [new Paragraph({ children: [new TextRun({ text: value, size: 20, font: "Arial" })] })]
                  }),
                ]
              })
            )
          ]
        }),

        // Befehle
        new Paragraph({ heading: HeadingLevel.HEADING_1, children: [new TextRun("5. Overnight-Job Befehle")] }),
        ...codeBlock([
          "# Job starten",
          "~/ai-jobs/scripts/start-job.sh \"Dein AI-Auftrag\"",
          "",
          "# Status pr\u00fcfen",
          "~/ai-jobs/scripts/status.sh",
          "",
          "# Von unterwegs (iPad/MacBook)",
          "ssh macmini.tail8265aa.ts.net",
          "~/ai-jobs/scripts/status.sh",
        ]),
      ]
    }]
  });

  const buffer = await Packer.toBuffer(doc);
  fs.writeFileSync("/Users/raphaeljans/Developer/claude-code/docs/JANS-AI-Hub-Setup-Blatt.docx", buffer);
  console.log("Setup-Blatt DOCX erstellt");
}

// ============================================
// DOCUMENT 3: AI-Agenten Konzept
// ============================================
async function createAgentenKonzept() {
  const agents = [
    { name: "CI Agent", desc: "Corporate Identity JANS Architektur", quellen: "NAS/referenzprojekte, Dropbox/JANS", output: "Website, Pr\u00e4sentationen" },
    { name: "Baurecht Agent", desc: "Baurecht & SIA-Normen Recherche", quellen: "NAS/normen, Online-Quellen", output: "Gutachten, Berichte" },
    { name: "Content Agent", desc: "Website Content f\u00fcr WordPress", quellen: "Dropbox, NAS/referenzprojekte", output: "WordPress (Hostpoint)" },
    { name: "Buchhaltung Agent", desc: "Bexio Buchhaltung", quellen: "Bexio API, NAS/VERWALTUNG", output: "Finanzberichte" },
    { name: "Projekt Admin Agent", desc: "Projektabwicklung (z.B. Kispi)", quellen: "NAS/PROJEKTE, SharePoint, Outlook", output: "Terminpl\u00e4ne, Controlling" },
  ];

  const doc = new Document({
    ...commonStyles,
    sections: [{
      properties: {
        page: {
          size: { width: 11906, height: 16838 },
          margin: { top: 1440, right: 1200, bottom: 1440, left: 1200 }
        }
      },
      headers: { default: makeHeader("JANS AI CENTER", "AI-Agenten Konzept") },
      footers: { default: makeFooter() },
      children: [
        new Paragraph({
          spacing: { after: 100 },
          children: [new TextRun({ text: "JANS AI CENTER", font: "Arial", size: 48, bold: true, color: BLUE })]
        }),
        new Paragraph({
          spacing: { after: 400 },
          border: { bottom: { style: BorderStyle.SINGLE, size: 8, color: ORANGE, space: 8 } },
          children: [new TextRun({ text: "AI-Agenten Konzept", font: "Arial", size: 32, color: ORANGE })]
        }),
        new Paragraph({
          spacing: { after: 200 },
          children: [new TextRun({ text: "Stand: 22. M\u00e4rz 2026", font: "Arial", size: 20, color: "666666" })]
        }),

        // Übersicht Tabelle
        new Paragraph({ heading: HeadingLevel.HEADING_1, children: [new TextRun("\u00dcbersicht AI Agenten")] }),
        new Table({
          width: { size: 9506, type: WidthType.DXA },
          columnWidths: [2000, 2500, 2500, 2506],
          rows: [
            new TableRow({
              children: ["Agent", "Datenquellen", "Verarbeitung", "Output"].map(text =>
                new TableCell({
                  borders, margins: cellMargins,
                  width: { size: 2376, type: WidthType.DXA },
                  shading: { fill: BLUE, type: ShadingType.CLEAR },
                  children: [new Paragraph({ children: [new TextRun({ text, bold: true, color: WHITE, size: 20, font: "Arial" })] })]
                })
              )
            }),
            ...agents.map(a =>
              new TableRow({
                children: [a.name, a.quellen, "Mac Mini (Claude)", a.output].map(text =>
                  new TableCell({
                    borders, margins: cellMargins,
                    width: { size: 2376, type: WidthType.DXA },
                    children: [new Paragraph({ children: [new TextRun({ text, size: 18, font: "Arial" })] })]
                  })
                )
              })
            )
          ]
        }),

        // RAG Pipeline
        new Paragraph({ heading: HeadingLevel.HEADING_1, children: [new TextRun("RAG Pipeline (Wissensdatenbank)")] }),
        ...codeBlock([
          "1. INGESTION:   NAS PDFs/DOCX \u2192 Textextraktion",
          "2. CHUNKING:    Dokumente \u2192 512-Token Chunks",
          "3. EMBEDDING:   Chunks \u2192 Ollama (nomic-embed-text)",
          "4. STORAGE:     Vektoren \u2192 ChromaDB (Mac Mini)",
          "5. RETRIEVAL:   Frage \u2192 \u00c4hnlichkeitssuche \u2192 Claude",
        ]),

        // Roadmap
        new Paragraph({ heading: HeadingLevel.HEADING_1, children: [new TextRun("Migrations-Roadmap")] }),
        new Table({
          width: { size: 9506, type: WidthType.DXA },
          columnWidths: [2000, 5000, 2506],
          rows: [
            new TableRow({
              children: ["Phase", "Aufgaben", "Status"].map(text =>
                new TableCell({
                  borders, margins: cellMargins,
                  width: { size: 2376, type: WidthType.DXA },
                  shading: { fill: ORANGE, type: ShadingType.CLEAR },
                  children: [new Paragraph({ children: [new TextRun({ text, bold: true, color: WHITE, size: 20, font: "Arial" })] })]
                })
              )
            }),
            ...[
              ["Phase 1", "Netzwerk, Tailscale, M365, Server-Config", "ERLEDIGT"],
              ["Phase 2", "Ollama, ChromaDB, RAG-Pipeline, CI Agent", "N\u00e4chste Woche"],
              ["Phase 3", "Alle 5 Agenten, Bexio API, WordPress API", "Monat 2"],
              ["Phase 4", "Abnahmetests, Monitoring Dashboard", "Monat 3"],
            ].map(row =>
              new TableRow({
                children: row.map((text, i) =>
                  new TableCell({
                    borders, margins: cellMargins,
                    width: { size: 2376, type: WidthType.DXA },
                    shading: i === 2 && text === "ERLEDIGT" ? { fill: "E6F4EA", type: ShadingType.CLEAR } : undefined,
                    children: [new Paragraph({ children: [new TextRun({ text, size: 20, font: "Arial", bold: i === 2 })] })]
                  })
                )
              })
            )
          ]
        }),
      ]
    }]
  });

  const buffer = await Packer.toBuffer(doc);
  fs.writeFileSync("/Users/raphaeljans/Developer/claude-code/docs/JANS-AI-Hub-Agenten-Konzept.docx", buffer);
  console.log("Agenten-Konzept DOCX erstellt");
}

// Run all
(async () => {
  await createOrdnerstruktur();
  await createSetupBlatt();
  await createAgentenKonzept();
  console.log("\nAlle 3 DOCX Dokumente erstellt!");
  console.log("Pfad: ~/Developer/claude-code/docs/");
})();
