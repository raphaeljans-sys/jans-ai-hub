# Zeigt je Sender-ID den aktuellen EPG-Titel (Xtream get_short_epg). Gibt NUR Sendername/IDs/Titel aus, nie Zugangsdaten.
import sqlite3, sys, json, urllib.request, urllib.parse, os, base64, datetime
db = os.path.expanduser("~/Library/Containers/com.gsetech.gseosxiptvpro/Data/Library/Application Support/GSE SMART IPTV/xepgsource.db")
server, user, pw = sqlite3.connect(db).execute("select server, username, password from apitv_source where name='Ste2022'").fetchone()
api = f"{server.rstrip('/')}/player_api.php?" + urllib.parse.urlencode({"username": user, "password": pw})
def get(q):
    req = urllib.request.Request(api + "&" + q, headers={"User-Agent": "VLC/3.0.21 LibVLC/3.0.21"})
    with urllib.request.urlopen(req, timeout=20) as r: return json.load(r)
def b64(s):
    try: return base64.b64decode(s).decode("utf-8","replace")
    except Exception: return s
for sid in sys.argv[1:]:
    try:
        d = get(f"action=get_short_epg&stream_id={sid}&limit=3")
        items = d.get("epg_listings", [])
        out = []
        for e in items[:3]:
            t = datetime.datetime.fromtimestamp(int(e.get("start_timestamp",0))).strftime("%H:%M")
            out.append(f"{t} {b64(e.get('title',''))[:60]}")
        print(sid, "|", " ; ".join(out) if out else "(kein EPG)")
    except Exception as ex:
        print(sid, "| Fehler:", str(ex)[:80])
