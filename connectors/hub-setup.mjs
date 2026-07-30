#!/usr/bin/env node
// ============================================================================
// hub-setup.mjs — Kanonischer Setup-Konnektor des JANS AI Hub
// ============================================================================
// Beantwortet Fragen zum Setup (Stationen, IPs, SSH, Mail, Pfade, Git) aus der
// kanonischen Datenquelle connectors/hub-setup-daten.json und prueft mit --check
// die Verbindungen live (NAS-Mount, Ping, SSH-Port, SSH-Login, Tailscale).
//
// Verwendung:
//   node hub-setup.mjs --hilfe        Diese Hilfe
//   node hub-setup.mjs --alles        Alle Sektionen ausgeben
//   node hub-setup.mjs --stationen    Stationen mit IPs und Rollen
//   node hub-setup.mjs --wege         Verbindungswege (SSH, sync-tasks, remote-tasks)
//   node hub-setup.mjs --mail         Mail-Konten
//   node hub-setup.mjs --m365         M365-Connector-Eckdaten
//   node hub-setup.mjs --pfade        Wichtige Pfade
//   node hub-setup.mjs --git          Git-Regeln (NAS nie ueber SMB committen)
//   node hub-setup.mjs --json         Rohdaten als JSON
//   node hub-setup.mjs --check        Live-Verbindungscheck von DIESER Station aus
//
// Konvention: Daten NUR in hub-setup-daten.json pflegen (NAS), nie hier im Code.
// Keine Secrets — weder hier noch in der JSON.
// ============================================================================
import { readFileSync, existsSync } from "node:fs";
import { spawnSync } from "node:child_process";
import { fileURLToPath } from "node:url";
import { dirname, join } from "node:path";

const HERE = dirname(fileURLToPath(import.meta.url));
const DATEN = join(HERE, "hub-setup-daten.json");
const setup = JSON.parse(readFileSync(DATEN, "utf8"));
const arg = process.argv[2] || "--hilfe";

function block(titel, obj, einzug = "") {
  console.log(`\n=== ${titel} ===`);
  drucke(obj, einzug);
}
function drucke(obj, einzug) {
  for (const [k, v] of Object.entries(obj)) {
    if (k.startsWith("_")) continue;
    if (v && typeof v === "object") {
      console.log(`${einzug}${k}:`);
      drucke(v, einzug + "  ");
    } else {
      console.log(`${einzug}${k}: ${v}`);
    }
  }
}

function sh(cmd, args, timeoutMs = 6000) {
  const r = spawnSync(cmd, args, { encoding: "utf8", timeout: timeoutMs });
  return { ok: r.status === 0, out: ((r.stdout || "") + (r.stderr || "")).trim() };
}

function check() {
  console.log("=== Hub-Verbindungscheck (von dieser Station) ===");
  const host = sh("hostname", []).out;
  console.log(`Station: ${host}`);

  // 1. NAS-Mount
  const nasOk = existsSync("/Volumes/daten/jans-ai-hub/CLAUDE.md");
  console.log(`NAS-Mount /Volumes/daten: ${nasOk ? "OK" : "FEHLT -> mounten (siehe --stationen)"}`);

  // 2. Tailscale
  const tsBin = existsSync("/Applications/Tailscale.app/Contents/MacOS/Tailscale")
    ? "/Applications/Tailscale.app/Contents/MacOS/Tailscale" : "tailscale";
  const ts = sh(tsBin, ["status"]);
  console.log(`Tailscale: ${ts.ok ? "verbunden" : "NICHT verbunden -> Menuleisten-App pruefen"}`);
  if (ts.ok) {
    for (const zeile of ts.out.split("\n").slice(0, 6)) console.log(`  ${zeile}`);
  }

  // 3. Gegenstationen: Ping + SSH-Port + SSH-Login
  const ziele = [];
  const st = setup.stationen;
  const binMini = /macmini/i.test(host);
  if (!binMini) ziele.push(["mac-mini", st["mac-mini"].tailscale_ip, "mini"]);
  if (binMini) ziele.push(["macbook-pro", st["macbook-pro"].tailscale_ip, "macbook"]);
  ziele.push(["nas-ds918", st["nas-ds918"].tailscale_ip, null]);

  for (const [name, ip, alias] of ziele) {
    const ping = sh("ping", ["-c", "1", "-W", "2", ip]);
    let zeile = `${name} (${ip}): Ping ${ping.ok ? "OK" : "FEHLT"}`;
    if (ping.ok && alias) {
      const port = sh("nc", ["-vz", "-G", "3", ip, "22"]);
      zeile += ` · Port 22 ${port.ok ? "offen" : "ZU"}`;
      if (port.ok) {
        const ssh = sh("ssh", ["-o", "ConnectTimeout=5", "-o", "BatchMode=yes", alias, "echo OK"], 10000);
        zeile += ` · ssh ${alias} ${ssh.ok ? "OK" : "FEHLGESCHLAGEN (" + ssh.out.split("\n").pop() + ")"}`;
      }
    }
    console.log(zeile);
  }

  console.log("\nHinweis: 'connection refused' auf eine 100.x-IP heisst meist: Tailscale-");
  console.log("Client auf einer der beiden Seiten pausiert/ausgeloggt — nicht sshd defekt.");
  console.log("MacBook Pro ist mobil: direkte SSH-Anfragen dorthin sind nie garantiert;");
  console.log("Standard-Kanal Mini->MacBook ist die NAS-Task-Queue (sync-task-create.sh).");
}

switch (arg) {
  case "--stationen": block("Stationen", setup.stationen); break;
  case "--wege": block("Verbindungswege", setup.verbindungswege); break;
  case "--mail": block("Mail-Konten", setup.mail_konten); break;
  case "--m365": block("M365-Connector", setup.m365_connector); break;
  case "--pfade": block("Pfade", setup.pfade); break;
  case "--git": block("Git-Regeln", setup.git); break;
  case "--json": console.log(JSON.stringify(setup, null, 2)); break;
  case "--check": check(); break;
  case "--alles":
    block("Stationen", setup.stationen);
    block("Verbindungswege", setup.verbindungswege);
    block("Mail-Konten", setup.mail_konten);
    block("M365-Connector", setup.m365_connector);
    block("Pfade", setup.pfade);
    block("Git-Regeln", setup.git);
    block("Verweise", setup.grundregeln_verweise);
    break;
  default:
    console.log(readFileSync(fileURLToPath(import.meta.url), "utf8").split("// ====")[1]
      ? readFileSync(fileURLToPath(import.meta.url), "utf8").split("\n").slice(1, 24).map(z => z.replace(/^\/\/ ?/, "")).join("\n")
      : "hub-setup.mjs --hilfe");
}
