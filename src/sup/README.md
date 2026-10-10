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
  named items with their drawback.
- `spells.csv`: the spell list, by class and level, with the save a target rolls
  and the damage type where one applies.

The build only compiles `.typ` files, so these CSV lists are data, not published
pages. They stay untouched by `make`.

## Conventions

- `hd` may be a fraction, such as `1/2`. `atk` is the attack bonus and equals HD.
- Blank cells mean the value does not apply, not zero. A weapon with no slot entry
  takes no slot.
- Fields that contain commas are quoted.

## Supplements

- `lifepaths.typ`: the lifepath character supplement. Builds to a PDF.
- `travel.typ`: the travel and journey supplement, covering overland, sea, and
  airship crossings. Builds to a PDF.
- `bestiary.typ`: the bestiary supplement. Page one is the monster rules and the
  ability glossary; the stat blocks that follow are generated from `bestiary.csv`.
  Builds to a PDF.

## Planned

- A level-0 funnel supplement (see the project backlog).
