#import "../../lib/24xx.typ": *

#show: xx.with(
  title: "AX&X: Spellbook",
  subtitle: "The source of truth for spells in AX&X.",
  cols: 2,
)

= Magic

A caster prepares spells into slots each day after sleeping, as the core slot table sets by Level. Casting is an action; a wound taken earlier in the round loses the spell. The spells here run from level 1 to 3, the range of the core game. The entries on the following pages are generated from #k[spells.csv], so adding a row adds a spell to the book.

Clerics pray and may prepare any Cleric spell of a level they have slots for. Magic-Users prepare only from a spellbook, which starts with two 1st-level spells; a Day of study copies a scroll or a captured book's spell into it.

== Reading a Spell

- #item[Level][The spell level, 1 to 3. You need a slot of that level to prepare it.]
- #item[Save][The save a target rolls to resist, if any: Body, Dodge, or Will, at 10 + the caster's Level. No save means it simply takes effect. "For half" means a Dodge save halves the damage.]
- #item[Effect][What it does, with its range and duration in the shorthand below.]

== Conventions

- #item[Duration][#k[One fight] lasts until the fight ends. #k[6 turns] is one hour. A #k[Day] is until your next sleep. Anything else says so.]
- #item[Range][#k[Touch] needs a hand on the target. #k[Near] is 30 ft. Longer ranges are stated. A targeted spell needs line of sight.]
- #item[Per Level][Where an effect scales "per Level," count your caster Level. Damage spells grow as the entry says.]
- #item[Reversible][Some Cleric spells reverse into their mirror: Cure becomes Cause, Light becomes Darkness, Remove Curse becomes Bestow. A Chaotic Cleric leans on the dark side; a Lawful one must have cause.]
- #item[Concentration][A spell with a lasting effect you steer ends if you are Paralyzed, Asleep, or slain, or if you cast another.]
- #item[Foci][A caster works through a focus: the Magic-User a spellbook, the Cleric a holy symbol. Lose it and you cannot prepare spells until you replace it.]
- #item[Components][A few spells list a _Component_, a material spent in the casting. The core game ignores them. Use them for color, or let the costly ones drain a purse. No Component listed means none is needed.]

== Beyond Level 3

The core game stops at 3rd-level spells. To carry a campaign further, a spell of a given AD&D spell level opens at twice that level minus one: 4th-level spells at caster Level 7, 5th at Level 9. Convert any 1st Edition spell by giving it a save from Body, Dodge, or Will, a duration in the shorthand above, and damage near #k[1d6 per two caster Levels] for a blast.

#pagebreak()

#let fmt(r) = {
  let comp = r.at(6)
  if comp == "" {
    [#strong(r.at(0)) #r.at(5)]
  } else {
    [#strong(r.at(0)) #r.at(5) #emph([Component: #comp.])]
  }
}
#let data = csv("spells.csv").slice(1)

#let classes = (
  ("Cleric", "Cleric Spells"),
  ("Magic-User", "Magic-User Spells"),
)

#for (key, label) in classes {
  heading(level: 1, label)
  for lvl in ("1", "2", "3") {
    let rows = data.filter(r => r.at(1) == key and r.at(2) == lvl).sorted(key: r => r.at(0))
    if rows.len() > 0 {
      heading(level: 2, "Level " + lvl)
      list(..rows.map(fmt))
    }
  }
}
