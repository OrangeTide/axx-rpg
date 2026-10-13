#import "../../lib/24xx.typ": *

#set document(title: "AX&X: Turn Tracker")
#set page(
  paper: "us-letter",
  flipped: true,
  margin: (x: 0.4in, top: 0.4in, bottom: 0.4in),
  footer: context {
    let rev = sys.inputs.at("rev", default: none)
    if rev != none and rev != "" { text(size: 7pt, fill: luma(40%), rev) }
    h(1fr)
    box(baseline: 28%, image("/lib/cc0.svg", height: 9pt))
  },
)
#set text(font: body-font, stretch: body-stretch, size: 8pt, fill: black, hyphenate: false)
#set par(leading: 0.45em, spacing: 0.5em)

#let rl = 0.6pt + luma(50%)
#let ul(w) = box(width: w, height: 0.95em, stroke: (bottom: rl))
#let lbl(s) = text(font: heading-font, weight: "bold", size: 7pt, upper(s))
#let note(s) = text(size: 6.5pt, fill: luma(45%), s)
#let field(label, w) = [#lbl(label)#h(0.3em)#ul(w)]
#let sq = box(width: 8pt, height: 8pt, stroke: 0.5pt + luma(40%))
// a run of tick boxes, with a wider gap every `per` to read as groups
#let sqrow(total, per) = {
  for i in range(total) {
    sq
    if calc.rem(i + 1, per) == 0 { h(6pt) } else { h(2.5pt) }
  }
}
#let sechead(s) = block(above: 0.5em, below: 0.3em, breakable: false)[
  #text(font: section-font, size: 10pt, tracking: 0.04em, upper(s))
  #v(-0.3em)
  #line(length: 100%, stroke: 0.7pt + black)
]

// ===== turn-grid marks =====
#let wdot = box(baseline: 20%, width: 6pt, height: 6pt, radius: 3pt, fill: luma(32%))
#let rmark = text(font: heading-font, weight: "bold", size: 6.5pt, fill: luma(30%), "R")
#let nbox = box(width: 7pt, height: 7pt, stroke: 0.5pt + luma(45%))

// a grid of numbered Turn rows for the given range, with the cadence
// cues pre-printed: a dot every third Turn (roll Wandering) and an R
// every fifth (rest or go Weakened), a noise box, and a journal rule.
#let gridrows(nums) = {
  let cells = ()
  for n in nums {
    let w = if calc.rem(n, 3) == 0 { wdot } else { [] }
    let r = if calc.rem(n, 5) == 0 { rmark } else { [] }
    cells.push(text(font: heading-font, size: 7pt, fill: luma(45%), str(n)))
    cells.push(w)
    cells.push(r)
    cells.push(nbox)
    cells.push(box(width: 100%, height: 1.0em, stroke: (bottom: rl)))
  }
  grid(
    columns: (13pt, 8pt, 8pt, 9pt, 1fr),
    column-gutter: 3pt,
    row-gutter: 4.6pt,
    align: (right + horizon, center + horizon, center + horizon, center + horizon, left + horizon),
    ..cells,
  )
}

// ===== masthead =====
#text(font: title-font, size: 20pt, tracking: 0.02em)[AX&X]#h(0.4em)#text(font: section-font, size: 11pt, tracking: 0.08em)[TURN LOG]#h(1em)#note[A Turn is 10 minutes: move a few rooms, search a room, pick a lock, or rest. Keep one line a Turn, like an hourly journal. Rest one Turn every five or be Weakened. After eight hours and a ration, a new Day prepares spells afresh.]
#v(0.2em)
#line(length: 100%, stroke: 1pt + black)
#v(0.4em)

// ===== status band =====
#grid(
  columns: (1.05fr, 1.25fr, 1fr),
  column-gutter: 14pt,
  // --- the Day ---
  [
    #sechead("The Day")
    #field("Day", 24%)#h(0.8em)#lbl("8h sleep")#h(0.3em)#sq
    #v(0.6em)
    #lbl("Ration eaten, one box a PC")#h(0.3em)#sqrow(6, 6)
    #v(0.5em)
    #lbl("Spells re-prepared")#h(0.3em)#sq#h(1.2em)#lbl("Bind Wounds used")#h(0.3em)#sqrow(6, 6)
    #v(0.5em)
    #note[Skip the ration and you heal nothing and are Weakened until you eat. Bind Wounds is once a day, a rest Turn, 1d4 HP.]
  ],
  // --- light and supplies ---
  [
    #sechead("Light")
    #lbl("Torches, 6 Turns each")\
    #v(0.2em)#sqrow(36, 6)
    #v(0.5em)
    #lbl("Lantern flask, 24 Turns")\
    #v(0.2em)#sqrow(24, 6)
    #v(0.5em)
    #lbl("Carried")#h(0.4em)#lbl("rations")#ul(14%)#h(0.5em)#lbl("torches")#ul(14%)#h(0.5em)#lbl("oil")#ul(14%)
    #v(0.3em)
    #note[The dark is -4 to swing at what you cannot see, and spells need line of sight.]
  ],
  // --- depth, order ---
  [
    #sechead("Depth and Order")
    #lbl("Level first entered, 100 XP x depth")
    #v(0.3em)
    #lbl("1")#sq#h(0.7em)#lbl("2")#sq#h(0.7em)#lbl("3")#sq#h(0.7em)#lbl("4")#sq#h(0.7em)#lbl("5")#sq
    #v(0.6em)
    #lbl("Marching order and light bearer")
    #v(0.3em)
    #ul(100%)#v(0.5em)#ul(100%)
  ],
)

// ===== cadence legend =====
#v(0.5em)
#line(length: 100%, stroke: 0.4pt + luma(60%))
#v(0.3em)
#box(baseline: 20%, wdot)#h(0.3em)#note[roll Wandering: 1d6, a 1, or a 1 or 2 after a noise, brings a foe from Threat.]#h(1.2em)#rmark#h(0.3em)#note[rest this Turn or go Weakened.]#h(1.2em)#box(baseline: 20%, nbox)#h(0.3em)#note[tick a forced check: at once after a fight, a forced door, or a shout.]
#v(0.5em)

// ===== the turn grid, 90 Turns across three columns =====
#columns(3, gutter: 14pt)[
  #gridrows(range(1, 31))
  #colbreak()
  #gridrows(range(31, 61))
  #colbreak()
  #gridrows(range(61, 91))
]
