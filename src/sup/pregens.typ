#import "../../lib/24xx.typ": *

#show: xx.with(
  title: "AX&X: The Roster",
  subtitle: "Twenty ready heroes for a Level 1 delve. A pre-generated characters supplement for AX&X.",
  cols: 1,
)

// ===== derivation helpers =====
// The modifier scale from the core: 3:-3, 4-5:-2, 6-8:-1, 9-12:0, 13-15:+1,
// 16-17:+2, 18:+3. Every number on a sheet derives from the six scores, so a
// scores edit reflows the whole block.
#let amod(score) = {
  let s = int(score)
  if s <= 3 { -3 } else if s <= 5 { -2 } else if s <= 8 { -1 } else if s <= 12 { 0 } else if s <= 15 { 1 } else if s <= 17 { 2 } else { 3 }
}
// The AC bonus for a keen eye: +1 at DEX 16-17, +2 at 18. Separate from the
// DEX modifier that drives a missile attack.
#let dexedge(dex) = { let d = int(dex); if d >= 18 { 2 } else if d >= 16 { 1 } else { 0 } }
#let sgn(n) = if n >= 0 { "+" + str(n) } else { str(n) }
#let nextxp(track) = if track == "Mage" { "2,500" } else if track == "Specialist" { "1,500" } else { "2,000" }

// ===== sheet chrome =====
#let sh(s) = block(above: 0.8em, below: 0.35em, breakable: false)[
  #set text(font: section-font, weight: "regular", size: 12pt, tracking: 0.05em)
  #upper(s)
  #v(-0.28em)
  #line(length: 100%, stroke: 0.7pt + black)
]
#let kv(label, value) = [#text(font: heading-font, weight: "bold", size: 8pt)[#upper(label)]#h(0.4em)#value]

