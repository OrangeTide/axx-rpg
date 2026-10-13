#import "../../lib/24xx.typ": *

#set document(title: "AX&X: Character Sheet")
#set page(
  paper: "us-letter",
  flipped: true,
  columns: 3,
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
#let field(label, w) = [#lbl(label)#h(0.3em)#ul(w)]
#let wbox = box(width: 1em, height: 1em, stroke: 0.6pt + luma(40%))
#let sechead(s) = block(above: 0.5em, below: 0.35em, breakable: false)[
  #text(font: section-font, size: 11pt, tracking: 0.04em, upper(s))
  #v(-0.25em)
  #line(length: 100%, stroke: 0.8pt + black)
]

// ===== PANEL 1: identity and abilities =====
#text(font: title-font, size: 22pt, tracking: 0.02em)[AX&X]#h(0.4em)#text(font: section-font, size: 11pt, tracking: 0.08em)[CHARACTER]
#v(0.2em)
#line(length: 100%, stroke: 1pt + black)
#v(0.3em)
#field("Name", 100%)
#v(0.5em)
#field("Kindred", 46%)#h(0.6em)#field("Alignment", 32%)
#v(0.5em)
#field("Class", 46%)#h(0.6em)#field("Track", 32%)
#v(0.5em)
#field("Level", 20%)#h(0.6em)#field("XP", 30%)#h(0.6em)#field("Next", 24%)

#sechead("Abilities")
#let abil(name, note) = [
  #lbl(name)#h(0.3em)#lbl("score")#h(0.2em)#ul(12%)#h(0.4em)#lbl("mod")#h(0.2em)#ul(10%)\
  #text(size: 6.5pt, fill: luma(45%))[#note]
  #v(0.35em)
]
#abil("STR", "Melee attack and damage. Slots = score.")
#abil("DEX", "Missile attack. AC edge at 16+.")
#abil("CON", "HP per Hit Die. Body saves.")
#abil("INT", "Lore, languages. Bonus Magic-User slot at +1.")
#abil("WIS", "Perception, Will. Bonus Cleric slot at +1.")
#abil("CHA", "Reactions, parley, hirelings.")

#colbreak()

// ===== PANEL 2: combat and saves =====
#sechead("Combat")
#field("HP now", 24%)#h(0.5em)#field("HP max", 24%)
#v(0.5em)
#field("AC", 20%)#h(0.5em)#field("Move", 24%)#h(0.5em)#field("Init", 14%)
#v(0.6em)
#lbl("Attack mod")#h(0.3em)#ul(20%)
#v(-0.1em)
#text(size: 6.5pt, fill: luma(45%))[Track bonus + STR (melee) or DEX (missile). Warrior +Level and a 2nd attack at Level 6, a 3rd at 11; Specialist and Priest +half Level up; Mage +half Level down.]
#v(0.5em)
#lbl("Weapons")
#v(0.2em)
#let wrow = [#ul(40%)#h(0.3em)#lbl("atk")#ul(12%)#h(0.3em)#lbl("dmg")#ul(16%)#v(0.5em)]
#wrow
#wrow
#wrow

#sechead("Saves")
#text(size: 6.5pt, fill: luma(45%))[1d20 + half Level + ability, 12+, or 10 + HD of the source if higher.]
#v(0.3em)
#field("Body (CON)", 26%)#h(0.4em)#text(size: 6.5pt)[poison, death, petrify]
#v(0.5em)
#field("Dodge (DEX)", 26%)#h(0.4em)#text(size: 6.5pt)[breath, traps, blasts]
#v(0.5em)
#field("Will (WIS)", 26%)#h(0.4em)#text(size: 6.5pt)[magic, charm, fear]

#sechead("When You Drop")
#text(size: 6.8pt)[At 0 HP roll #k[Brush with Death] (1d6 +1 per earlier Brush that day, 6+ Slain). #k[Weakened] is -2 to all d20 rolls, stacking by source. #k[Injured] until a Haven rest.]

#colbreak()

// ===== PANEL 3: magic, kit, ties =====
#sechead("Magic")
#field("Caster Level", 22%)
#v(0.5em)
#lbl("Slots 1 / 2 / 3")#h(0.4em)#ul(12%)#h(0.2em)/#h(0.2em)#ul(12%)#h(0.2em)/#h(0.2em)#ul(12%)
#v(0.4em)
#lbl("Prepared")
#v(0.2em)
#for i in range(6) [#ul(100%)#v(0.45em)]

#sechead("Kit and Ties")
#field("Class kit", 100%)
#v(0.5em)
#field("Tie", 100%)
#v(0.5em)
#field("Home", 100%)
#v(0.5em)
#field("Trinket", 100%)

#sechead("Notes")
#for i in range(4) [#ul(100%)#v(0.5em)]

#pagebreak()

// ===== BACK: inventory in Post-it-sized slots =====
#text(font: section-font, size: 12pt, tracking: 0.04em, upper("Inventory"))
#h(0.6em)#text(size: 7pt, fill: luma(45%))[One slot per box. Slots = STR with a pack, fewer without. 100 coin fills a slot. Over STR: Weakened, half speed, no Run.]
#v(0.15em)
#line(length: 100%, stroke: 0.8pt + black)
#v(0.3em)

#let slot(n) = box(width: 1.375in, height: 1.875in, stroke: 0.6pt + luma(50%), inset: 4pt)[
  #text(font: heading-font, size: 6.5pt, fill: luma(55%))[#n]
]
#for i in range(18) [#slot(i + 1)#h(5pt)]

#v(0.6em)
#sechead("Coins and Carry")
#field("GP", 22%)#h(0.5em)#field("SP", 18%)#h(0.5em)#field("CP", 18%)
#v(0.45em)
#field("Containers, a sack holds 3", 50%)
#text(size: 6.5pt, fill: luma(45%))[ 100 coin fills a slot.]

#sechead("Followers")
#text(size: 6.5pt, fill: luma(45%))[Hirelings and henchmen: name, line, and share.]
#v(0.2em)
#for i in range(3) [#ul(100%)#v(0.5em)]
