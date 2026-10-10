# Supplements and master data

This directory holds supplement material and the master data lists for AX&X.

## Master data (CSV)

These CSV files are the source of record for game data. The tables printed in the
game and the adventures should be checked against them, and future tooling can
generate stat blocks or tables from them.

- `bestiary.csv`: every monster, from the core Threat table and the published
  adventures. The `source` column says where each one appears.
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

## Planned

- A level-0 funnel supplement (see the project backlog).
