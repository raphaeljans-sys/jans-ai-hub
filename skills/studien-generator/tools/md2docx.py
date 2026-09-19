#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
md2docx.py — Markdown -> DOCX (JANS-Layout) + optional PDF.

Setzt die Dauerregel um: zu jedem inhaltlichen .md-Erzeugnis eine DOCX- und PDF-Fassung
mit gleichem Namensstamm daneben ablegen (Rule auto-verbesserungen 260603).

Layout nach Rule dokument-layout-standard.md (nachgezogen 19.09.2026, Anlass Erzeugnis
docs/konzepte/260919-Briefing-IT-Ingenieur-JANS-AI-Zentrum/):
- A4, Raender 20 mm, Cambria 11 pt, Zeilenabstand 1.4, alles schwarz
- H1 18 pt fett, H2 12 pt fett, H3 11 pt fett. Die Theme-Font-Attribute (w:asciiTheme usw.)
  werden aus allen w:rFonts der Vorlage entfernt: sie schlagen ein gesetztes w:ascii, und
  LibreOffice rendert die Titel sonst in einer Sans-Schrift (gemessen: Carlito-Bold).
- Tabellen RAHMENLOS als Default: w:tblBorders nil, keine Schattierung, Kopfzeile fett,
  Zellschrift 10 pt, Trennung ueber Whitespace. Feste Spaltenbreiten (w:tblLayout fixed +
  w:gridCol), aus dem Inhalt geschaetzt: kurze Zellen, Zahlen, Einheiten und kurze
  Kopfzellen bekommen ihre volle Breite und geschuetzte Leerschlaege, damit sie nie
  umbrechen; Bemerkungsspalten mind. 25 %, wo es aufgeht. Passt eine Tabelle nicht, kommt
  eine Warnung auf stderr (Rule: Querformat statt Spalten einengen).
  Ausrichtung aus der MD-Trennzeile (:--- links, :---: zentriert, ---: rechts); ohne Angabe
  werden reine Zahlenspalten rechtsbuendig gesetzt (nie die erste Spalte).
  Eine leere Kopfzeile (| | |) heisst: Tabelle ohne Kopf, nichts wird fett.
- Fusszeile 8 pt: links Verfasser · Mail · Datum, rechts «Seite X von Y» (Felder PAGE und
  NUMPAGES, rechter Tabstopp auf Satzspiegelbreite). Das Datum kommt aus dem Dateinamen
  (YYMMDD-… oder JJJJ-MM-TT…), sonst das lokale Tagesdatum.

