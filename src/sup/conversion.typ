#import "../../lib/24xx.typ": *

#show: xx.with(
  title: "AX&X: Out of the Old Books",
  subtitle: "Bring the first edition across. A conversion supplement for AX&X.",
  cols: 1,
)

= Why Convert

AX&X is a refit of the original advanced rules, so the shelves of old modules, monsters, and spells are still playable at an AX&X table. This supplement is the bridge. First a handful of formulas turn an old stat block into one you can run; then a line-by-line map shows where AX&X parts ways with the first edition, so you know what to change and what to leave alone. Read the map once, keep the formulas to hand, and almost any old adventure drops in.

= The Conversion

Most of it is a few rules and a shrug.

- #item[Armor Class][The old descending AC becomes #k[19 minus the old number]. AC 2 is 17, AC 5 is 14, AC 8 is 11.]
- #item[Hit Dice][Hit Dice carry over whole. A creature keeps its HD, attacks at #k[+ HD], and saves at #k[10 + HD].]
- #item[Hit Points][Old monster HP work as printed, or reroll at #k[5 per HD].]
- #item[Saving Throws][Drop the old categories. Pick the AX&X save that fits the threat: #k[Body] for poison, death, and petrification; #k[Dodge] for breath, blasts, and falling; #k[Will] for magic and the mind. Save against the effect, not the thing that delivers it. An old save-or-die becomes a save at 10 + HD, or a condition. Reading the Old Saves, below, maps the five old categories in full.]
- #item[To Hit][No matrices. Everyone rolls #k[1d20 + Attack Mod vs AC]; a monster attacks at #k[+ HD]. A creature with several attacks keeps them, one roll each.]
- #item[The Shrug][When a number has no clean home, call a Check at 12+ and move on. The old books are a quarry, not scripture.]

= Where AX&X Parts Ways

The left is the old way, the right is AX&X.

