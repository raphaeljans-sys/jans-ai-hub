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
//   node hub-setup.mjs --team         Team-Beweis: Verbindung + Wissensstand + getan/laeuft/ansteht
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

function sh(cmd, args, timeoutMs = 6000, env = {}) {
  const r = spawnSync(cmd, args, {
    encoding: "utf8", timeout: timeoutMs, env: { ...process.env, ...env },
  });
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
        const ssh = sh("ssh", ["-o", "ConnectTimeout=5", "-o", "BatchMode=yes", "-o", "LogLevel=ERROR", alias, "echo OK"], 10000);
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

function team() {
  const host = sh("hostname", []).out;
  const binMini = /macmini/i.test(host);
  const [gegenName, gegenAlias] = binMini ? ["macbook-pro", "macbook"] : ["mac-mini", "mini"];
  const NAS = "/Volumes/daten/jans-ai-hub";
  const SSD = `${process.env.HOME}/Developer/jans-ai-hub`;
  const RO = { GIT_OPTIONAL_LOCKS: "0" };

  console.log(`=== Team-Beweis JANS AI Hub — von ${host} aus ===`);

  // 1. Verbindung (beide Richtungen erreichbar?)
  const ssh = sh("ssh", ["-o", "ConnectTimeout=6", "-o", "BatchMode=yes", "-o", "LogLevel=ERROR", gegenAlias,
    "echo OK; hostname"], 12000);
  console.log(`\n[1] Verbindung zu ${gegenName}: ${ssh.ok ? "OK (" + ssh.out.split("\n")[1] + ")" : "FEHLT — " + ssh.out.split("\n").pop()}`);
  if (!ssh.ok && gegenName === "macbook-pro")
    console.log("    (MacBook mobil/schlafend ist normal — dann NAS-Task-Queue nutzen)");

  // 2. Wissensstand (linke und rechte Hand auf demselben Commit?)
  const nasHead = sh("git", ["-C", NAS, "rev-parse", "--short", "HEAD"], 10000, RO).out;
  const lokalHead = sh("git", ["-C", SSD, "rev-parse", "--short", "HEAD"]).out;
  const remoteHead = ssh.ok
    ? sh("ssh", ["-o", "BatchMode=yes", "-o", "LogLevel=ERROR", gegenAlias, "git -C ~/Developer/jans-ai-hub rev-parse --short HEAD"], 12000).out.split("\n").pop()
    : "(nicht erreichbar)";
  const sync = nasHead && nasHead === lokalHead && lokalHead === remoteHead;
  console.log(`\n[2] Wissensstand: NAS ${nasHead} · diese Station ${lokalHead} · ${gegenName} ${remoteHead}`);
  console.log(`    ${sync ? "SYNCHRON — alle drei auf demselben Commit" : "Abweichung — SSD-Pull laeuft im 5-Min-Takt; bei Bestand: git pull auf der abweichenden Station"}`);

  // 3. Getan (was zuletzt geschah — Commits + heutiges Lauf-Journal)
  console.log("\n[3] Getan (letzte Hub-Commits):");
  for (const z of sh("git", ["-C", NAS, "log", "--oneline", "-3"], 10000, RO).out.split("\n"))
    console.log(`    ${z}`);
  const heute = new Date().toLocaleDateString("sv-SE").slice(2).replace(/-/g, "");
  const journal = `${NAS}/logbuch/laeufe/${heute}-laeufe.jsonl`;
  if (existsSync(journal)) {
    const zeilen = readFileSync(journal, "utf8").trim().split("\n");
    console.log(`    Lauf-Journal heute: ${zeilen.length} Lauf/Laeufe, zuletzt: ${zeilen.pop().slice(0, 110)}…`);
  } else {
    console.log("    Lauf-Journal heute: noch keine automatischen Laeufe");
  }

  // 4. Laeuft gerade (Claude-Instanzen hueben und drueben)
  const anz = (r) => (r.out ? r.out.split("\n").filter(z => /claude/.test(z) && !/grep/.test(z)).length : 0);
  const hier = anz(sh("pgrep", ["-fl", "claude"]));
  const drueben = ssh.ok ? anz(sh("ssh", ["-o", "BatchMode=yes", "-o", "LogLevel=ERROR", gegenAlias, "pgrep -fl claude || true"], 12000)) : "?";
  console.log(`\n[4] Laeuft gerade: ${hier} Claude-Prozess(e) hier · ${drueben} auf ${gegenName}`);

  // 5. Machen wird (offene Queues + geplante Tasks beider Stationen)
  console.log("\n[5] Machen wird:");
  for (const q of ["mac-mini", "macbook-pro"]) {
    const eintraege = sh("ls", [`${NAS}/sync-tasks/${q}`]).out.split("\n").filter(Boolean);
    console.log(`    Queue ${q}: ${eintraege.length ? eintraege.length + " offene(r) Task(s): " + eintraege.join(", ") : "leer"}`);
  }
  const st = (r) => (r.out ? r.out.split("\n").filter(Boolean).join(", ") : "keine");
  console.log(`    Scheduled Tasks hier: ${st(sh("ls", [`${process.env.HOME}/.claude/scheduled-tasks`]))}`);
  if (ssh.ok)
    console.log(`    Scheduled Tasks ${gegenName}: ${st(sh("ssh", ["-o", "BatchMode=yes", "-o", "LogLevel=ERROR", gegenAlias, "ls ~/.claude/scheduled-tasks 2>/dev/null"], 12000))}`);

  const fazit = ssh.ok && sync;
  console.log(`\nFAZIT: ${fazit ? "Das System arbeitet als Team — verbunden, synchron, mit sichtbarer Vergangenheit und Zukunft." : "Mindestens ein Punkt weicht ab — Details oben."}`);
  process.exitCode = fazit ? 0 : 1;
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
  case "--team": team(); break;
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
