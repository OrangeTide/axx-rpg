# AX&X

A two-page OSR refit of Advanced Dungeons & Dragons 1st Edition. Page one is the
player's game: character creation, the core roll, time, exploration, encounters,
combat, healing, and conditions. Page two is the GM's game: magic, advancement,
dungeon procedure, and the tables. The layout borrows the terse two-page format
of Jason Tocci's 24XX games. The rules come from somewhere else.

## Design goals

- One roll. Everything a player does is 1d20 plus a modifier against a target
  number, usually 12, or against Armor Class.
- Every rule fits on one line. Anything that needs its own table gets folded
  into a line or dropped.
- Keep the shape of 1st Edition. Six abilities rolled in order, four classes,
  kindred, alignment, Hit Dice, Vancian spells, gold for experience, turns and
  rounds, wandering monsters, morale, and lethal combat.
- Make the GM's side complete. Stocking, depth, reaction, surprise, and treasure
  placement each get a procedure to roll on.

## Where we deviate from AD&D 1st Edition

| Area | AD&D 1st Edition | AX&X |
| --- | --- | --- |
| Ability modifiers | Different table per ability, with breakpoints at 15 to 18 | One table for all six. 3d6 maps to -3 through +3. |
| Ability checks | Not a core rule. Roll under the score when used at all | 1d20 + modifier, 12+. Class Checks add Level. |
| Saving throws | Five categories, class tables by level, roll over | Three saves tied to CON, DEX, and WIS. 1d20 + half Level + modifier, 12+, or 10 + HD of the source if higher. |
| Monster saves | Save as a Fighter of equal HD | 1d20 + HD, 10 + the caster's Level or higher. |
| Armor Class | Descending, 10 to -10, with to-hit matrices | Ascending. Attack is 1d20 + Attack Mod vs AC. |
| Attack progression | Class matrices stepped every few levels | Attack Mod is Level + class bonus + STR or DEX. Monsters attack at + HD. |
| Hit points | Rolled at level 1, CON bonus only at 15+ | Maximum Hit Die at level 1. CON modifier applies to every Hit Die. |
| Classes | Eleven classes with subclasses and level limits | Fighter, Cleric, Magic-User, Thief. |
| Race | Seven races with ability adjustments, class limits, level caps, and multi-classing | Five kindred. Any kindred, any class. One trait each. No limits. |
| Alignment | Nine alignments | Law, Neutrality, Chaos from original D&D. |
| Weapon proficiency | Proficiency slots, non-proficiency penalties, weapon vs armor table, speed factors | Weapons outside the class list attack at -2. Weapons are blunt, edged, or piercing for resistances. |
| Weapons and armor | Dozens of entries with individual damage and cost | Light, medium, heavy, and missile. Light, medium, heavy armor, and shield. |
| Encumbrance | Weight in gold pieces | Item slots equal to STR. Coins fill a slot per 100. |
| Initiative | Side-based d6 with segments, weapon speed, and casting time | Side-based d6 each round. Ties act at once. |
| Spell disruption | Any damage during casting time | Damage earlier in the round loses the spell. |
| Spell levels | Nine Magic-User levels, seven Cleric levels | Three levels in the text. Slots follow the Magic-User progression to level 6, one more slot per level after. |
| Spell lists | Hundreds of spells | Nineteen spells. The Improvise rule covers conversion. |
| Turn Undead | Matrix of Cleric level against undead type, with 2d6 result | One roll: 1d20 + Level + WIS, 10 + HD or higher. Turns 2d6 HD, or destroys when 3 levels above. |
| Experience | Gold and monster XP by table, prime requisite bonus, training cost to level | 1 GP is 1 XP. 25 XP per monster HD. 100 XP times depth for a first visit. Thresholds double from 2,000. No training. |
| Death | Dead at -10, or 0 with optional rules, resurrection survival rolls | 0 HP triggers a 1d6 Injury roll. Slain, Maimed, and Petrified are permanent unless the GM supplies a cure. |
| Healing | 1 HP per day of rest | Bind Wounds 1d4 once per day, one Hit Die per night, full after a week in town. |
| Conditions | Described per spell or monster | Eight named conditions, each with one source and one effect. |
| Reaction | Percentile roll with CHA adjustments | 2d6 + CHA, three bands. |
| Morale | Percentile morale checks with many modifiers | 1d6, flee or yield on 1 to 3, checked at first loss and at half strength. |
| Wandering monsters | Varies by level, commonly 1 in 6 every three turns | 1 in 6 every three turns. Noise forces a roll at once on 1 to 2. |
| Dungeon stocking | d20 room contents table in the DMG appendix | 1d6: empty, monster, trap or trick, treasure. |
| Treasure | Treasure types A to Z by monster | From stocking. Defeated monsters carry coin on a 1 to 2, otherwise XP only. |
| Magic items | Hundreds, many as pluses | +1 weapon and armor, two potions, scrolls, and six named items with a cost each. |
| Hirelings | Henchmen, hirelings, loyalty, and morale subsystems | Two hireling types, a wage, a half share, and one CHA check. |
| Character ties | None | A Ties table and a home roll give each character an NPC and a place. |

## What we leave out on purpose

- **Subclasses and extra classes.** Paladin, Ranger, Druid, Illusionist, Assassin,
  Monk, and Bard. A kindred trait or a named item covers the flavor.
- **Multi-classing and dual-classing.** Any kindred may take any class, which
  removes the reason the elf fighter/magic-user existed.
- **Level limits by race.** Nothing stops a Halfling Fighter at level 4.
- **Psionics.** Cut.
- **Weapon vs armor adjustments, speed factors, and segments.** Damage type and
  the flat -2 carry what matters at the table.
- **Percentile thief skills.** Thief skills are Class Checks with DEX at +2.
- **Spell components, casting times, and spell research.** Casting is an action.
  New spells come from scrolls and captured books.
- **Prime requisite XP bonuses, training costs, and name levels.** Experience is
  gold, monsters, and depth.
- **Treasure types and gem tables.** The 1d8 Treasure table and the stocking
  roll do the work.
- **Secondary skills, languages by INT table, and aging.** INT lists lore and
  languages and leaves the details to the GM.
- **Wilderness travel, strongholds, and domain play.** The game is a dungeon
  crawl with a town outside it.
- **Movement rates by race and encumbrance bands.** Move is 30 ft, or 20 ft in
  heavy armor.
- **Resurrection and raise dead.** Death is permanent unless the GM provides a
  cure. The Injury table and replacement characters do the rest.

## Known tensions

- Saves still improve with Level while the target stays 12. The half Level rate
  and creature targets slow this but do not stop it past level 6.
- The spell slot line follows the Magic-User table for both classes, so Clerics
  gain slots slightly slower than in 1st Edition at levels 5 and 6.
- Monster XP at 25 per HD is low by design, so that treasure drives play.
  Groups that want fights to pay should raise it.

## Layout

- `src/axx.typ`: the game. Each file in `src/` becomes `build/NAME.pdf`.
- `lib/24xx.typ`: the page style and helpers (`xx`, `rolltable`, `item`, `k`, `bar`).
- `fonts/`: D-DIN (SIL OFL) and Roboto Condensed (Apache 2.0).

## Building

    make            build all PDFs into build/
    make png        render page previews into build/
    make watch      rebuild on change (SRC=src/other.typ to pick a file)
    make fonts      confirm Typst sees the bundled fonts
    make clean

Requires `typst` (0.14 or newer) and `make`.