// ===== one filled character sheet, one page =====
#let sheet(r) = {
  let strS = r.at(7); let dexS = r.at(8); let conS = r.at(9)
  let intS = r.at(10); let wisS = r.at(11); let chaS = r.at(12)
  let hp = int(r.at(6)) + amod(conS)
  let ac = int(r.at(13)) + int(r.at(14)) + dexedge(dexS)
  let body = amod(conS) + int(r.at(15))
  let dodge = amod(dexS) + int(r.at(16))
  let will = amod(wisS) + int(r.at(17))

  let hasSpells = r.at(22).trim() != ""

  // HTML export drops grids, pages, and placed blocks, so the print sheet would
  // arrive nearly empty. Emit a clean linear version there instead, so the web
  // view carries the whole character; the print branch keeps the one-page sheet.
  context if target() == "html" {
    heading(level: 2)[#r.at(0). #r.at(1)]
    block[#emph[#r.at(2) #r.at(3) · #r.at(4) track · #r.at(5) · Level 1]]
    block[#strong[Abilities.] STR #strS (#sgn(amod(strS))), DEX #dexS (#sgn(amod(dexS))), CON #conS (#sgn(amod(conS))), INT #intS (#sgn(amod(intS))), WIS #wisS (#sgn(amod(wisS))), CHA #chaS (#sgn(amod(chaS))).]
    block[#strong[Combat.] HP #hp · AC #ac · Move #r.at(18) ft. Attacks: #r.at(19).]
    block[#strong[Saves.] Body #sgn(body), Dodge #sgn(dodge), Will #sgn(will). Roll 1d20 + the save, 12+, or 10 + HD of the source if higher.]
    block[#strong[Kit.] #r.at(20) Slots equal STR (#strS).]
    if hasSpells { block[#strong[Spells.] #r.at(22)] }
    block[#strong[Class and Kindred.] #r.at(21)]
    block[#strong[Knack.] #r.at(23) #strong[Tie.] #r.at(24)]
    block[#strong[How to Play.] #emph(r.at(25))]
  } else {
    let ab(name, score) = [#text(font: heading-font, weight: "bold")[#name] #score (#sgn(amod(score)))]

    pagebreak(weak: false)

    // header band: the d20 result, big, with name and line
    grid(columns: (auto, 1fr), align: (center + horizon, right + bottom), gutter: 0.9em,
      box(align(center)[
        #text(font: heading-font, size: 7pt, fill: luma(45%), tracking: 0.2em)[D20]
        #v(-0.35em)
        #text(font: heading-font, weight: "bold", size: 38pt)[#r.at(0)]
      ]),
      [
        #text(font: section-font, size: 18pt)[#r.at(1)]\
        #text(size: 9.5pt, fill: luma(30%))[#r.at(2) #r.at(3) · #r.at(4) track · #r.at(5) · Level 1 · XP 0, next at #nextxp(r.at(4))]
      ],
    )
    v(-0.1em)
    line(length: 100%, stroke: 1.1pt + black)
    v(0.3em)

    grid(columns: (1fr, 1fr), gutter: 1.3em,
      // --- left: abilities, combat, saves ---
      [
        #sh("Abilities")
        #grid(columns: (1fr, 1fr), row-gutter: 0.45em, column-gutter: 0.6em,
          ab("STR", strS), ab("INT", intS),
          ab("DEX", dexS), ab("WIS", wisS),
          ab("CON", conS), ab("CHA", chaS),
        )

        #sh("Combat")
        #kv("HP", hp)#h(1.2em)#kv("AC", ac)#h(1.2em)#kv("Move", [#r.at(18) ft])
        #v(0.4em)
        #text(font: heading-font, weight: "bold", size: 8pt)[ATTACKS]
        #v(0.1em)
        #list(..r.at(19).split(" · ").map(w => w))

        #sh("Saves")
        #kv("Body", sgn(body))#h(1.4em)#kv("Dodge", sgn(dodge))#h(1.4em)#kv("Will", sgn(will))
        #v(0.2em)
        #text(size: 8pt, fill: luma(45%))[Roll 1d20 + the save, 12+, or 10 + HD of the source if higher.]
      ],
      // --- right: gear, spells, class, background ---
      [
        #sh("Kit")
        #r.at(20)
        #v(0.3em)
        #text(size: 8pt, fill: luma(45%))[Slots equal STR (#strS). Over them: Weakened, half speed, no Run.]

        #if hasSpells [
          #sh("Spells")
          #r.at(22)
        ]

        #sh("Class and Kindred")
        #r.at(21)

        #sh("Background")
        #text(font: heading-font, weight: "bold", size: 8pt)[KNACK]#h(0.4em)#r.at(23)
        #v(0.3em)
        #text(font: heading-font, weight: "bold", size: 8pt)[TIE]#h(0.4em)#r.at(24)

        #sh("How to Play")
        #emph(r.at(25))
      ],
    )

    // the lower half of the sheet is the player's to fill: wounds taken, spells
    // spent, loot carried, and any hirelings signed on.
    v(1.1em)
    sh("Notes and Followers")
    text(size: 8pt, fill: luma(45%))[Mark wounds, spells spent, and loot here. A hireling or henchman takes a half share.]
    v(0.5em)
    for i in range(6) { line(length: 100%, stroke: 0.6pt + luma(65%)); v(0.75em) }
  }
}

= The Old Way

Twenty heroes, built and kitted, ready to hand across the table. Roll #k[1d20] on the roster below or let a player pick, and start the delve. Each is Level 1 with nothing banked, so the numbers are honest and the sheet is the whole character. They are built to be played the way the game was played around 1980: careful, resourceful, and hungry for treasure more than glory. These notes are the mindset the kits assume.

- #item[The Dungeoneer's Kit][The prized gear beats a bad roll. The #k[ten-foot pole] probes floors, chests, and doors before a hand touches them. #k[Iron spikes and a hammer] wedge a door shut behind you or spike it open. The #k[oil flask] is lantern fuel and a thrown firebomb both. #k[Rope and grapnel], a #k[mirror] for corners and a gorgon's gaze, #k[chalk] to mark your path, a #k[sack] for loot. Tools first, steel second.]
- #item[The Timed Turn][Exploration runs in #k[10-minute turns]. Map and move cautiously, search a section and it costs a turn, and the light burns down: a #k[torch] lasts 6 turns. Roll for wanderers about every third turn and at once after any noise, so dawdling is dangerous and so is a loud fight.]
- #item[Marching Order and Light][Set who stands where and who holds the light before you move. A hand on a torch is a hand off a shield, and swinging at what you cannot see is #k[-4]. The front rank meets the trap and the ambush, so it is armor's place, not the mage's.]
- #item[Gold Is Experience][Treasure, carried home, is the XP. A fight is a cost, not a prize, so skilled play avoids the ones it can. Meet a monster with the #k[four answers]: fight, flee, talk, or exploit a weakness. The cleverest parties leave the dragon asleep and take the hoard.]
- #item[A Retinue][At Level 1 a hired #k[torchbearer] frees a hand for a shield, and a #k[porter] carries out more loot, which is more XP. #k[Men-at-arms] thicken the line and screen the spellcaster. Each takes a half share and a daily wage, makes a #k[CHA check] the first time ordered into mortal danger, then tests morale. Spend them as pure fodder and word gets round; none will sign on. The Funnel supplement runs them in full.]

#columns(2)[
  #rolltable("d20", "Roll for a Hero", csv("pregens.csv").slice(1).map(r => [#r.at(1), #r.at(2) #r.at(3)]), note: [Generated from #k[pregens.csv]. Each full sheet follows, one to a page.])
]

#let roster = csv("pregens.csv").slice(1)
#for r in roster { sheet(r) }
