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

// Document wrapper.
//
//   title:     game title, set large at the top of page one
//   subtitle:  one line under the title
//   credit:    attribution line printed in the page footer
//   cols:      column count for the body (24XX uses 2 or 3)
//   paper:     Typst paper name
#let xx(
  title: none,
  subtitle: none,
  credit: none,
  cols: 3,
  paper: "us-letter",
  body,
) = {
  set document(title: title)
  set page(
    paper: paper,
    margin: (x: 0.5in, top: 0.5in, bottom: 0.55in),
    footer: context {
      set text(font: body-font, stretch: body-stretch, size: 7pt, fill: luma(40%))
      if credit != none { credit }
      h(1fr)
      counter(page).display()
    },
    footer-descent: 0.2in,
  )
  set text(font: body-font, stretch: body-stretch, size: 8.6pt, fill: black, hyphenate: false)
  set par(leading: 0.42em, spacing: 0.42em, justify: false)

  // Level 1: major section in big heavy caps with a rule above.
  show heading.where(level: 1): it => {
    set text(font: heading-font, weight: "bold", size: 15pt, tracking: 0.02em)
    block(above: 1.0em, below: 0.45em, breakable: false)[
      #line(length: 100%, stroke: 1.2pt + black)
      #v(0.15em)
      #upper(it.body)
    ]
  }
  // Level 2: topic within a section.
  show heading.where(level: 2): it => {
    set text(font: heading-font, weight: "bold", size: 10.5pt, tracking: 0.03em)
    block(above: 0.9em, below: 0.3em, breakable: false, upper(it.body))
  }
  // Level 3: run-in minor heading.
  show heading.where(level: 3): it => {
    set text(font: heading-font, weight: "bold", size: 9pt)
    block(above: 0.6em, below: 0.2em, breakable: false, it.body)
  }

  set list(indent: 0.4em, body-indent: 0.4em, spacing: 0.42em, marker: text(size: 7pt, sym.bullet))
  set enum(indent: 0em, body-indent: 0.5em, spacing: 0.42em, numbering: n => text(font: heading-font, weight: "bold")[#n])
  set table(stroke: none, inset: (x: 3pt, y: 2pt))
  show table.cell.where(y: 0): set text(font: heading-font, weight: "bold")

  // Title block spans the whole page width.
  if title != none {
    block(width: 100%, below: 0.6em)[
      #set text(font: heading-font, weight: "bold", size: 30pt, tracking: 0.01em)
      #upper(title)
      #if subtitle != none {
        v(-0.4em)
        text(font: body-font, stretch: body-stretch, weight: "regular", size: 10.5pt, fill: luma(30%), subtitle)
      }
    ]
  }

  set columns(gutter: 0.22in)
  columns(cols, body)
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
