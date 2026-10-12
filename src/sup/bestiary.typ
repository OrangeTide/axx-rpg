#import "../../lib/24xx.typ": *

#show: xx.with(
  title: "AX&X: Bestiary",
  subtitle: "The source of truth for monsters in AX&X.",
  cols: 2,
)

= The Bestiary

Every creature here is one line of numbers and one of rules. The numbers are the floor; the rules are what make it worth fighting, or worth running from. The stat blocks on the following pages are generated from #k[bestiary.csv], so adding a row to that file adds a monster to the book.

The conventions match the core rules. A monster has about #k[5 HP per Hit Die], attacks at #k[\+ its HD], and forces saves at #k[10 + HD or higher]. Armor Class is ascending. To bring a creature from 1st Edition, set its AC to 19 minus the old number and keep its HD.

== Encounters as Puzzles

A monster is a problem to solve, not just a sack of HP. Every fight offers four answers: Fight, Flee, Talk, or Exploit a weakness. The job of a stat block is to arm that choice before it is made.

- #item[Read the Foe][A look at the scene, or a Lore check with INT, tells the party what the creature shrugs off, what cuts it deep, and what it wants. The notes carry this: an #k[Immune] line it ignores, a #k[Resistant] or #k[vulnerable] line for damage, a weakness to name, and often a Tell (how it reads on sight) and a Want (what might buy it off).]
- #item[Fight or Run][Armor the decision with the numbers. HD and damage say how hard it hits; an immunity may make a fight hopeless, a vulnerability may make it quick. Let the players weigh this while they still can, not after the first blow.]
- #item[Telegraph the Trick][A deadly effect, a gaze, a breath, a drain, shows a round before it lands. That round is the warning. A party that reads the Tell can ready the counter, per the core The Answer rule, and turn the signature trick aside.]
- #item[Be Ruthless, Be Fair][Because the trick is telegraphed and answerable, the GM can trigger it without pulling the punch. The danger stays real; the puzzle stays solvable.]

== Reading a Stat Block

- #item[HD][Hit Dice. Also the attack bonus, and the number appearing often scales with it.]
- #item[HP][A typical total. Roll 1d6 per HD for variety, or just use this.]
- #item[AC][Ascending. The target an attacker needs.]
- #item[Atk][The attack bonus, equal to HD, and the damage in parentheses with its type. Slashed dice, as claw/claw/bite, are several attacks a round, one roll each at the same bonus.]
- #item[Notes][Number appearing, behavior, and the abilities below, named by keyword.]
- #item[Trick][One line on the puzzle of the fight: the defense to get past, or the weakness to exploit. The notable foes carry one; a plain fight needs none.]

Number appearing and treasure are the GM's call, guided by the core Stocking and Treasure tables. Morale is the core rule: when a group first loses one and again at half strength, roll 1d6, and on 1 to 3 the rest break.

== Monster Abilities

The full list of monster keywords, and the source of truth for them. The core picks up the few its starter foes need and summarizes them; every tag and its rule lives here.

- #item[Mindless][Immune to Sleep, Charmed, Poisoned, and Frightened. Most undead, oozes, and constructs.]
- #item[Berserk][Fights in a fury: #k[+2 to attack], never tests morale, and never yields, fighting to the death. Immune to Frightened. A fury it cannot switch off, it attacks the nearest target, friend or foe, if no enemy stands.]
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

#rolltable("1d12", "Rare Encounters", note: [Not an everyday fight, a legend crossed. Roll or pick one when a long journey or a deep delve has earned a wonder or a terror, then stat it from the lines that follow.], (
  item[Dragon][Aloft on the high wind, or coiled on a hoard that could ransom a kingdom.],
  item[Lich][A dead archmage at its work, wardens around it and its phylactery near.],
  item[Treant][An old wood that moves, and will not forgive the axe.],
  item[Roc][A shadow the size of a field, and the herds gone silent.],
  item[Sphinx][A riddle cut into the only pass, and the bones of wrong answers below.],
  item[Pegasus][A wild winged horse at a high spring, watching, poised to bolt.],
  item[Will-o'-Wisp][A kindly light bobbing over the bog, where no road runs.],
  item[Unicorn][A white glimmer in a hidden glade that heals, and judges.],
  item[Medusa][A garden of statues caught mid-step, and a veiled figure among them.],
  item[Basilisk][A lair of stone beasts, frozen where the gaze found them.],
  item[Chimera][Three-headed death quartering the crags, fire on its breath.],
  item[Manticore][A ridge strewn with spent tail-spikes, and more on the wing.],
))

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
  let trick = if r.len() > 10 and r.at(10) != "" { [ #strong[Trick:] #r.at(10)] } else { [] }
  [#strong(name) #stats #r.at(9)#trick]
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

#rolltable("1d8", "Lairs and Haunts", note: [Dungeon dressing. Roll or pick the shape of the place a thing has made its own.], (
  item[Ruined Keep][Collapse-prone stone, moldering tapestries, echoing footfalls.],
  item[Sunken Crypt][Knee-deep water, damp granite, the smell of rot.],
  item[Fungal Caverns][Glowing spores, slick floors, choking haze.],
  item[Defiled Temple][Shattered altars, blood-stained pillars, a low hum.],
  item[Obsidian Dungeon][Razor-edged black stone, sulfur vents, sigils that glow when touched.],
  item[Labyrinth][Shifting corridors, minotaur runes, dust-covered bones.],
  item[Flooded Mine][Rotten timbers, tunnels ending in black water, the tap of digging.],
  item[Giant's Barrow][Doors too tall to reach, grave goods sized for titans, a cold that does not lift.],
))
