#import "../../lib/24xx.typ": *

#show: xx.with(
  title: "AX&X: Warband Record",
  subtitle: "A printable tracker for the Warbands supplement. Copy one per host.",
  cols: 1,
)

#let rl = 0.6pt + luma(45%)
#let blank(w) = box(width: w, height: 0.95em, stroke: (bottom: rl))
#let lbl(s) = text(font: heading-font, weight: "bold", size: 7.5pt, upper(s))
#let field(label, w) = [#lbl(label + ":")#h(0.3em)#blank(w)]
#let sq = box(width: 8pt, height: 8pt, stroke: 0.5pt)

#let record = block(width: 100%, stroke: 0.8pt + black, inset: 9pt, breakable: false, above: 0.7em, below: 0.7em)[
  #text(font: heading-font, weight: "bold", size: 10pt)[WARBAND]
  #v(0.5em)
  #field("Banner", 48%)#h(1.2em)#field("Commander, CHA + Level", 30%)
  #v(0.8em)
  #field("Member: HD / HP / AC / Atk / die", 68%)
  #v(0.8em)
  #field("Keywords", 38%)#h(1.2em)#field("Goal / Disposition", 36%)
  #v(1em)
  #lbl("Strength")#h(1em)#field("Starting files", 20%)
  #v(0.6em)
  #box(width: 100%)[#for i in range(20) [#sq#h(4pt)]]
  #v(0.9em)
  #lbl("Now")#h(1em)#field("Files", 9%)#h(1em)#field("HD", 9%)#h(1em)#field("HP", 11%)#h(1em)#field("Atk +", 9%)#h(1em)#field("Dmg", 16%)
  #v(0.5em)
  #text(size: 7pt, fill: luma(40%))[HD = files x member HD.  HP = 5 x HD.  Attack +HD.  Damage die +HD.  Recount at the top of the turn.]
  #v(0.9em)
  #lbl("Breaks at")#h(0.4em)#blank(7%)#h(0.4em)#lbl("files, again at")#h(0.4em)#blank(7%)#h(0.4em)#lbl("files")#h(1.5em)#field("Scattered this round", 22%)
  #v(0.9em)
  #field("Upkeep / wages", 26%)#h(1em)#field("Loyalty", 20%)#h(1em)#field("Last mishap", 24%)
]

How to use: set the top block once from the warband's member line, mark the starting files, then cross a box as each file falls and recount the Now line at the top of each turn. Write the two morale marks in at setup.

#record
#record
#record
