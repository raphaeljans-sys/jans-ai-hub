#!/usr/bin/env bash
# link-frischecheck.sh — Erreichbarkeits-Check aller in einer Wissens-KB zitierten Adressen
#
# Schwester von wiki-konsistenz.sh: dort Struktur (Frontmatter, INDEX, Backlinks),
# hier Erreichbarkeit (DNS, TLS, HTTP). Gebaut im Wartungslauf 02 (01.08.2026), weil
# Wartungslauf 01 dieselbe Messung ad hoc aufbauen musste und dabei zwei Fallen umging,
# die hier fest eingebaut sind.
#
# WICHTIG — die drei Fallen, an denen eine naive Fassung scheitert (alle 01.08.2026 belegt):
#
#  1. ADRESSEN OHNE PROTOKOLL. Die KBs schreiben Adressen fast immer als `www.zh.ch/de/...`
#     oder `maps.zh.ch` — ohne `https://`. Ein Muster, das nur auf `https?://` greift, findet
#     in planungsgrundlagen 30 von 245 Adressen und meldet die restlichen 215 stillschweigend
#     als "nicht vorhanden". Deshalb wird hier BEIDES extrahiert.
#
#  2. UMLAUTE IM HOSTNAMEN. `stadt-zürich.ch`, `energiehub-gebäude.ch`,
#     `gewässerschutzgesetz.zh.ch` kommen real vor. Ohne `perl -CSD` und Umlaute in der
#     Zeichenklasse zerschneidet die Regex sie mitten im Wort und erzeugt Phantom-Hosts
#     (`rich.ch`, `ude.ch`, `sserschutzgesetz.zh.ch`), die dann als "tot" gemeldet werden.
#
#  3. SCHRAEGSTRICH ALS PROSA-TRENNER. Aufzaehlungen wie `vkg.ch/presseportal.ch` oder
#     `bsvonline.ch/brandschutznachweis.ch` sind KEINE Pfade. Sie erzeugen 404 und sehen aus
#     wie tote Links. Der Report markiert solche Treffer als VERDACHT-ARTEFAKT; sie gehoeren
#     immer an der Quellzeile geprueft, bevor irgendetwas geaendert wird.
#
# WEITERE METHODIK (aus Wartungslauf 01/02):
#  - Browser-User-Agent + Redirect-Verfolgung: Amtsserver antworten Skripten sonst 403.
#  - Vier Varianten je Verdachtsfall (https/http, mit/ohne www.). Die `www.`-Falle geht in
#    BEIDE Richtungen: `zh.ch` braucht `www.`, `<thema>.zh.ch` darf es NICHT haben (das
#    Wildcard-Zertifikat `*.zh.ch` deckt nur eine Label-Ebene).
#  - DNS-Gegenprobe ueber drei Resolver, bevor "tot" behauptet wird.
#  - Ein Suchindex ist KEIN Erreichbarkeitsbeleg — massgeblich ist die Messung.
#  - 403 kann Bot-Sperre ODER echte Abschaltung sein: im Browser gegenpruefen (Fall
#    leitungskataster.upc.ch, 01.08.2026 — 403 auch im Browser, also wirklich weg).
#
# Aufruf:  bash wissen/tools/link-frischecheck.sh <kb> [--out <datei.tsv>]
# Ausgabe: Verdachtsfaelle auf stdout; mit --out zusaetzlich die Vollmessung als TSV.
# Exit:    0 = alle erreichbar · 1 = Verdachtsfaelle vorhanden · 2 = Bedienfehler

set -uo pipefail
HUB="/Volumes/daten/jans-ai-hub"
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0 Safari/537.36"
PAR=10   # parallele Messungen

KB="${1:-}"
case "$KB" in
  ""|--hilfe|--help|-h)
    sed -n '2,45p' "$0" | sed 's/^# \{0,1\}//'
    [ -z "$KB" ] && exit 2 || exit 0 ;;
esac
OUT=""
[ "${2:-}" = "--out" ] && OUT="${3:-}"

WIKI="$HUB/wissen/$KB/wiki"
[ -d "$WIKI" ] || { echo "Kein wiki/ fuer KB '$KB' unter $HUB/wissen/"; exit 2; }

TMPD="$(mktemp -d)"
trap 'rm -rf "$TMPD"' EXIT

