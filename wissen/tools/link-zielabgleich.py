#!/usr/bin/env python3
"""Kern von link-zielabgleich.sh — klassifiziert die Messung.

Eingabe:
  argv[1]  PSV der Deep-Link-Messung:  angefragt|rohstatus|endstatus|groesse|typ|endadresse
  argv[2]  PSV der Host-Gegenprobe:    host|status|endadresse   (erfundener Pfad)

Ausgabe: Befundliste auf stdout, Exit 1 wenn Befunde vorhanden.

Die Trennung .sh/.py folgt kennwert-recompute: die Messung braucht parallele curl-Aufrufe,
die Klassifikation braucht URL-Zerlegung und regulaere Ausdruecke. Beides in einem
Bash-Heredoc wird unlesbar.
"""
import sys
import re
from urllib.parse import urlsplit

TLD = re.compile(r"\.(ch|com|org|net|eu|io)(/|$)")


def norm_path(p: str) -> str:
    """Pfad ohne Endschraegstrich, ohne Query — nur die Wegangabe zaehlt."""
    p = p.split("?")[0].split("#")[0]
    return p.rstrip("/")


def is_startseite(path: str) -> bool:
    """Landet der Link auf einer Startseite?

    Leerer Pfad ist der klare Fall. Dazu die verbreiteten CMS-Startseiten mit genau
    einem Segment (`/de.html`, `/index.html`, `/de`, `/home`) — mehr nicht, sonst wird
    jede tiefere Rubrikseite faelschlich zur Startseite erklaert.
    """
    if path == "":
        return True
    seg = [s for s in path.split("/") if s]
    if len(seg) != 1:
        return False
    return bool(re.fullmatch(r"(de|fr|it|en|home|index)(\.\w{2,5})?", seg[0], re.I))


def main() -> int:
    mess, probe_file = sys.argv[1], sys.argv[2]

    # Host-Gegenproben einlesen: Host -> Endadresse fuer einen frei erfundenen Pfad
    probe = {}
    with open(probe_file, encoding="utf-8", errors="replace") as fh:
        for line in fh:
            f = line.rstrip("\n").split("|")
            if len(f) >= 3 and f[1] == "200":
                sp = urlsplit(f[2])
                if is_startseite(norm_path(sp.path)):
                    probe[f[0]] = sp.netloc + norm_path(sp.path)

    katchall, startseite, soft404, umgeleitet = [], [], [], []
    n_artefakt = n_ok = n_total = 0

    with open(mess, encoding="utf-8", errors="replace") as fh:
        for line in fh:
            f = line.rstrip("\n").split("|")
            if len(f) < 6:
                continue
            req, raw, code, size, ctype, eff = f[0], f[1], f[2], f[3], f[4], "|".join(f[5:])
            n_total += 1

            host = req.split("/")[0]
            reqpath = norm_path("/" + req.split("/", 1)[1]) if "/" in req else ""

            # Prosa-Artefakt: der "Pfad" ist selbst ein Hostname (`vkg.ch/presseportal.ch`)
            if TLD.search(reqpath):
                n_artefakt += 1
                continue

            try:
                size_i = int(size)
            except ValueError:
                size_i = 0

            # Soft-404: dekorierte Fehlerseite. Der Code ist ehrlich, aber wer nur die
            # Antwortgroesse misst, haelt sie fuer ein Dokument.
            if code == "404" and size_i > 10000:
                soft404.append((req, size_i))
                continue

            if code != "200":
                continue  # tot/gesperrt ist Sache von link-frischecheck.sh

            sp = urlsplit(eff)
            effpath = norm_path(sp.path)
            effhost = sp.netloc

            if effhost.replace("www.", "") == host.replace("www.", "") and effpath == reqpath:
                n_ok += 1
                continue

            ziel = effhost + effpath
            if is_startseite(effpath):
                if probe.get(host) == ziel:
                    katchall.append((req, ziel))
                else:
                    startseite.append((req, ziel))
            else:
                umgeleitet.append((req, ziel))

    print(f"      {n_total} gemessen · {n_ok} landen exakt am angefragten Ort · "
          f"{n_artefakt} Prosa-Artefakte uebersprungen")
    print()

    befunde = 0

    if katchall:
        hosts = sorted({r.split('/')[0] for r, _ in katchall})
        print(f"KATCHALL — Host schluckt JEDEN Pfad und liefert die Startseite ({len(katchall)}):")
        print("  Unter diesen Hosts ist KEIN Link mehr per HTTP-Code pruefbar. Jeder gemeldete")
        print("  200 ist bedeutungslos; die zitierten Ressourcen sind zu ersetzen.")
        for h in hosts:
            print(f"  ! Host {h} -> {probe.get(h)}")
        for r, z in sorted(katchall):
            print(f"      {r}")
        befunde += len(katchall)
        print()

    if startseite:
        print(f"STARTSEITE — Deep-Link landet auf einer Startseite ({len(startseite)}):")
        print("  Host-Gegenprobe unauffaellig, also kein Katchall — die einzelne Seite ist weg.")
        for r, z in sorted(startseite):
            print(f"  ! {r}\n      -> {z}")
        befunde += len(startseite)
        print()

    if soft404:
        print(f"SOFT404 — Status 404 mit grossem Antwortkoerper ({len(soft404)}):")
        print("  Ehrlicher Code, aber die Groesse taeuscht ein Dokument vor.")
        for r, s in sorted(soft404):
            print(f"  ! {r}  ({s} B)")
        befunde += len(soft404)
        print()

    if umgeleitet:
        print(f"UMGELEITET — anderer, weiterhin tiefer Pfad ({len(umgeleitet)}) — meist harmlos:")
        for r, z in sorted(umgeleitet):
            print(f"  ~ {r}\n      -> {z}")
        print()

    if befunde == 0:
        print("Keine Zielbefunde." if not umgeleitet else
              "Keine schweren Zielbefunde (nur Umleitungen, siehe oben).")
        return 0
    return 1


if __name__ == "__main__":
    sys.exit(main())
