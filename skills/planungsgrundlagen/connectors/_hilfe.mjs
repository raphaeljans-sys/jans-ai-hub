/**
 * JANS Connector-Hilfe — gemeinsamer Baustein fuer `--hilfe`
 * =========================================================
 * Rule 260729 (Werkzeug-Index) verlangt, dass jeder Connector zuerst per
 * `node <pfad> --hilfe` selbst befragt werden kann. Bis zum Wartungslauf 01
 * (30.07.2026) beantwortete keiner der fuenf Connectoren dieses Flag: sie liefen in
 * die normale Argumentpruefung und beendeten sich mit einer Fehlermeldung und
 * Exit-Code 1 — eine Hilfe-Anfrage sah damit aus wie ein Bedienfehler.
 *
 * Statt in jedem Connector einen zweiten, pflegebeduerftigen Hilfetext zu fuehren,
 * gibt `hilfeAusKopf()` den **Kopfkommentar der aufrufenden Datei** aus. Damit ist
 * die Hilfe per Konstruktion immer synchron zur Dokumentation im Dateikopf und kann
 * nicht von ihr wegdriften.
 *
 * Einbindung im Connector (erste Zeile der Main-IIFE):
 *   if (willHilfe(process.argv)) { hilfeAusKopf(import.meta.url); return; }
 */
import { readFileSync } from "node:fs";
import { fileURLToPath } from "node:url";

/** Wurde eine Hilfe angefordert? Akzeptiert deutsche und englische Schreibweise. */
export function willHilfe(argv) {
  return argv.slice(2).some((a) => ["--hilfe", "--help", "-h"].includes(a));
}

/**
 * Gibt den ersten Block-Kommentar der aufrufenden Datei als Hilfetext aus.
 * @param {string} metaUrl  immer `import.meta.url` des aufrufenden Connectors
 */
export function hilfeAusKopf(metaUrl) {
  let text = "";
  try {
    const src = readFileSync(fileURLToPath(metaUrl), "utf8");
    const m = src.match(/\/\*\*([\s\S]*?)\*\//);
    if (m) text = m[1].replace(/^[ \t]*\*[ \t]?/gm, "").trim();
  } catch {
    /* faellt unten auf den Hinweis zurueck */
  }
  console.log(text || "Kein Kopfkommentar gefunden — bitte die Datei direkt lesen.");
}
