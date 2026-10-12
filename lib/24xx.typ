// 24XX page style for Typst.
//
// Follows the look of Jason Tocci's 24XX games: US Letter, black on
// white, dense condensed body text in three columns, heavy uppercase
// sans headings, no boxes or ornament. Rolled tables are plain
// numbered lists under a heading that names the die.
//
// Fonts: D-DIN for headings and Roboto Condensed for body, both in
// fonts/. Roboto Condensed registers as family "Roboto" with a 75%
// stretch, so the body style selects it through text(stretch:).
// Both fall back to common system sans fonts when missing.

#let heading-font = ("D-DIN", "Roboto", "Liberation Sans", "DejaVu Sans")
#let body-font = ("Roboto", "Liberation Sans", "DejaVu Sans")
#let body-stretch = 75%

// TSR nod: a Goudy Old Style serif carries the section titles, and the
// heavier Goudy Bookletter sets the title wordmark. The sans above stays
// on the body and the lean mechanics chrome (list numbers, table heads).
#let section-font = ("Sorts Mill Goudy", "Goudy Bookletter 1911", "Liberation Serif", "DejaVu Serif")
#let title-font = ("Goudy Bookletter 1911", "Sorts Mill Goudy", "Liberation Serif", "DejaVu Serif")

// Document wrapper.
//
//   title:     game title, set large at the top of page one
//   subtitle:  one line under the title
//   credit:    attribution line set small at the end of the document
//   cols:      column count for the body (24XX uses 2 or 3)
//   paper:     Typst paper name
#let xx(
  title: none,
  subtitle: none,
  credit: none,
  cols: 3,
  paper: "us-letter",
  cover: false,
  cover-art: none,
  dense: false,
  fold: none,
  body,
) = {
  set document(title: title)
  // Fold mode lays the document out as a landscape pamphlet: the sheet turns
  // on its side, the columns become fold panels, and light dashed guides mark
  // the folds. "trifold" is three panels per side. Portrait is the default and
  // is untouched when fold is none.
  let is-fold = fold != none
  set page(
    paper: paper,
    flipped: is-fold,
    columns: cols,
    margin: if is-fold { (x: 0.45in, y: 0.4in) } else { (x: 0.5in, top: 0.5in, bottom: 0.55in) },
    footer: context {
      set text(font: body-font, stretch: body-stretch, size: 7pt, fill: luma(40%))
      h(1fr)
      counter(page).display()
    },
    footer-descent: 0.2in,
    background: if is-fold {
      place(line(start: (33.333%, 0%), end: (33.333%, 100%), stroke: (paint: luma(75%), thickness: 0.4pt, dash: "dashed")))
      place(line(start: (66.667%, 0%), end: (66.667%, 100%), stroke: (paint: luma(75%), thickness: 0.4pt, dash: "dashed")))
    } else { none },
  )
  // Dense restores the condensed two-page 24XX density; the readable default
  // suits the supplements, where space is cheap.
  set text(font: body-font, stretch: body-stretch, size: if dense { 8.3pt } else { 9pt }, fill: black, hyphenate: false)
  set par(leading: if dense { 0.4em } else { 0.58em }, spacing: if dense { 0.4em } else { 0.54em }, justify: false)

  // Level 1: major section in big heavy caps with a rule above.
  show heading.where(level: 1): it => context {
    // HTML export gets a semantic heading (offset so the title can be h1);
    // the print layout keeps the big caps over a rule.
    if target() == "html" {
      html.elem("h2", it.body)
    } else {
      set text(font: section-font, weight: "regular", size: 16pt, tracking: 0.06em)
      block(above: 1.0em, below: 0.45em, breakable: false)[
        #line(length: 100%, stroke: 1.2pt + black)
        #v(0.12em)
        #upper(it.body)
      ]
    }
  }
  // Level 2: topic within a section.
  show heading.where(level: 2): it => context {
    if target() == "html" {
      html.elem("h3", it.body)
    } else {
      set text(font: section-font, weight: "regular", size: 12pt, tracking: 0.05em)
      block(above: 0.9em, below: 0.3em, breakable: false, upper(it.body))
    }
  }
  // Level 3: run-in minor heading, set in the serif italic.
  show heading.where(level: 3): it => context {
    if target() == "html" {
      html.elem("h4", it.body)
    } else {
      set text(font: section-font, weight: "regular", style: "italic", size: 10pt)
      block(above: 0.6em, below: 0.2em, breakable: false, it.body)
    }
  }

  set list(indent: 0.4em, body-indent: 0.4em, spacing: if dense { 0.42em } else { 0.52em }, marker: text(size: 7pt, sym.bullet))
  set enum(indent: 0em, body-indent: 0.5em, spacing: if dense { 0.42em } else { 0.52em }, numbering: n => text(font: heading-font, weight: "bold")[#n])
  set table(stroke: none, inset: (x: 3pt, y: 2pt))
  show table.cell.where(y: 0): set text(font: heading-font, weight: "bold")

  // Cover page: a dedicated art page for the core book.
  if cover and title != none {
    let parts = title.split(": ")
    let series = parts.at(0)
    let volume = if parts.len() > 1 { parts.slice(1).join(": ") } else { none }
    page(columns: 1, footer: none, margin: (x: 0.75in, top: 0.75in, bottom: 0.75in))[
      #set align(center)
      #line(length: 100%, stroke: 3pt + black)
      #v(0.03in)
      #line(length: 100%, stroke: 1pt + black)
      #v(0.55in)
      #text(font: title-font, size: 74pt, tracking: 0.02em, upper(series))
      #if volume != none {
        v(0.18in)
        block(fill: black, inset: (x: 14pt, y: 7pt),
          text(font: section-font, fill: white, size: 19pt, tracking: 0.18em, upper(volume)))
      }
      #v(0.4in)
      #if cover-art != none {
        block(width: 100%, stroke: 1.5pt + black, clip: true,
          image(cover-art, width: 100%, height: 4.7in, fit: "cover"))
      } else {
        rect(width: 100%, height: 4.7in, stroke: 1.5pt + black)[
          #set align(center + horizon)
          #text(font: section-font, size: 13pt, fill: luma(55%), tracking: 0.12em)[COVER ILLUSTRATION]
        ]
      }
      #v(1fr)
      #if subtitle != none {
        text(font: body-font, stretch: body-stretch, size: 12pt, fill: luma(25%), subtitle)
        v(0.18in)
      }
      #line(length: 100%, stroke: 1pt + black)
      #v(0.03in)
      #line(length: 100%, stroke: 3pt + black)
      #if credit != none {
        v(0.14in)
        text(size: 9pt, fill: luma(35%), credit)
      }
    ]
    counter(page).update(1)
  }

  // Title block spans the whole page width, above the columns.
  if title != none and not cover and not is-fold {
    place(top, float: true, scope: "parent", clearance: 0.6em, block(width: 100%)[
      #set text(font: title-font, weight: "regular", size: 34pt, tracking: 0.03em)
      #upper(title)
      #if subtitle != none {
        v(-0.1em)
        text(font: body-font, stretch: body-stretch, weight: "regular", size: 10.5pt, fill: luma(30%), subtitle)
      }
      #v(0.18em)
      #line(length: 100%, stroke: 0.6pt + black)
    ])
  }

  // In fold mode a page-wide title would span all panels, so the masthead
  // sits in flow at the top of the first panel instead.
  if title != none and not cover and is-fold {
    block(width: 100%, below: 0.45em)[
      #set text(font: title-font, weight: "regular", size: 20pt, tracking: 0.02em)
      #upper(title)
      #if subtitle != none {
        v(-0.1em)
        text(font: body-font, stretch: body-stretch, weight: "regular", size: 9pt, fill: luma(30%), subtitle)
      }
      #v(0.12em)
      #line(length: 100%, stroke: 0.6pt + black)
    ]
  }

  // HTML export: the print title block and cover rely on place/page, which
  // HTML drops, so emit the title and subtitle as a plain document header.
  context {
    if target() == "html" and title != none {
      html.elem("header", {
        html.elem("h1", title)
        if subtitle != none { html.elem("p", subtitle) }
      })
    }
  }

  body
  if credit != none {
    block(above: 1.4em, breakable: false)[
      #set text(size: 7pt, fill: luma(40%))
      #line(length: 100%, stroke: 0.5pt + luma(60%))
      #v(0.2em)
      #credit
    ]
  }
}

// Named stat or key term, printed bold the way 24XX sets rules text.
#let k(body) = strong(body)

// A rolled table: a heading that names the die, then numbered entries.
//
//   die:     "d8", "d66", "2d6" and so on
//   name:    what the table generates
//   entries: array of content, one per result, in order
//   note:    optional italic line printed under the heading
#let rolltable(die, name, entries, note: none) = {
  heading(level: 2)[#die #name]
  if note != none {
    block(below: 0.35em, emph(note))
  }
  enum(..entries)
}

// Short labelled entry used in rule lists: "Label: text".
#let item(label, body) = [#strong(label + ":") #body]

// A vertical bar separator for inline value runs: 3: -3 | 4-5: -2
#let bar = text(fill: luma(50%))[ | ]
