#import "../../lib/24xx.typ": *

#show: xx.with(
  title: "Bestiary",
  subtitle: "The source of truth for monsters in AX&X.",
  cols: 2,
)

= The Bestiary

Every creature here is one line of numbers and one of rules. The numbers are the floor; the rules are what make it worth fighting, or worth running from. The stat blocks on the following pages are generated from #k[bestiary.csv], so adding a row to that file adds a monster to the book.

The conventions match the core rules. A monster has about #k[5 HP per Hit Die], attacks at #k[\+ its HD], and forces saves at #k[10 + HD or higher]. Armor Class is ascending. To bring a creature from 1st Edition, set its AC to 19 minus the old number and keep its HD.

== Reading a Stat Block

- #item[HD][Hit Dice. Also the attack bonus, and the number appearing often scales with it.]
- #item[HP][A typical total. Roll 1d6 per HD for variety, or just use this.]
- #item[AC][Ascending. The target an attacker needs.]
- #item[Atk][The attack bonus, equal to HD, and the damage in parentheses with its type.]
- #item[Notes][Number appearing, behavior, and the abilities below, named by keyword.]

Number appearing and treasure are the GM's call, guided by the core Stocking and Treasure tables. Morale is the core rule: when a group first loses one and again at half strength, roll 1d6, and on 1 to 3 the rest break.

== Monster Abilities

The keywords a stat block leans on.

- #item[Mindless][Immune to Sleep, Charmed, Poisoned, and Frightened. Most undead, oozes, and constructs.]
- #item[Silver or Magic][Only silver or magic weapons bite it. Plain steel passes through.]
- #item[Regeneration][Regains the listed HP each round, unless the wound came from its bane, usually fire or acid. Damage past 0 only keeps it down if the bane did it.]
- #item[Drain][A hit, Body save or lose a Level: its HP, and a point from attacks and saves. A week of rest or a Remove Curse restores one Level.]
- #item[Petrify][A gaze, breath, or touch turns flesh to stone on a failed Body save. See Petrified.]
- #item[Poison][A hit, Body save or Poisoned. A few venoms do worse, as the note says.]
- #item[Blood Drain][On a hit it latches and drains automatically each round. An action or a STR Check tears it off.]
- #item[Rust][A touch corrodes metal armor or a weapon to ruin. Wood and stone it may eat too.]
- #item[Swallow][A large creature gulps a smaller one down. Inside, take automatic damage each round and cut your way out.]
- #item[Breath][An area attack, once per fight or now and then, Dodge save for half.]
- #item[Gaze][Works only eye to eye. Fight with averted eyes at -4, or turn it back with a mirror.]
- #item[Surprise][Catches a party off guard more easily. Lower the surprise odds in its favor.]
- #item[Flies][Moves through the air. If it stays high, ground attacks are at -4.]
- #item[Split][A blow divides it into two weaker copies. Only its bane kills it whole.]

== Making New Monsters

Reskin a line with a new name and one ability, or build from scratch: #k[HP 5 per HD], #k[Atk + HD], AC 10 to 18, saves at #k[10 + HD]. One strong trick is plenty. See the core Improvise rule.

#pagebreak()

= The Beasts

Generated from #k[bestiary.csv]. Each block is one creature.

#let fmt(r) = {
  let name = r.at(0)
  let hd = r.at(2)
  if hd == "" {
    return [#strong(name) #r.at(9)]
  }
  let dmg = r.at(6)
  let dt = r.at(7)
  let paren = if dmg == "" {
    ""
  } else if dt == "" {
    " (" + dmg + ")"
  } else {
    " (" + dmg + " " + dt + ")"
  }
  let stats = "HD " + hd + ", HP " + r.at(3) + ", AC " + r.at(4) + ", Atk " + r.at(5) + paren + "."
  [#strong(name) #stats #r.at(9)]
}

#let data = csv("bestiary.csv").slice(1)
#let groups = (
  ("humanoid", "Humanoids"),
  ("beast", "Beasts"),
  ("undead", "Undead"),
  ("ooze", "Oozes"),
  ("lycanthrope", "Lycanthropes"),
  ("fey", "Fey"),
  ("construct", "Constructs"),
  ("monster", "Monsters"),
  ("giant", "Giants"),
  ("dragon", "Dragons"),
  ("elemental", "Elementals"),
)

#for (key, label) in groups {
  let rows = data.filter(r => r.at(1) == key)
  if rows.len() > 0 {
    heading(level: 2, label)
    list(..rows.map(fmt))
  }
}
