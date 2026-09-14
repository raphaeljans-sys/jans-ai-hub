#!/usr/bin/env python3
"""Entfernt verwaiste OneDrive-Platzhalter (SF_DATALESS) aus dem Papierkorb.
Stufe 1: Dateien unlink, Ordner rmdir (Materialisierung Default).
Stufe 2: verbleibende Dataless-Ordner mit Materialisierung OFF/ON erneut rmdir.
Stufe 3: bleibt ein Rest, wird er per rename aus dem Papierkorb nach
         ~/.OneDrive-Dataless-Reste-<Datum> geschoben (0 Byte, Papierkorb frei).
Trockenlauf ohne Argument; wirklich ausfuehren nur mit --ja. --test: nicht-destruktive Proben."""
import os, sys, ctypes, datetime
T = os.path.expanduser("~/.Trash/OneDrive-Quarantaene-260910")
SF_DATALESS = 0x40000000
JA = "--ja" in sys.argv; TEST = "--test" in sys.argv
libc = ctypes.CDLL("/usr/lib/libSystem.B.dylib", use_errno=True)
def policy(v):  # IOPOL_TYPE_VFS_MATERIALIZE_DATALESS_FILES=3, SCOPE_PROCESS=0; DEFAULT 0, OFF 1, ON 2
    libc.setiopolicy_np(3, 0, v)
if not os.path.isdir(T):
    print("Zielordner nicht vorhanden (Papierkorb bereits frei):", T); sys.exit(0)

if TEST:
    dl_dirs = [os.path.join(r,d) for r,ds,_ in os.walk(T) for d in ds if os.lstat(os.path.join(r,d)).st_flags & SF_DATALESS]
    dl_files = [os.path.join(r,f) for r,_,fs in os.walk(T) for f in fs if os.lstat(os.path.join(r,f)).st_flags & SF_DATALESS]
    print(f"Dataless: {len(dl_files)} Dateien, {len(dl_dirs)} Ordner")
    if dl_files:
        small = sorted(dl_files, key=lambda p: os.lstat(p).st_size)[0]; tmp = small + ".claude-rename-test"
        try: os.rename(small, tmp); os.rename(tmp, small); print("rename hin/zurueck: OK")
        except OSError as e: print(f"rename: errno {e.errno} {e.strerror}")
    if dl_dirs:
        tf = os.path.join(dl_dirs[0], ".claude-testdatei")
        try: open(tf,"w").close(); os.unlink(tf); print("touch/unlink in dataless-Ordner: OK")
        except OSError as e: print(f"touch/unlink: errno {e.errno} {e.strerror}")
    sys.exit(0)

def count():
    n=0
    for _,ds,fs in os.walk(T): n += len(ds)+len(fs)
    return n
n_f = n_d = 0; fehler = []
# Stufe 1
for root, dirs, files in os.walk(T, topdown=False):
    for f in files:
        p=os.path.join(root,f)
        if JA:
            try: os.unlink(p); n_f+=1
            except OSError as e: fehler.append((p,e.errno,e.strerror))
        else: n_f+=1
    for d in dirs:
        p=os.path.join(root,d)
        if JA:
            try: os.rmdir(p); n_d+=1
            except OSError as e: fehler.append((p,e.errno,e.strerror))
        else: n_d+=1
if not JA:
    print(f"TROCKENLAUF: wuerde {n_f} Dateien und {n_d} Ordner unterhalb von {T} entfernen; Rest wuerde nach ~/.OneDrive-Dataless-Reste-<Datum> verschoben. Nichts geaendert. Ausfuehren: --ja"); sys.exit(0)
print(f"Stufe 1: {n_f} Dateien, {n_d} Ordner entfernt, {len(fehler)} Fehler")
# Stufe 2: rmdir mit OFF, dann ON, bottom-up
for mode, name in ((1,"OFF"),(2,"ON"),(0,"DEFAULT")):
    policy(mode); ok=0; err={}
    for root, dirs, files in os.walk(T, topdown=False):
        for d in dirs:
            p=os.path.join(root,d)
            try: os.rmdir(p); ok+=1
            except OSError as e: err[e.errno]=err.get(e.errno,0)+1
    print(f"Stufe 2 [{name}]: {ok} Ordner entfernt, Fehler nach errno: {err}")
    if not os.listdir(T): break
policy(0)
try: os.rmdir(T); print("Wurzel entfernt, Papierkorb frei."); sys.exit(0)
except OSError: pass
rest = count()
# Stufe 3: Rest aus dem Papierkorb schieben
ziel = os.path.expanduser("~/.OneDrive-Dataless-Reste-" + datetime.date.today().strftime("%y%m%d"))
try:
    os.rename(T, ziel); print(f"Stufe 3: Rest ({rest} Objekte, 0 Byte) verschoben nach {ziel}; Papierkorb frei.")
except OSError as e: print(f"Stufe 3 FEHLER errno {e.errno} {e.strerror}: {rest} Objekte verbleiben im Papierkorb")