# --- 1) Adressen extrahieren (beide Schreibweisen, UTF-8-fest) ----------------------------
cd "$WIKI" || exit 2
perl -CSD -ne '
  # a) mit Protokoll  b) blanker Host mit optionalem Pfad
  while ($_ =~ m{(?:https?://)?(?<![\w.\-/äöüÄÖÜ])((?:[a-z0-9äöü](?:[a-z0-9äöü\-]*[a-z0-9äöü])?\.)+(?:ch|com|org|net|eu|io))((?:/[^\s)"`|,;*\]\[]*)?)}g) {
    my ($h,$p)=($1,$2);
    $p =~ s/[.,;:*]+$//;
    next if $h =~ /^(z|d|u|ca|bzw|inkl|exkl|vgl|ggf|evtl|max|min|nr|abs|lit|art|ziff)\./;
    print "$h$p\n";
  }' *.md 2>/dev/null \
 | grep -vE '\.\.\.|XXXX|…|<|>|\{|\}' | sort -u > "$TMPD/adr.txt"

TOTAL=$(wc -l < "$TMPD/adr.txt" | tr -d ' ')
NART=$(ls *.md 2>/dev/null | wc -l | tr -d ' ')
echo "KB $KB — $TOTAL pruefbare Adressen aus $NART Artikeln" >&2

# --- 2) messen ---------------------------------------------------------------------------
cat > "$TMPD/m1.sh" <<EOF
#!/bin/bash
u="\$1"
c=\$(curl -s -o /dev/null -w '%{http_code}' -A "$UA" -L --max-time 25 --connect-timeout 10 "https://\$u" 2>/dev/null)
r=\$?
[ "\$c" = "000" ] && c="ERR\$r"
printf '%s\t%s\n' "\$c" "\$u"
EOF
chmod +x "$TMPD/m1.sh"
xargs -P "$PAR" -n1 "$TMPD/m1.sh" < "$TMPD/adr.txt" > "$TMPD/mess.tsv" 2>/dev/null

OK=$(awk -F'\t' '$1=="200"' "$TMPD/mess.tsv" | wc -l | tr -d ' ')
echo "  $OK/$TOTAL antworten sofort mit 200" >&2

# --- 3) Verdachtsfaelle nachpruefen ------------------------------------------------------
echo "" >&2
printf '%-8s %-46s %-26s %-9s %s\n' STATUS ADRESSE VARIANTEN DNS ARTIKEL
awk -F'\t' '$1!="200"{print $2}' "$TMPD/mess.tsv" | sort > "$TMPD/fail.txt"

while IFS= read -r url; do
  host="${url%%/*}"; base="${host#www.}"
  s() { c=$(curl -s -o /dev/null -w '%{http_code}' -A "$UA" -L --max-time 15 --connect-timeout 6 "$1" 2>/dev/null); r=$?; [ "$c" = "000" ] && c="E$r"; echo "$c"; }
  v1=$(s "https://$base"); v2=$(s "https://www.$base"); v3=$(s "http://$base"); v4=$(s "http://www.$base")
  d1=$(dig +short "$base" A 2>/dev/null|head -1)
  d2=$(dig +short @8.8.8.8 "$base" A 2>/dev/null|head -1)
  d3=$(dig +short @1.1.1.1 "$base" A 2>/dev/null|head -1)
  dns="OK"; [ -z "$d1$d2$d3" ] && dns="KEIN-A"
  art=$(grep -lF "$url" *.md 2>/dev/null | head -2 | xargs -n1 basename 2>/dev/null | tr '\n' ',' | sed 's/,$//')
  # Falle 3: Pfad, der selbst wie ein Hostname aussieht → Prosa-Trenner, kein echter Pfad
  hint=""
  case "${url#*/}" in *.ch|*.com|*.org|*.net) [ "$url" != "$host" ] && hint=" [VERDACHT-ARTEFAKT: Pfad sieht aus wie Hostname → Prosa-Aufzaehlung, an der Quellzeile pruefen]";; esac
  code=$(awk -F'\t' -v u="$url" '$2==u{print $1}' "$TMPD/mess.tsv" | head -1)
  printf '%-8s %-46s %-26s %-9s %s%s\n' "$code" "$url" "$v1/$v2/$v3/$v4" "$dns" "$art" "$hint"
done < "$TMPD/fail.txt"

[ -n "$OUT" ] && { cp "$TMPD/mess.tsv" "$OUT"; echo "" >&2; echo "Vollmessung: $OUT" >&2; }

[ "$OK" = "$TOTAL" ] && exit 0 || exit 1