Unterstuetzt: # / ## / ### Ueberschriften, Pipe-Tabellen, Aufzaehlungen (-, *),
nummerierte Listen, Blockzitate (>), Code-Bloecke (```), **fett**, `code`, --- Trennlinie.

PDF-Schrift: Cambria liegt auf den Stationen nur im Word-Bundle, nicht im System. LibreOffice
ersetzt sie beim PDF-Export durch die metrisch gleiche Caladea. `pdffonts` zeigt darum
Caladea; das ist der Sollzustand, kein Fehler. Carlito oder eine andere Sans waere einer.

⚠ OFFEN seit 14.08.2026 (Synergie-Lauf 07, SYN-27): Die Rule dokument-layout-standard.md
verbietet in AUSGEHENDEN Dokumenten seit dem 14.08.2026 Aufzaehlungs-Bullets (weder «•»
noch «-») und verlangt stattdessen nummerierte Positionen im Fliesstext (Themenblock 01,
02 …; Positionen 01.1, 01.2 … mit fetter Nummer und fettem Stichwort). Dieser Konverter
setzt eine «- »-Zeile weiterhin als Word-Bullet (style="List Bullet", siehe unten) und ist
damit NICHT auf dem Stand der Rule. Bis zur Umstellung gilt: fuer ausgehende Dokumente die
Positionen bereits in der MD-Quelle nummeriert schreiben, nicht als Bullet-Liste — der
Konverter heilt das nicht. Interne Arbeitsdokumente duerfen Bullets behalten.

Zeilenumbrueche (seit 30.07.2026): EINGERUECKTE Fortsetzungszeilen werden an ihren Block
angehaengt (siehe _unwrap). Damit werden umbrochene Listenpunkte wieder ein Absatz und ein
ueber den Umbruch laufendes **fett** wird erkannt. NICHT eingerueckte Folgezeilen bleiben
bewusst eigene Absaetze, damit Adress-/Signaturbloecke nicht zu einer Zeile verschmelzen.

Aufruf:
  python3 md2docx.py <datei.md> [--pdf]        # docx neben md; --pdf erzeugt auch PDF
  python3 md2docx.py <datei.md> -o <ziel.docx> [--pdf]

Optionen (alle freiwillig, der Aufruf ohne Optionen erfuellt die Rule):
  --footer "<Text>"     linker Fusszeilentext statt des Defaults
                        «Raphael Jans Architekten ETH/SIA · rj@raphaeljans.ch · <Datum>».
                        {datum} im Text wird durch das Dokumentdatum ersetzt. --footer ""
                        laesst links leer, die Seitenzahl rechts bleibt.
  --tabellenlinien      Tabellen mit duennen Gitterlinien (Stil «Table Grid») fuer INTERNE
                        Arbeitsdokumente. Auch hier ohne graue Kopfzeile. Nicht fuer
                        ausgehende Dokumente: die Rule verlangt dort rahmenlos.
  --spalten "1,4,2"     Spaltenanteile von Hand statt der Schaetzung, fuer alle Tabellen mit
                        genau so vielen Spalten; mehrfach angebbar. Zahlen sind Verhaeltnisse,
                        die Tabelle laeuft dann ueber die volle Satzspiegelbreite. Zu knapp
                        gewaehlte Anteile werden auf die Mindestbreite angehoben (Hinweis auf
                        stderr), damit Header, Einheiten und Zahlen auch hier nie umbrechen.

Als Modul: convert(md_path, out_path=None, footer=None, tabellenlinien=False, spalten=None).
Die ersten zwei Argumente sind unveraendert, bestehende Aufrufe laufen weiter.

PDF-Export via LibreOffice:  soffice --headless --convert-to pdf <datei.docx>
Pflicht-Sichtkontrolle vor Abgabe: pdftoppm -png <datei.pdf> <praefix> und pruefen, dass kein
Header, keine Einheit und keine Zahl umbricht (Rule dokument-layout-standard, Tabellen).
"""
import argparse, datetime, os, re, subprocess, sys

# Interpreter-Selbstheilung (16.09.2026, Hub-Chef): python-docx liegt nicht auf jeder Station
# im Standard-python3. Mac Mini: nur im venv ~/.venvs/jansdocx. MacBook Pro: umgekehrt im
# System-Python, ohne diesen venv. Ein fest verdrahteter venv-Pfad wuerde die jeweils andere
# Station brechen, darum wird nur im Fehlerfall auf einen Interpreter umgeschaltet, der das
# Modul traegt. Rueckbau: diesen Block loeschen.
try:
    import docx  # noqa: F401
except ModuleNotFoundError:
    if os.environ.get("JANS_DOCX_REEXEC") != "1":
        for _kand in ("~/.venvs/jansdocx/bin/python3", "~/.venvs/pdfforms/bin/python3",
                      "/opt/homebrew/bin/python3", "/usr/bin/python3"):
            _py = os.path.expanduser(_kand)
            if not os.path.exists(_py) or os.path.abspath(_py) == os.path.abspath(sys.executable):
                continue
            if subprocess.run([_py, "-c", "import docx"], capture_output=True).returncode == 0:
                os.environ["JANS_DOCX_REEXEC"] = "1"
                os.execv(_py, [_py, os.path.abspath(__file__)] + sys.argv[1:])
    sys.exit("FEHLER: python-docx ist auf dieser Station in keinem bekannten Interpreter "
             "verfuegbar (geprueft: aktueller python3, ~/.venvs/jansdocx, ~/.venvs/pdfforms, "
             "/opt/homebrew/bin/python3, /usr/bin/python3).")

from docx import Document
from docx.shared import Pt, Mm, RGBColor
from docx.enum.text import WD_ALIGN_PARAGRAPH, WD_TAB_ALIGNMENT
from docx.oxml.ns import qn
from docx.oxml import OxmlElement

FONT = "Cambria"
SIZE = 11
BLACK = RGBColor(0, 0, 0)
LINE = 1.4                      # Zeilenabstand Body (Rule dokument-layout-standard)
CELL_PT = 10                    # Zellschrift, laut Rule nie kleiner
FOOTER_PT = 8
CONTENT_MM = 170.0              # A4 210 mm minus 2 x 20 mm Rand
TWIPS_PER_MM = 56.6929
GAP_MM = 3.0                    # Spaltenabstand der rahmenlosen Tabelle (rechter Zellrand)
FOOTER_DEFAULT = "Raphael Jans Architekten ETH/SIA · rj@raphaeljans.ch · {datum}"
# (Groesse pt, Abstand vor pt, Abstand nach pt) je Ueberschriftenstil
HEADINGS = {"Heading 1": (18, 18, 6), "Heading 2": (12, 14, 4), "Heading 3": (11, 10, 2)}

SOFFICE_CANDIDATES = [
    "/opt/homebrew/bin/soffice", "/usr/local/bin/soffice",
    "/Applications/LibreOffice.app/Contents/MacOS/soffice", "soffice",
]

_THEME_ATTRS = ("w:asciiTheme", "w:hAnsiTheme", "w:eastAsiaTheme", "w:cstheme")


def _force_font(rfonts, name=FONT):
    """Theme-Verweise loeschen und die Schrift fest setzen.

    Ein w:asciiTheme schlaegt ein daneben gesetztes w:ascii. font.name allein genuegt darum
    nicht: die Heading-Styles der python-docx-Vorlage verweisen auf majorHAnsi, und
    LibreOffice loest das als Sans-Schrift auf.
    """
    for a in _THEME_ATTRS:
        rfonts.attrib.pop(qn(a), None)
    for a in ("w:ascii", "w:hAnsi", "w:eastAsia", "w:cs"):
        rfonts.set(qn(a), name)


def _base(doc):
    st = doc.styles["Normal"]
    st.font.name = FONT
    st.font.size = Pt(SIZE)
    st.font.color.rgb = BLACK
    st.paragraph_format.line_spacing = LINE
    st.paragraph_format.space_after = Pt(6)
    _force_font(st.element.rPr.rFonts)
    for s in doc.sections:
        s.page_height, s.page_width = Mm(297), Mm(210)
        s.top_margin = s.bottom_margin = s.left_margin = s.right_margin = Mm(20)
    for name, (sz, before, after) in HEADINGS.items():
        try:
            h = doc.styles[name]
        except KeyError:
            continue
        h.font.name = FONT
        h.font.size = Pt(sz)
        h.font.color.rgb = BLACK
        h.font.bold = True
        h.paragraph_format.space_before = Pt(before)
        h.paragraph_format.space_after = Pt(after)
        h.paragraph_format.line_spacing = 1.2
    # Alle uebrigen Theme-Verweise der Vorlage (docDefaults, Title, Heading 4-9 ...) ebenso.
    # Styles mit bewusst eigener Schrift ohne Theme-Verweis bleiben unberuehrt.
    for rf in doc.styles.element.iter(qn("w:rFonts")):
        if any(qn(a) in rf.attrib for a in _THEME_ATTRS):
            _force_font(rf)


def _doc_datum(*pfade):
    """Dokumentdatum TT.MM.JJJJ aus dem Dateinamen, sonst das LOKALE Tagesdatum.

    Das Praefix ist das Datum des Erzeugnisses (Rule dateinamen-konvention). Wird eine Datei
    spaeter neu gebaut, bleibt ihre Fusszeile damit stabil.
    """
    for pfad in pfade:
        name = os.path.basename(pfad or "")
        for rx, jahr in ((r"^(\d{2})(\d{2})(\d{2})-", "20{}"), (r"^(\d{4})-(\d{2})-(\d{2})", "{}")):
            m = re.match(rx, name)
            if not m:
                continue
            try:
                d = datetime.date(int(jahr.format(m.group(1))), int(m.group(2)), int(m.group(3)))
            except ValueError:
                continue
            return d.strftime("%d.%m.%Y")
    return datetime.date.today().strftime("%d.%m.%Y")


def _footer_run(p, text=""):
    r = p.add_run(text)
    r.font.name = FONT; r.font.size = Pt(FOOTER_PT); r.font.color.rgb = BLACK
    return r


def _field(p, instr):
    """Word-Feld (PAGE, NUMPAGES) als begin / instrText / separate / Ergebnis / end."""
    def fld(typ):
        el = OxmlElement("w:fldChar"); el.set(qn("w:fldCharType"), typ)
        _footer_run(p)._r.append(el)

    fld("begin")
    it = OxmlElement("w:instrText")
    it.set(qn("xml:space"), "preserve"); it.text = f" {instr} "
    _footer_run(p)._r.append(it)
    fld("separate")
    _footer_run(p, "1")         # Platzhalter, Word und LibreOffice rechnen das Feld neu
    fld("end")


def _footer(doc, text):
    """Fusszeile 8 pt: links der Text, rechts «Seite X von Y» am rechten Tabstopp."""
    try:
        # Die Vorlage setzt im Footer-Stil Tabstopps bei 4680/9360 Twips. Ein laengerer
        # linker Text wuerde am ersten haengen bleiben und die Seitenzahl nicht rechts setzen.
        ppr = doc.styles["Footer"].element.pPr
        tabs = ppr.find(qn("w:tabs")) if ppr is not None else None
        if tabs is not None:
            ppr.remove(tabs)
    except KeyError:
        pass
    if _text_mm(text, pt=FOOTER_PT) > CONTENT_MM - 28:
        print("WARNUNG: Fusszeilentext ist zu lang, die Seitenzahl rutscht auf eine zweite "
              "Zeile. Text kuerzen.", file=sys.stderr)
    for sec in doc.sections:
        sec.footer.is_linked_to_previous = False
        p = sec.footer.paragraphs[0]
        for r in list(p.runs):
            r._r.getparent().remove(r._r)
        pf = p.paragraph_format
        pf.line_spacing = 1.0; pf.space_before = Pt(0); pf.space_after = Pt(0)
        pf.tab_stops.add_tab_stop(sec.page_width - sec.left_margin - sec.right_margin,
                                  WD_TAB_ALIGNMENT.RIGHT)
        _footer_run(p, text + "\tSeite ")
        _field(p, "PAGE")
        _footer_run(p, " von ")
        _field(p, "NUMPAGES")


def _runs(p, text):
    """Inline **fett** und `code` aufloesen."""
    for tok in re.split(r"(\*\*.+?\*\*|`.+?`)", text):
        if not tok:
            continue
        if tok.startswith("**") and tok.endswith("**"):
            r = p.add_run(tok[2:-2]); r.bold = True
        elif tok.startswith("`") and tok.endswith("`"):
            r = p.add_run(tok[1:-1]); r.font.name = "Consolas"; r.font.size = Pt(10)
        else:
            p.add_run(tok)


_NUM = re.compile(r"^(CHF\s*|Fr\.\s*)?[-+−–]?\s*\d[\d'’ .,]*"
                  r"(\s*(%|‰|CHF|Fr\.|m²|m2|m³|m3|mm|cm|km|m|kg|t|h|d|Stk\.?|St\.?|kWh|kW|W|K|°C))?$")
_DATE = re.compile(r"^\d{1,2}\.\d{1,2}\.(\d{2}|\d{4})$")
_LEER = {"", "-", "–", "—"}
_BEMERKUNG = re.compile(r"bemerk|hinweis|kommentar|notiz|anmerk", re.I)
_ALIGN = {"l": WD_ALIGN_PARAGRAPH.LEFT, "r": WD_ALIGN_PARAGRAPH.RIGHT,
          "c": WD_ALIGN_PARAGRAPH.CENTER}
# Reihenfolge der Kinder von w:tblPr laut Schema. Word ist dort streng.
_TBLPR_ORDER = ["tblStyle", "tblpPr", "tblOverlap", "bidiVisual", "tblStyleRowBandSize",
                "tblStyleColBandSize", "tblW", "jc", "tblCellSpacing", "tblInd", "tblBorders",
                "shd", "tblLayout", "tblCellMar", "tblLook", "tblCaption", "tblDescription"]


def _plain(txt):
    return re.sub(r"\*\*|`", "", txt).strip()


def _is_num(t):
    return bool(_NUM.match(t)) and not _DATE.match(t)


def _nowrap(t, is_head):
    """Zellen, die nie umbrechen duerfen: Zahlen, Einheiten, Kurzes und kurze Kopfzellen."""
    return _is_num(t) or len(t) <= (18 if is_head else 10)


def _text_mm(s, bold=False, pt=CELL_PT):
    """Laufweite in mm, geschaetzt (der Konverter soll ohne Font-Bibliothek auskommen).

    Klassenwerte am 19.09.2026 an den echten Cambria-Metriken kalibriert und leicht
    aufgerundet, dazu 5 % Reserve: lieber eine Spur zu breit als ein umbrochener Header.
    """
    em = 0.0
    for ch in s:
        if ch in "  ":
            em += 0.22
        elif ch.isdigit():
            em += 0.56
        elif ch in "iljtfrI.,:;'’!|":
            em += 0.32
        elif ch in "()[]":
            em += 0.38
        elif ch in "mwMW%@":
            em += 0.90
        elif ch in "-–—/·«»\"²³°":
            em += 0.45
        elif ch.isupper():
            em += 0.65
        else:
            em += 0.54
    return em * pt * 0.3528 * (1.08 if bold else 1.0) * 1.05


def _col_bedarf(rows, has_head, cols):
    """Je Spalte: Mindestbreite (laengstes Wort, bei nowrap-Zellen der ganze Text),
    Wunschbreite (laengste Zelle einzeilig) und ob es eine Bemerkungsspalte ist. Alles in mm."""
    mins, wants, bem = [], [], []
    for c in range(cols):
        mn = wt = 0.0
        for ri, row in enumerate(rows):
            head = has_head and ri == 0
            t = _plain(row[c]) if c < len(row) else ""
            if not t:
                continue
            full = _text_mm(t, bold=head)
            mn = max(mn, full if _nowrap(t, head)
                     else max(_text_mm(w, bold=head) for w in t.split()))
            wt = max(wt, full)
        mins.append(max(mn, 5.0) + GAP_MM)
        wants.append(min(max(wt, 5.0) + GAP_MM, CONTENT_MM))
        bem.append(has_head and c < len(rows[0]) and bool(_BEMERKUNG.search(rows[0][c])))
    return mins, wants, bem


def _col_widths(rows, has_head, cols, nr):
    """Spaltenbreiten in mm aus dem Inhalt, nach dem Muster des HTML-Tabellenlayouts.

    Passt alles einzeilig, bleibt die Tabelle schmaler als der Satzspiegel, statt die Spalten
    auseinanderzuziehen. Sonst wird der Platz ueber den Mindestbreiten im Verhaeltnis des
    Bedarfs verteilt.
    """
    mins, wants, bem = _col_bedarf(rows, has_head, cols)
    sm, sw = sum(mins), sum(wants)
    if sw <= CONTENT_MM:
        return wants
    if sm >= CONTENT_MM:
        print(f"WARNUNG: Tabelle {nr}: {cols} Spalten passen nicht ohne Umbruch auf die "
              "Satzspiegelbreite. Querformat oder weniger Spalten erwaegen.", file=sys.stderr)
        return [m * CONTENT_MM / sm for m in mins]
    f = (CONTENT_MM - sm) / (sw - sm)
    w = [m + (x - m) * f for m, x in zip(mins, wants)]
    # Rule: Bemerkungsspalte mindestens 25 %. Geber sind nur andere Langtextspalten, und die
    # auch nur bis zur selben Schwelle. Zahlen- und Einheitsspalten geben nie ab.
    floor = 0.25 * CONTENT_MM
    for c in range(cols):
        need = min(floor, wants[c]) - w[c]
        if not bem[c] or need <= 0.01:
            continue
        slack = [max(0.0, w[k] - floor) if k != c else 0.0 for k in range(cols)]
        give = min(need, sum(slack))
        if give > 0:
            for k in range(cols):
                w[k] -= slack[k] * give / sum(slack)
            w[c] += give
        if give < need - 0.01:
            print(f"WARNUNG: Tabelle {nr}: Bemerkungsspalte bleibt unter 25 % der Breite. "
                  "Querformat oder weniger Spalten erwaegen.", file=sys.stderr)
    return w


def _col_anteile(anteile, rows, has_head, cols, nr):
    """Spaltenbreiten aus --spalten, ueber die volle Satzspiegelbreite.

    Die Handanteile gelten, aber keine Spalte faellt unter ihre Mindestbreite: die Rule
    verbietet umbrochene Header, Einheiten und Zahlen auch dann, wenn jemand die Anteile zu
    knapp waehlt. Was fehlt, geben die Spalten mit Luft im Verhaeltnis ihrer Luft ab.
    """
    w = [a * CONTENT_MM / sum(anteile) for a in anteile]
    mins, _, _ = _col_bedarf(rows, has_head, cols)
    fehlt = [max(0.0, m - x) for m, x in zip(mins, w)]
    if sum(fehlt) <= 0.01:
        return w
    luft = [max(0.0, x - m) for m, x in zip(mins, w)]
    if sum(luft) < sum(fehlt):
        print(f"WARNUNG: Tabelle {nr}: mit --spalten brechen Header, Einheiten oder Zahlen um "
              "und es fehlt der Platz zum Ausgleichen. Querformat oder weniger Spalten "
              "erwaegen.", file=sys.stderr)
        return w
    knapp = ", ".join(str(k + 1) for k, x in enumerate(fehlt) if x > 0.01)
    print(f"HINWEIS: Tabelle {nr}: --spalten war fuer Spalte {knapp} zu knapp; auf die "
          "Mindestbreite angehoben, damit nichts umbricht.", file=sys.stderr)
    geben = sum(fehlt) / sum(luft)
    return [x + fehlt[k] - luft[k] * geben for k, x in enumerate(w)]


def _tblpr_put(tblPr, el):
    """Kind von w:tblPr ersetzen bzw. in der Schema-Reihenfolge einsetzen."""
    tag = el.tag.split("}")[1]
    for old in tblPr.findall(qn("w:" + tag)):
        tblPr.remove(old)
    nach = _TBLPR_ORDER[_TBLPR_ORDER.index(tag) + 1:]
    for child in tblPr:
        if child.tag.split("}")[1] in nach:
            child.addprevious(el)
            return
    tblPr.append(el)


def _table(doc, rows, has_head=True, aligns=(), nr=1, linien=False, spalten=None):
    """Tabelle nach Rule: rahmenlos, ohne Schattierung, 10 pt, feste Spaltenbreiten.

    linien=True behaelt die Gitterlinien (Stil «Table Grid») fuer interne Arbeitsdokumente.
    spalten: {Spaltenzahl: [Anteile]} uebersteuert die geschaetzten Breiten.
    """
    cols = max(len(r) for r in rows)
    t = doc.add_table(rows=0, cols=cols)
    if linien:
        t.style = "Table Grid"
    t.autofit = False
    anteile = (spalten or {}).get(cols)
    if anteile:
        widths = _col_anteile(anteile, rows, has_head, cols, nr)
    else:
        widths = _col_widths(rows, has_head, cols, nr)

    tblPr = t._tbl.tblPr
    tblW = OxmlElement("w:tblW")
    tblW.set(qn("w:type"), "dxa"); tblW.set(qn("w:w"), str(round(sum(widths) * TWIPS_PER_MM)))
    _tblpr_put(tblPr, tblW)
    if not linien:
        borders = OxmlElement("w:tblBorders")
        for edge in ("top", "left", "bottom", "right", "insideH", "insideV"):
            e = OxmlElement("w:" + edge); e.set(qn("w:val"), "nil"); borders.append(e)
        _tblpr_put(tblPr, borders)
    # Rahmenlos: linker Zellrand 0, damit der Tabellentext buendig mit dem Fliesstext steht
    # (in Word und LibreOffice gleich); der rechte Rand ist der Spaltenabstand.
    # Mit Linien: der Abstand symmetrisch, damit der Text nicht an der Linie klebt.
    mar = OxmlElement("w:tblCellMar")
    for edge, mm in (("top", 0), ("left", GAP_MM / 2 if linien else 0), ("bottom", 0),
                     ("right", GAP_MM / 2 if linien else GAP_MM)):
        e = OxmlElement("w:" + edge)
        e.set(qn("w:w"), str(round(mm * TWIPS_PER_MM))); e.set(qn("w:type"), "dxa")
        mar.append(e)
    _tblpr_put(tblPr, mar)
    for gc, w in zip(t._tbl.tblGrid.findall(qn("w:gridCol")), widths):
        gc.set(qn("w:w"), str(round(w * TWIPS_PER_MM)))

    body = rows[1:] if has_head else rows
    align = []
    for c in range(cols):
        werte = [_plain(r[c]) for r in body if c < len(r) and _plain(r[c]) not in _LEER]
        zahlen = c > 0 and bool(werte) and all(_is_num(v) for v in werte)
        align.append((aligns[c] if c < len(aligns) else None) or ("r" if zahlen else None))

    for ri, row in enumerate(rows):
        tr = t.add_row()
        head = has_head and ri == 0
        trPr = tr._tr.get_or_add_trPr()
        # Zeile nie ueber den Seitenwechsel teilen: ohne Linien liest sich der Rest einer
        # Zeile auf der Folgeseite wie eine eigene, halb leere Zeile.
        trPr.append(OxmlElement("w:cantSplit"))
        if head:    # Kopfzeile wiederholt sich, wenn die Tabelle ueber die Seite laeuft
            trPr.append(OxmlElement("w:tblHeader"))
        for ci, cell in enumerate(tr.cells):
            txt = row[ci].strip() if ci < len(row) else ""
            if _nowrap(_plain(txt), head):
                txt = txt.replace(" ", " ")
            cell.width = Mm(widths[ci])
            para = cell.paragraphs[0]
            pf = para.paragraph_format
            pf.line_spacing = 1.2; pf.space_before = Pt(2); pf.space_after = Pt(3)
            if align[ci]:
                para.alignment = _ALIGN[align[ci]]
            _runs(para, txt)
            for run in para.runs:
                if run.font.name is None:       # `code` in der Zelle behaelt seine Schrift
                    run.font.name = FONT
                run.font.size = Pt(CELL_PT)
                if head:
                    run.bold = True


BLOCK_START = re.compile(r"^\s*(#{1,6}\s|[-*]\s|\d+\.\s|>|\||```|---+\s*$)")


def _unwrap(lines):
    """Eingerueckte Fortsetzungszeilen an ihren Block anhaengen.

    Warum (30.07.2026, vollgas-radar): jede physische Zeile wurde bisher zu einem
    eigenen Absatz. Ein ueber den Umbruch laufendes **fett** war damit nie
    erkennbar (die Inline-Regex arbeitet zeilenweise) und Listenpunkte zerfielen
    in Bruchstuecke — der Normalfall in jeder raw-Datei des Wissens-Layers, die
    auf ~95 Zeichen umbrochen ist.

    BEWUSST ENG: zusammengefuehrt wird NUR, wenn die Folgezeile eingerueckt ist.
    Nicht eingerueckte Folgezeilen bleiben eigene Absaetze wie bisher — sonst
    wuerden Adress- und Signaturbloecke (Briefkopf, Absenderblock) zu einer
    einzigen Zeile verschmelzen. Markdown-konform waere das Zusammenfuehren,
    JANS-konform ist es nicht.
    """
    out, buf, in_code = [], None, False

    def flush():
        nonlocal buf
        if buf is not None:
            out.append(buf)
            buf = None

    for ln in lines:
        if ln.strip().startswith("```"):
            flush(); out.append(ln); in_code = not in_code; continue
        if in_code:
            out.append(ln); continue
        if not ln.strip():
            flush(); out.append(""); continue
        indented = ln[:1].isspace()
        if BLOCK_START.match(ln) or not indented or buf is None:
            flush(); buf = ln.rstrip(); continue
        prev = buf.rstrip()
        # Pfad oder Wort lief ueber den Umbruch: ohne Leerschlag zusammenziehen.
        buf = prev + ("" if prev.endswith(("/", "-")) else " ") + ln.strip()
    flush()
    return out


TABLE_SEP = re.compile(r"^\s*\|?[\s:|-]+\|?\s*$")   # ---|--- Trennzeile, auch die leere | | |


def _table_block(block):
    """Pipe-Block -> (rows, has_head, aligns).

    Die Trennzeile unter dem Kopf traegt die Ausrichtung je Spalte. Ist die Kopfzeile leer
    (| | |), hat die Tabelle keinen Kopf: typisch fuer Stammdaten-Raster, bei denen sonst
    die erste Datenzeile fett wuerde. Ohne Trennzeile gilt wie bisher die erste Zeile als Kopf.
    """
    def cells(r):
        return r.strip().strip("|").split("|")

    has_head, aligns = True, []
    if len(block) >= 2 and TABLE_SEP.match(block[1]) and "-" in block[1]:
        for c in (x.strip() for x in cells(block[1])):
            aligns.append("c" if c.startswith(":") and c.endswith(":") else
                          "r" if c.endswith(":") else "l" if c.startswith(":") else None)
        has_head = bool("".join(cells(block[0])).strip())
    rows = [cells(r) for r in block if not TABLE_SEP.match(r)]
    return rows, has_head, aligns


def convert(md_path, out_path=None, footer=None, tabellenlinien=False, spalten=None):
    """MD -> DOCX. footer=None setzt den Default-Fusszeilentext, "" laesst links leer."""
    with open(md_path, encoding="utf-8") as f:
        lines = _unwrap(f.read().splitlines())
    doc = Document(); _base(doc)
    datum = _doc_datum(md_path, out_path)
    _footer(doc, (FOOTER_DEFAULT if footer is None else footer).replace("{datum}", datum))
    i, n = 0, len(lines)
    in_code = False; code_buf = []
    tnr = 0
    while i < n:
        line = lines[i]
        if line.strip().startswith("```"):
            if in_code:
                p = doc.add_paragraph()
                r = p.add_run("\n".join(code_buf))
                r.font.name = "Consolas"; r.font.size = Pt(9)
                code_buf = []; in_code = False
            else:
                in_code = True
            i += 1; continue
        if in_code:
            code_buf.append(line); i += 1; continue
        # Tabelle
        if line.lstrip().startswith("|") and "|" in line[1:]:
            block = []
            while i < n and lines[i].lstrip().startswith("|"):
                block.append(lines[i]); i += 1
            rows, has_head, aligns = _table_block(block)
            if rows:
                tnr += 1
                _table(doc, rows, has_head, aligns, tnr, tabellenlinien, spalten)
            continue
        # Ueberschriften
        m = re.match(r"^(#{1,3})\s+(.*)$", line)
        if m:
            doc.add_heading(m.group(2).strip(), level=len(m.group(1))); i += 1; continue
        # Trennlinie
        if re.match(r"^\s*---+\s*$", line):
            i += 1; continue
        # Blockzitat
        if line.lstrip().startswith(">"):
            p = doc.add_paragraph(); p.paragraph_format.left_indent = Mm(6)
            r = p.add_run(line.lstrip().lstrip(">").strip()); r.italic = True
            i += 1; continue
        # Aufzaehlung
        m = re.match(r"^(\s*)[-*]\s+(.*)$", line)
        if m:
            p = doc.add_paragraph(style="List Bullet")
            p.paragraph_format.left_indent = Mm(6 + 4 * (len(m.group(1)) // 2))
            _runs(p, m.group(2)); i += 1; continue
        m = re.match(r"^\s*\d+\.\s+(.*)$", line)
        if m:
            p = doc.add_paragraph(style="List Number"); _runs(p, m.group(1)); i += 1; continue
        # Leerzeile / Normal
        if not line.strip():
            i += 1; continue
        p = doc.add_paragraph(); _runs(p, line); i += 1
    _abstaende(doc)
    out = out_path or os.path.splitext(md_path)[0] + ".docx"
    doc.save(out)
    return out


def _abstaende(doc):
    """Whitespace an den Nahtstellen, die kein Stil abdeckt."""
    paras = {p._p: p for p in doc.paragraphs}
    body = list(doc.element.body)
    # Titel am Dokumentanfang ohne Abstand davor, sonst sitzt er tiefer als der Satzspiegel.
    if body and body[0] in paras and paras[body[0]].style.name.startswith("Heading"):
        paras[body[0]].paragraph_format.space_before = Pt(0)
    for a, b in zip(body, body[1:]):
        if a.tag != qn("w:tbl"):
            continue
        if b.tag == qn("w:tbl"):
            a.addnext(OxmlElement("w:p"))    # Word verschmilzt direkt benachbarte Tabellen
        elif b in paras and not paras[b].style.name.startswith("Heading"):
            # Eine Tabelle hat keinen Abstand nach unten; ohne Linien klebt der Folgeabsatz.
            paras[b].paragraph_format.space_before = Pt(6)


def to_pdf(docx_path):
    soffice = next((c for c in SOFFICE_CANDIDATES
                    if os.path.exists(c) or c == "soffice"), None)
    outdir = os.path.dirname(os.path.abspath(docx_path))
    subprocess.run([soffice, "--headless", "--convert-to", "pdf",
                    "--outdir", outdir, docx_path], check=True,
                   stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    return os.path.splitext(docx_path)[0] + ".pdf"


def _parse_spalten(werte):
    """['1,4,2', ...] -> {3: [1.0, 4.0, 2.0]}; der Schluessel ist die Spaltenzahl."""
    out = {}
    for w in werte or []:
        try:
            teile = [float(x) for x in re.split(r"[,;\s]+", w.strip()) if x]
        except ValueError:
            teile = []
        if len(teile) < 2 or min(teile) <= 0:
            sys.exit(f'FEHLER: --spalten "{w}" ist keine Liste positiver Zahlen, z.B. "1,4,2".')
        out[len(teile)] = teile
    return out


def main():
    ap = argparse.ArgumentParser(
        description="Markdown -> DOCX im JANS-Layout (Rule dokument-layout-standard), optional PDF.")
    ap.add_argument("md")
    ap.add_argument("-o", "--out")
    ap.add_argument("--pdf", action="store_true", help="zusaetzlich PDF via LibreOffice")
    ap.add_argument("--footer", metavar="TEXT", default=None,
                    help="linker Fusszeilentext; {datum} wird ersetzt. Default: "
                         + FOOTER_DEFAULT.replace("%", "%%"))
    ap.add_argument("--tabellenlinien", action="store_true",
                    help="Tabellen mit Gitterlinien (nur interne Arbeitsdokumente)")
    ap.add_argument("--spalten", metavar="ANTEILE", action="append",
                    help='Spaltenanteile, z.B. "1,4,2", fuer Tabellen mit so vielen Spalten')
    a = ap.parse_args()
    docx = convert(a.md, a.out, footer=a.footer, tabellenlinien=a.tabellenlinien,
                   spalten=_parse_spalten(a.spalten))
    print("DOCX:", docx)
    if a.pdf:
        print("PDF :", to_pdf(docx))


if __name__ == "__main__":
    main()
