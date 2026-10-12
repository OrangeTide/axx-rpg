# Supplements and master data

This directory holds supplement material and the master data lists for AX&X.

## Master data (CSV)

These CSV files are the source of record for game data. The tables printed in the
game and the adventures should be checked against them, and future tooling can
generate stat blocks or tables from them.

- `bestiary.csv`: every monster, from the core Threat table, the published
  adventures, and a roster of common setting-neutral creatures. The `source`
  column says where each one appears, and the `type` column groups them
  (humanoid, beast, undead, ooze, and so on). `bestiary.typ` reads this file and
  generates the stat blocks, so adding a row adds a monster to the book.
- `equipment.csv`: weapons, armor, consumables, tools, and class gear, with cost
  in gold pieces and item slots.
- `magic.csv`: magic items, both the generic treasure items and the one-of-a-kind
  named items with their drawback. `magic.typ` reads this file and generates the
  item roster, so adding a row adds an item.
- `occupations.csv`: the zero-level past lives, each with a knack and the one odd
  thing it left behind. `funnel.typ` reads this file and generates the Occupations
  table, so adding a row adds a past life to the funnel.
- `spells.csv`: the spell compendium, by class and level, with the save a target
  rolls and the damage type where one applies. `spells.typ` generates the Cleric,
  Magic-User, and Druid entries; `classes.typ` also prints the Druid list beside
  the class. Adding a row adds a spell.

The build only compiles `.typ` files, so these CSV lists are data, not published
pages. They stay untouched by `make`.

## Conventions

- `hd` may be a fraction, such as `1/2`. `atk` is the attack bonus and equals HD.
- Blank cells mean the value does not apply, not zero. A weapon with no slot entry
  takes no slot.
- Fields that contain commas are quoted.

## Supplements

Each builds to a standalone PDF in the shared house style.

- `lifepaths.typ`: the lifepath character supplement, playing the years before
  the dungeon.
- `funnel.typ`: zero-level funnels, hirelings, and henchmen, all sharing one
  level-0 baseline.
- `travel.typ`: the travel and journey supplement, covering overland, sea, and
  airship crossings.
- `downtime.typ`: downtime, healing and convalescence, and living off the land.
- `equipment.typ`: the equipment shop, with prose on gear and a listing generated
  from `equipment.csv`.
- `combat.typ`: the combat and tactics supplement, with positioning, maneuvers,
  and terrain.
- `warband.typ`: mass combat, running a crowd as one combatant by Hit Dice.
- `factions.typ`: factions, territory, and standing, generated from `factions.csv`.
- `doom.typ`: the Foretold Doom, a campaign countdown over the whole game.
- `conversion.typ`: converting first-edition material, with the deviation map and
  the stat-block formulas.
- `bestiary.typ`: the bestiary. Page one is the monster rules and the ability
  glossary; the stat blocks that follow are generated from `bestiary.csv`.
- `spells.typ`: the spellbook. Page one is the magic rules and casting
  conventions; the spell entries that follow are generated from `spells.csv`.
- `magic.typ`: Relics and Wonders, the magic-item reference. Page one is the
  item rules; the roster of common finds and named relics is generated from
  `magic.csv`.
- `classes.typ`: More Classes, four classes on the three tracks (Druid, Paladin,
  Monk, Bard), with the Druid's nature spells generated from `spells.csv`.
