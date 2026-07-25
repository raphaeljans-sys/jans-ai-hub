#!/usr/bin/env python3
"""
iCloud-Mail-Connector (IMAP/SMTP) — Wurzelloesung fuer programmatischen me.com-Zugriff.

Unabhaengig von Apple Mail.app. Liest und sendet ueber Apples IMAP/SMTP direkt.
Credential = App-spezifisches Passwort (appleid.apple.com), im macOS-Schluesselbund.

Keychain-Eintrag (einmalig anlegen):
  security add-generic-password -s "icloud-app-password" -a "raphaeljans@me.com" -w "<app-spez-passwort>"

Verwendung:
  icloud-mail.py folders
  icloud-mail.py search --query "FIFA" [--folder INBOX] [--all-folders] [--since 2026-01-01] [--limit 25]
  icloud-mail.py read   --uid 12345 [--folder INBOX] [--save-dir /pfad]
  icloud-mail.py send   --to a@b.ch [--cc ...] --subject "..." --body-file /pfad/text.txt [--attach /pfad/datei]

Endpunkte: imap.mail.me.com:993 (SSL) / smtp.mail.me.com:587 (STARTTLS)
"""
import argparse
import email
import email.utils
import imaplib
import os
import smtplib
import ssl
import subprocess
import sys
from email.header import decode_header, make_header
from email.message import EmailMessage
from pathlib import Path

IMAP_HOST = "imap.mail.me.com"
IMAP_PORT = 993
SMTP_HOST = "smtp.mail.me.com"
SMTP_PORT = 587

DEFAULT_USER = "raphaeljans@me.com"
KEYCHAIN_SERVICE = "icloud-app-password"


def get_password(user: str) -> str:
    """App-spezifisches Passwort aus dem macOS-Schluesselbund holen."""
    try:
        out = subprocess.run(
            ["security", "find-generic-password", "-s", KEYCHAIN_SERVICE, "-a", user, "-w"],
            capture_output=True, text=True, check=True,
        )
        return out.stdout.strip()
    except subprocess.CalledProcessError:
        sys.exit(
            f"FEHLER: Kein Schluesselbund-Eintrag '{KEYCHAIN_SERVICE}' fuer '{user}'.\n"
            f"Einmalig anlegen (App-Passwort von appleid.apple.com):\n"
            f'  security add-generic-password -s "{KEYCHAIN_SERVICE}" -a "{user}" -w "<app-spez-passwort>"'
        )


def _dec(value) -> str:
    if value is None:
        return ""
    try:
        return str(make_header(decode_header(value)))
    except Exception:
        return str(value)


def connect_imap(user: str) -> imaplib.IMAP4_SSL:
    pw = get_password(user)
    M = imaplib.IMAP4_SSL(IMAP_HOST, IMAP_PORT, ssl_context=ssl.create_default_context())
    try:
        M.login(user, pw)
    except imaplib.IMAP4.error as e:
        sys.exit(
            f"FEHLER beim IMAP-Login fuer {user}: {e}\n"
            f"Pruefen: App-spezifisches Passwort korrekt? (NICHT das Apple-ID-Hauptpasswort)\n"
            f"Erstellen unter appleid.apple.com > Anmeldung & Sicherheit > App-spezifische Passwoerter."
        )
    return M


def cmd_folders(args):
    M = connect_imap(args.user)
    typ, data = M.list()
    for line in data:
        print(line.decode(errors="replace"))
    M.logout()


def _search_folder(M, folder, criteria):
    try:
        M.select(f'"{folder}"', readonly=True)
    except imaplib.IMAP4.error:
        return []
    typ, data = M.uid("search", None, *criteria)
    if typ != "OK" or not data or not data[0]:
        return []
    return data[0].split()


def cmd_search(args):
    M = connect_imap(args.user)
    criteria = []
    if args.since:
        # IMAP erwartet z.B. 01-Jan-2026
        import datetime
        d = datetime.date.fromisoformat(args.since)
        criteria += ["SINCE", d.strftime("%d-%b-%Y")]
    if args.query:
        criteria += ["TEXT", args.query]
    if not criteria:
        criteria = ["ALL"]

    folders = []
    if args.all_folders:
        typ, data = M.list()
        for line in data:
            # letzter quoted Teil = Foldername
            s = line.decode(errors="replace")
            name = s.split(' "/" ')[-1].strip().strip('"') if ' "/" ' in s else s.split()[-1].strip('"')
            folders.append(name)
    else:
        folders = [args.folder]

    found = 0
    for folder in folders:
        uids = _search_folder(M, folder, criteria)
        if not uids:
            continue
        uids = uids[-args.limit:]
        for uid in uids:
            typ, msgdata = M.uid("fetch", uid, "(BODY.PEEK[HEADER.FIELDS (FROM SUBJECT DATE)])")
            if typ != "OK" or not msgdata or msgdata[0] is None:
                continue
            hdr = email.message_from_bytes(msgdata[0][1])
            print(f"[{folder}] UID {uid.decode()}")
            print(f"   Datum:   {_dec(hdr.get('Date'))}")
            print(f"   Von:     {_dec(hdr.get('From'))}")
            print(f"   Betreff: {_dec(hdr.get('Subject'))}")
            print()
            found += 1
    if found == 0:
        print("Keine Treffer.")
    M.logout()


