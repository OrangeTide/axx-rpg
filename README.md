# AX&X

A two-page OSR refit of Advanced Dungeons & Dragons 1st Edition. Page one is the
player's game: character creation, the core roll, time, exploration, encounters,
combat, healing, and conditions. Page two is the GM's game: magic, advancement,
dungeon procedure, and the tables. The layout borrows the terse two-page format
of Jason Tocci's 24XX games. The rules come from somewhere else.

The two-page core runs a dungeon crawl, but that is the starting point, not the
whole game. The supplements open it into the sandbox and overland play that light
and medium systems are usually run as: travel by land, sea, and sky, factions and
downtime, mass battle, hex-crawling a wilderness, and the rare encounters waiting
out in it.

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

## Converting from 1st Edition

AX&X is a refit of the original advanced rules, so old modules, monsters, and
spells convert straight across. The formulas that turn an old stat block into an
AX&X one, and the line-by-line map of where AX&X departs from the first edition,
live in the conversion supplement, *Out of the Old Books* (`src/sup/conversion.typ`).
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
- **Treasure types and gem tables.** The 1d6 Treasure table and the stocking
  roll do the work.
- **Secondary skills, languages by INT table, and aging.** INT lists lore and
  languages and leaves the details to the GM.
- **Stronghold and domain play.** Building a castle, attracting a following, and
  ruling a domain are not detailed yet. The Lifepath (Freehold, Warrant), Warband,
  and Factions supplements lean toward it; the rest is the GM's to run for now.
- **Movement rates by race and encumbrance bands.** Move is 30 ft, or 20 ft in
  heavy armor.
- **Resurrection and raise dead.** Death is permanent unless the GM provides a
  cure. Brush with Death and replacement characters do the rest.

## Known tensions

- Saves still improve with Level while the target stays 12. The half Level rate
  and creature targets slow this but do not stop it past level 6.
- The spell slot line follows the Magic-User table for both classes, so Clerics
  gain slots slightly slower than in 1st Edition at levels 5 and 6.
- Monster XP at 25 per HD is low by design, so that treasure drives play.
  Groups that want fights to pay should raise it.

## Core and supplements

The project splits into a small core and a set of supplements, each its own PDF.

- **Core.** `src/axx.typ` is the whole game on two pages. It holds only what every
  session needs: character creation, the core roll, time, combat, healing,
  conditions, a starter spell and monster list, and the dungeon procedure. The
  two-page budget is a hard constraint, not an accident.
- **Supplements.** `src/sup/*.typ` carry everything that would crowd the core: a
  lifepath system, zero-level funnels with hirelings and henchmen, travel,
  downtime and healing, the full bestiary, the spellbook, equipment, combat and
  tactics, mass combat with warbands, factions, the campaign Doom Clock, and a
  guide to converting first-edition material. Each is a standalone PDF in the same
  house style.
- **Adventures.** `src/adv/*.typ` are standalone modules, also in the house style,
  sharing one structure (hook, three acts, a choice, rewards, threats).
- **Master data.** The CSV files in `src/sup/` are the source of record for game
  data: `bestiary.csv`, `equipment.csv`, `magic.csv`, and `spells.csv`. The
  bestiary and spellbook supplements generate their reference pages straight from
  these files with Typst's `csv()`, so the data lives in one place and adding a
  row adds an entry.

### What goes where

The dividing line is space and universality. A rule earns a place in the core only
if every session uses it and it fits in one line. Anything that adds a subsystem, a
long list, or flavor goes to a supplement, where space is cheap. Some worked
decisions:

- The core carries a starter spell and monster list; the full compendiums are
  supplements. The core text and the supplements share the same data files.
- Spell components stay out of the core. They live as an optional column in
  `spells.csv`, rendered only in the spellbook, so the flavor is kept without
  spending core space. Costly ones double as treasure sinks.
- Each caster works through one focus object (spellbook, holy symbol), not a
  per-spell component list. That is the core's answer to components.
- When a material matters in play, it becomes a gear item (holy water, blade
  poison), not a component entry.
- Tactical depth stays out of the core. Positioning, charging, grappling,
  terrain, and ranged nuance live in the Combat & Tactics supplement, so the core
  keeps its beginner-friendly four-line fight.

## Files

- `src/axx.typ`: the core game. Each `.typ` under `src/` becomes a PDF under `build/`.
- `src/adv/`, `src/sup/`: adventures and supplements.
- `lib/24xx.typ`: the page style and helpers (`xx`, `rolltable`, `item`, `k`, `bar`).
- `fonts/`: D-DIN (SIL OFL) and Roboto Condensed (Apache 2.0) for the body and
  chrome; Goudy Bookletter 1911, Sorts Mill Goudy, and Courier Prime (all SIL
  OFL) for titles, section heads, and the zine index.

## Building

    make            build all PDFs into build/
    make png        render page previews into build/
    make watch      rebuild on change (SRC=src/other.typ to pick a file)
    make fonts      confirm Typst sees the bundled fonts
    make clean

Requires `typst` (0.14 or newer) and `make`.
