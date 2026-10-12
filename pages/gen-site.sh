#!/bin/sh
# Assemble the AX&X GitHub Pages site under $SITEDIR.
#
# Copies each document's PDF, wraps its Typst-exported HTML with the site
# theme and a nav bar, copies a first-page thumbnail, and generates a
# grouped index. New documents under src/ flow in with no edits here.
#
# Usage: gen-site.sh SRCDIR OUTDIR PAGESDIR SITEDIR
set -eu

SRCDIR=$1
OUTDIR=$2
PAGESDIR=$3
SITEDIR=$4

rm -rf "$SITEDIR"
mkdir -p "$SITEDIR/assets/fonts" "$SITEDIR/thumbs"

cp "$PAGESDIR/style.css" "$SITEDIR/assets/style.css"
for f in GoudyBookletter1911.ttf SortsMillGoudy-Regular.ttf SortsMillGoudy-Italic.ttf \
         CourierPrime-Regular.ttf CourierPrime-Bold.ttf CourierPrime-Italic.ttf CourierPrime-BoldItalic.ttf; do
  cp "fonts/$f" "$SITEDIR/assets/fonts/$f"
done

category_of() {
  case "$1" in
    "$SRCDIR"/axx.typ) echo "Core Book" ;;
    "$SRCDIR"/sup/*)   echo "Supplements" ;;
    "$SRCDIR"/adv/*)   echo "Adventures" ;;
    "$SRCDIR"/wks/*)   echo "Worksheets" ;;
    *)                 echo "Other" ;;
  esac
}
order_of() {
  case "$1" in
    "Core Book") echo 0 ;; "Supplements") echo 1 ;;
    "Adventures") echo 2 ;; "Worksheets") echo 3 ;; *) echo 9 ;;
  esac
}
title_of() { grep -m1 '  title: "' "$1" | sed 's/.*title: "\(.*\)",.*/\1/'; }
pages_of() {
  if command -v pdfinfo >/dev/null 2>&1; then
    pdfinfo "$1" 2>/dev/null | awk '/Pages/{print $2}'
  fi
}

# Wrap a Typst HTML export: add the stylesheet, a body class, and a nav bar.
wrap_html() {
  awk -v slug="$2" '
    /<\/head>/ { print "<link rel=\"stylesheet\" href=\"assets/style.css\">"; print; next }
    /<body>/ {
      print "<body class=\"doc\">";
      print "<nav class=\"docnav\"><a class=\"home\" href=\"index.html\">&#8592; All AX&amp;X</a><a class=\"dl\" href=\"" slug ".pdf\">Download PDF</a></nav>";
      print "<main>";
      next
    }
    /<\/body>/ { print "</main>"; print; next }
    { print }
  ' "$1"
}

MAN=$(mktemp)
for src in $(find "$SRCDIR" -name '*.typ' | sort); do
  rel=${src#"$SRCDIR"/}       # sup/factions.typ
  base=${rel%.typ}            # sup/factions
  slug=$(basename "$src" .typ)
  cat=$(category_of "$src")
  ord=$(order_of "$cat")
  title=$(title_of "$src")
  pg=$(pages_of "$OUTDIR/$base.pdf" || true)

  cp "$OUTDIR/$base.pdf" "$SITEDIR/$slug.pdf"
  cp "$OUTDIR/$base.thumb.png" "$SITEDIR/thumbs/$slug.png"
  wrap_html "$OUTDIR/$base.html" "$slug" > "$SITEDIR/$slug.html"

  printf '%s\t%s\t%s\t%s\t%s\n' "$ord" "$cat" "$slug" "$title" "${pg:-}" >> "$MAN"
done

# ---- index.html ----
INDEX="$SITEDIR/index.html"
cat > "$INDEX" <<'HEAD'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AX&amp;X</title>
<link rel="stylesheet" href="assets/style.css">
</head>
<body class="index">
<div class="paper">
<header class="masthead">
  <div class="rule"></div>
  <h1 class="logo">AX&amp;X</h1>
  <p class="tagline">A Lean Dungeon Game</p>
  <div class="rule"></div>
</header>
<p class="intro">A pocket fantasy roleplaying game in the 24XX mold: roll under a page of
rules, crawl a dungeon, and keep your own books. Every booklet below reads in the
browser or prints to a clean PDF. Grab what you need and leave the rest on the shelf.</p>
HEAD

# Emit groups in category order, cards sorted by title within each.
prev=""
sort -t "$(printf '\t')" -k1,1n -k4,4 "$MAN" | while IFS="$(printf '\t')" read -r ord cat slug title pg; do
  if [ "$cat" != "$prev" ]; then
    [ -n "$prev" ] && printf '</div>\n</section>\n' >> "$INDEX"
    printf '<section class="group">\n<h2>%s</h2>\n<div class="grid">\n' "$cat" >> "$INDEX"
    prev=$cat
  fi
  disp=${title#AX&X: }
  disp=$(printf '%s' "$disp" | sed 's/&/\&amp;/g')
  meta=""
  [ -n "$pg" ] && meta="${pg} pp &middot; "
  cat >> "$INDEX" <<CARD
<div class="card">
  <a class="cover" href="${slug}.html"><img src="thumbs/${slug}.png" alt="${disp} cover" loading="lazy"></a>
  <a class="ct" href="${slug}.html">${disp}</a>
  <span class="cm">${meta}<a href="${slug}.html">read</a> &middot; <a href="${slug}.pdf">pdf</a></span>
</div>
CARD
done
printf '</div>\n</section>\n' >> "$INDEX"

cat >> "$INDEX" <<'FOOT'
<section class="lineage">
<h2>Lineage</h2>
<p>AX&amp;X is built on AD&amp;D first edition, but it does not reprint it. Every roll is
1d20 plus a modifier against 12, so there are no attack matrices and no saving-throw
tables. Armor Class counts up instead of down. The five old save categories collapse
into three, Body, Dodge, and Will, chosen by what an effect does to you rather than
how it reaches you. Any kindred may take any class, with no level caps and no class
limits. A character starts with maximum hit points and adds CON to every Hit Die.
Alignment is the older three-fold Law, Neutrality, and Chaos, not the nine-box grid.
Humans get a +1 to one ability score, which is an AX&amp;X invention, not a
first-edition rule.</p>
<p>Some of that is borrowed, and it should be named plainly. Ascending Armor Class
and the single d20 check against a target number come from the third edition family.
The three effect-based saves are third edition's Fortitude, Reflex, and Will wearing
old-school names. The optional critical hit, maximum damage then doubled against a
vulnerability, is a fourth edition idea. What AX&amp;X keeps from the old school is the
texture: side-based d6 initiative, 2d6 reactions, 1d6 morale, d6 dungeon stocking,
and wandering monsters on a 1 in 6. It deliberately leaves out the modern opportunity
attack. Withdraw is just the first edition's careful retreat under a shorter name. The
conversion supplement carries the full line-by-line map for running old modules at the
table.</p>
</section>
<p class="colophon">Set in Goudy and Courier Prime. Built from Typst, run off on the office machine.
The dice owe you nothing.</p>
</div>
</body>
</html>
FOOT

rm -f "$MAN"
echo "site assembled in $SITEDIR"