def cmd_read(args):
    M = connect_imap(args.user)
    M.select(f'"{args.folder}"', readonly=True)
    typ, msgdata = M.uid("fetch", str(args.uid), "(BODY.PEEK[])")
    if typ != "OK" or not msgdata:
        sys.exit(f"UID {args.uid} in '{args.folder}' nicht gefunden.")
    raw = None
    for part in msgdata:
        if isinstance(part, tuple) and len(part) >= 2 and isinstance(part[1], (bytes, bytearray)):
            raw = part[1]
            break
    if raw is None:
        sys.exit(f"UID {args.uid}: keine Rohdaten im Fetch-Response.")
    msg = email.message_from_bytes(raw)
    print("=" * 70)
    print(f"Von:     {_dec(msg.get('From'))}")
    print(f"An:      {_dec(msg.get('To'))}")
    print(f"Datum:   {_dec(msg.get('Date'))}")
    print(f"Betreff: {_dec(msg.get('Subject'))}")
    print("=" * 70)
    save_dir = Path(args.save_dir).expanduser() if args.save_dir else None
    if save_dir:
        save_dir.mkdir(parents=True, exist_ok=True)
    for part in msg.walk():
        ctype = part.get_content_type()
        disp = str(part.get("Content-Disposition") or "")
        if ctype == "text/plain" and "attachment" not in disp:
            payload = part.get_payload(decode=True)
            if payload:
                charset = part.get_content_charset() or "utf-8"
                print(payload.decode(charset, errors="replace"))
        elif "attachment" in disp or part.get_filename():
            fn = _dec(part.get_filename()) or "anhang.bin"
            print(f"\n[ANHANG] {fn} ({ctype})")
            if save_dir:
                payload = part.get_payload(decode=True)
                if payload:
                    (save_dir / fn).write_bytes(payload)
                    print(f"  -> gespeichert: {save_dir / fn}")
    M.logout()


def cmd_send(args):
    user = args.user
    pw = get_password(user)
    msg = EmailMessage()
    msg["From"] = args.sender or user
    msg["To"] = args.to
    if args.cc:
        msg["Cc"] = args.cc
    msg["Subject"] = args.subject
    msg["Date"] = email.utils.formatdate(localtime=True)
    msg["Message-ID"] = email.utils.make_msgid(domain="me.com")
    body = Path(args.body_file).expanduser().read_text(encoding="utf-8")
    msg.set_content(body)
    for att in args.attach or []:
        p = Path(att).expanduser()
        data = p.read_bytes()
        msg.add_attachment(data, maintype="application", subtype="octet-stream", filename=p.name)

    recipients = [r.strip() for r in (args.to.split(",")) if r.strip()]
    if args.cc:
        recipients += [r.strip() for r in args.cc.split(",") if r.strip()]

    ctx = ssl.create_default_context()
    with smtplib.SMTP(SMTP_HOST, SMTP_PORT) as s:
        s.starttls(context=ctx)
        s.login(user, pw)
        s.send_message(msg, from_addr=args.sender or user, to_addrs=recipients)
    print(f"Gesendet an: {', '.join(recipients)}")


def main():
    ap = argparse.ArgumentParser(description="iCloud-Mail-Connector (IMAP/SMTP)")
    ap.add_argument("--user", default=DEFAULT_USER, help="iCloud-Adresse (Default: %(default)s)")
    sub = ap.add_subparsers(dest="cmd", required=True)

    sp = sub.add_parser("folders", help="Postfaecher auflisten")
    sp.set_defaults(func=cmd_folders)

    sp = sub.add_parser("search", help="Mails suchen")
    sp.add_argument("--query", help="Volltext (TEXT) Suchbegriff")
    sp.add_argument("--folder", default="INBOX")
    sp.add_argument("--all-folders", action="store_true")
    sp.add_argument("--since", help="ISO-Datum, z.B. 2026-01-01")
    sp.add_argument("--limit", type=int, default=25)
    sp.set_defaults(func=cmd_search)

    sp = sub.add_parser("read", help="Mail lesen (per UID)")
    sp.add_argument("--uid", required=True)
    sp.add_argument("--folder", default="INBOX")
    sp.add_argument("--save-dir", help="Anhaenge hierhin speichern")
    sp.set_defaults(func=cmd_read)

    sp = sub.add_parser("send", help="Mail senden")
    sp.add_argument("--to", required=True, help="Komma-separiert")
    sp.add_argument("--cc")
    sp.add_argument("--sender", help="Absender (Default: --user)")
    sp.add_argument("--subject", required=True)
    sp.add_argument("--body-file", required=True)
    sp.add_argument("--attach", action="append")
    sp.set_defaults(func=cmd_send)

    args = ap.parse_args()
    args.func(args)


if __name__ == "__main__":
    main()
