#!/usr/bin/env python3
"""archicad-smoke-test.py — prüft die ArchiCAD-JSON-API und das Tapir Add-on.

Nur Standardbibliothek, keine Abhängigkeiten. Auf der Station ausführen, auf der
ArchiCAD 27 mit geöffnetem Projekt läuft:

    python3 scripts/archicad-smoke-test.py [port]

Standard-Port 19723; weitere Instanzen belegen 19724 ff.
Konzept: docs/konzepte/260721-ArchiCAD-Connector/
"""

import json
import sys
import urllib.error
import urllib.request

PORT = int(sys.argv[1]) if len(sys.argv) > 1 else 19723
URL = f"http://127.0.0.1:{PORT}"


def send(payload: dict) -> dict:
    req = urllib.request.Request(
        URL,
        data=json.dumps(payload).encode(),
        headers={"Content-Type": "application/json"},
    )
    with urllib.request.urlopen(req, timeout=10) as resp:
        return json.loads(resp.read())


def main() -> int:
    # 1) Offizielle API erreichbar?
    try:
        result = send({"command": "API.IsAlive"})
    except (urllib.error.URLError, OSError) as exc:
        print(f"FEHLER: Keine ArchiCAD-JSON-API auf Port {PORT} ({exc}).")
        print("ArchiCAD gestartet? Projekt geöffnet? JSON-API in den Einstellungen aktiv?")
        return 1
    print(f"OK: ArchiCAD-JSON-API antwortet auf Port {PORT}: {result}")

    # 2) Tapir Add-on installiert?
    tapir = send(
        {
            "command": "API.ExecuteAddOnCommand",
            "parameters": {
                "addOnCommandId": {
                    "commandNamespace": "TapirCommand",
                    "commandName": "GetTapirVersion",
                },
                "addOnCommandParameters": {},
            },
        }
    )
    if tapir.get("succeeded"):
        version = tapir["result"]["addOnCommandResponse"].get("version", "?")
        print(f"OK: Tapir Add-on aktiv, Version {version}.")
        return 0
    print("FEHLER: Tapir Add-on antwortet nicht — installiert und geladen?")
    print(json.dumps(tapir, indent=2))
    return 1


if __name__ == "__main__":
    sys.exit(main())