#table(
  columns: (auto, 1fr, 1.2fr),
  stroke: (y: 0.4pt + luma(80%)),
  inset: (x: 4pt, y: 4pt),
  table.header([Area], [1st Edition], [AX&X]),
  [Ability modifiers], [Different table per ability, with breakpoints at 15 to 18], [One table for all six. 3d6 maps to -3 through +3.],
  [Ability checks], [Not a core rule. Roll under the score when used at all], [1d20 + modifier, 12+. Class Checks add Level.],
  [Saving throws], [Five categories, class tables by level, roll over], [Three saves tied to CON, DEX, and WIS. 1d20 + half Level + modifier, 12+, or 10 + HD of the source if higher.],
  [Monster saves], [Save as a Fighter of equal HD], [1d20 + HD, 10 + the caster's Level or higher.],
  [Armor Class], [Descending, 10 to -10, with to-hit matrices], [Ascending. Attack is 1d20 + Attack Mod vs AC. DEX adds to AC only at 16+ (+1) or 18 (+2).],
  [Attack progression], [Class matrices stepped every few levels], [A track bonus plus STR or DEX: Warrior +Level, Specialist and Priest +half Level up, Mage +half Level down. Monsters attack at + HD.],
  [Hit points], [Rolled at level 1, CON bonus only at 15+], [Maximum Hit Die at level 1. CON modifier applies to every Hit Die.],
  [Classes], [Eleven classes with subclasses and level limits], [Six: Fighter, Barbarian, Ranger, Cleric, Thief, Magic-User. More in the Classes supplement.],
  [Race], [Seven races with ability adjustments, class limits, level caps, and multi-classing], [Five kindred. Any kindred, any class. One trait each. No limits.],
  [Alignment], [Nine alignments], [Law, Neutrality, Chaos from the original three-fold scheme.],
  [Weapon proficiency], [Proficiency slots, non-proficiency penalties, weapon vs armor table, speed factors], [Weapons outside the class list attack at -2. Weapons are blunt, edged, or piercing for resistances.],
  [Weapons and armor], [Dozens of entries with individual damage and cost], [Light, medium, heavy, and missile. Light, medium, heavy armor, and shield.],
  [Encumbrance], [Weight in gold pieces], [Item slots equal to STR. A heavy hoard of coin costs slots at the GM's call, about one per 100.],
  [Initiative], [Side-based d6 with segments, weapon speed, and casting time], [Side-based d6 each round, or as the GM judges. Ties act at once.],
  [Disengaging], [Fighting withdrawal; fleeing melee draws a free attack], [No opportunity attacks. Withdraw breaks off at half speed with no parting blow; a flee draws one.],
  [Spell disruption], [Any damage during casting time], [Damage earlier in the round loses the spell.],
  [Spell levels], [Nine Magic-User levels, seven Cleric levels], [Three levels in the text. Slots follow the Magic-User progression to level 6, one more slot per level after.],
  [Spell lists], [Hundreds of spells], [A starter list in the core; about seventy spells across three levels in the Spellbook. The Improvise rule and this supplement cover conversion.],
  [Turn Undead], [Matrix of Cleric level against undead type, with 2d6 result], [One roll: 1d20 + Level + WIS, 10 + HD or higher. Turns 2d6 HD, or destroys when 3 levels above.],
  [Experience], [Gold and monster XP by table, prime requisite bonus, training cost to level], [1 GP is 1 XP. 25 XP per monster HD. 100 XP times depth for a first visit. Level 2 by track, 1,500 to 2,500, doubling after. No training.],
  [Death], [Dead at -10, or 0 with optional rules, resurrection survival rolls], [0 HP triggers a Brush with Death roll (1d6, +1 per earlier Brush that day, 6+ Slain). Slain, Maimed, and Petrified are permanent unless the GM supplies a cure, though a maiming can mend over weeks if the party escapes the dungeon, by the downtime supplement.],
  [Healing], [1 HP per day of rest], [Bind Wounds 1d4 once per day, one Hit Die per night, full after a week in town. Convalescence and living off the land are in the downtime supplement.],
  [Conditions], [Described per spell or monster], [Eight named conditions, each with one source and one effect.],
  [Reaction], [Percentile roll with CHA adjustments], [2d6 + CHA, three bands.],
  [Morale], [Percentile morale checks with many modifiers], [1d6, flee or yield on 1 to 3, checked at first loss and at half strength.],
  [Wandering monsters], [Varies by level, commonly 1 in 6 every three turns], [1 in 6 every three turns. Noise forces a roll at once on 1 to 2.],
  [Dungeon stocking], [d20 room contents table in the appendix], [1d6: empty, monster, trap or trick, treasure.],
  [Treasure], [Treasure types A to Z by monster], [From stocking. Defeated monsters carry coin on a 1 to 2, otherwise XP only.],
  [Magic items], [Hundreds, many as pluses], [+1 weapon and armor, two potions, scrolls, and six named items with a cost each.],
  [Hirelings], [Henchmen, hirelings, loyalty, and morale subsystems], [Zero-level hirelings for a wage and leveling henchmen for a share, loyalty by one CHA check and morale. The Funnel supplement.],
)

= Spells Past Level 3

The core runs spells of levels 1 to 3. To carry a campaign further, an old spell of a given level opens at #k[twice that level minus one]: 4th-level spells at caster Level 7, 5th at Level 9, and up. Convert any old spell by giving it one save from Body, Dodge, or Will, a duration (one fight, 6 turns, a Day, or a stated span), and, for a blast, damage near #k[1d6 per two caster Levels]. The Spellbook supplement holds the native list and its conventions.

= Reading the Old Saves

AX&X keeps three saves where the first edition kept five. The old five sorted by how an attack arrived; AX&X sorts by what the attack does to you: body, footing, or mind.

Be plain about the lineage. This effect-based split is close to third edition's Fortitude, Reflex, and Will. AX&X takes that structure and keeps old-school names for it. To run an old monster or spell, map its save by this table, or name the AX&X save that fits and roll.

#table(
  columns: (auto, 1fr),
  stroke: (y: 0.4pt + luma(80%)),
  inset: (x: 4pt, y: 4pt),
  table.header([Old category], [AX&X save]),
  [Paralyzation, Poison, Death, Petrification, Polymorph], [Body],
  [Breath Weapon], [Dodge],
  [Rod, Staff, Wand], [By the effect: blast Dodge, charm Will, flesh-to-stone Body],
  [Spell], [By the effect: Will for the mind, Dodge for a blast, Body for poison or withering],
)

Two old threats had no save: a fall (now a Dodge save to halve it) and energy drain (now a Body save vs the Drain keyword). Save-or-die becomes a save at 10 + HD.
