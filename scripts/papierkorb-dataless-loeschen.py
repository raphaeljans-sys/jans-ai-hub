#!/usr/bin/env python3
"""Entfernt verwaiste OneDrive-Platzhalter (SF_DATALESS) aus dem Papierkorb.
Trockenlauf ohne Argument; wirklich loeschen nur mit --ja.
Loescht ausschliesslich unterhalb von ~/.Trash/OneDrive-Quarantaene-260910."""
import os, sys, errno
T = os.path.expanduser("~/.Trash/OneDrive-Quarantaene-260910")
SF_DATALESS = 0x40000000
JA = "--ja" in sys.argv
TEST = "--test" in sys.argv
if not os.path.isdir(T):
    print("Zielordner nicht vorhanden:", T); sys.exit(1)

if TEST:
    # nicht-destruktive Proben im Normalmodus (Materialisierung = Default)
    dl_dirs = [os.path.join(r,d) for r,ds,_ in os.walk(T) for d in ds if os.lstat(os.path.join(r,d)).st_flags & SF_DATALESS]
    dl_files = [os.path.join(r,f) for r,_,fs in os.walk(T) for f in fs if os.lstat(os.path.join(r,f)).st_flags & SF_DATALESS]
    small = sorted(dl_files, key=lambda p: os.lstat(p).st_size)[0]
    tmp = small + ".claude-rename-test"
    try: os.rename(small, tmp); os.rename(tmp, small); print("rename hin/zurueck [Default]: OK")
    except OSError as e: print(f"rename [Default]: errno {e.errno} {e.strerror}")
    tf = os.path.join(dl_dirs[0], ".claude-testdatei")
    try: open(tf,"w").close(); print("touch in dataless-Ordner [Default]: OK"); os.unlink(tf); print("unlink eigene Testdatei [Default]: OK")
    except OSError as e: print(f"touch/unlink [Default]: errno {e.errno} {e.strerror}")
    sys.exit(0)

n_f = n_d = 0; fehler = []
for root, dirs, files in os.walk(T, topdown=False):
    for f in files:
        p = os.path.join(root, f)
        if JA:
            try: os.unlink(p); n_f += 1
            except OSError as e: fehler.append((p, e.errno, e.strerror))
        else: n_f += 1
    for d in dirs:
        p = os.path.join(root, d)
        if JA:
            try: os.rmdir(p); n_d += 1
            except OSError as e: fehler.append((p, e.errno, e.strerror))
        else: n_d += 1
if JA:
    try: os.rmdir(T); n_d += 1
    except OSError as e: fehler.append((T, e.errno, e.strerror))
    print(f"GELOESCHT: {n_f} Dateien, {n_d} Ordner, {len(fehler)} Fehler")
    for p, en, s in fehler[:20]: print(f"  FEHLER errno {en} {s}: {p[len(T):]}")
    print("Rest:", "leer" if not os.path.exists(T) else f"{sum(len(f)+len(d) for _,d,f in os.walk(T))} Objekte verbleiben")
else:
    print(f"TROCKENLAUF: wuerde {n_f} Dateien und {n_d} Ordner unterhalb von {T} entfernen (nichts geaendert). Wirklich loeschen: --ja")
