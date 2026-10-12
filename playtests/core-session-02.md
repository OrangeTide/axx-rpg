# AX&X Solo Playtest, Session 02

A solo, GM-and-players-both run of the **core rules only** (`src/axx.typ`), under
the current rules. This is a controlled re-run of Session 01: the same dungeon and
the same four challenges, but a fresh party rolled under the current rules, and
all live dice (surprise, initiative, combat) rolled anew. To make it a true A/B
test, the monster HP values are the exact ones Session 01 used (ghoul 10; orcs
9/5/5; skeletons 2/6/5; Warden 40); only the player characters and the live dice
differ. Every die was a real shell roll, quoted inline as `[dice] = total`.

## Why the numbers differ from Session 01

Several rules changed since Session 01, and all of them cut against the party:

- **Light armor is AC 11, not 13.** Session 01 treated light armor as AC 13, so
  everyone reached AC 14 cheaply. Under current gear, light armor is AC 11,
  medium 14, heavy 16.
- **The DEX AC edge needs 16+.** It is +1 at DEX 16-17, +2 at 18, and nothing
  below. Session 01 added full DEX to AC, so a DEX 14 thief sat at AC 14; now the
  same thief is AC 11.
- **Attack is track plus ability only.** No flat class bonus on top. A Level 1
  Warrior is +1 + STR, Expert and Priest +1, Mage +0. Session 01 gave Fighters +3
  at Level 1; this Fighter is +1.
- **Initiative rerolls every round** (Session 01 rolled it once per fight).
- **The Brush with Death table is reordered.** 1 is the best result (Close Call),
  6 is Slain, and the roll takes +1 for each earlier Brush that day, so 6+ is
  always Slain. Session 01 read 6 as the good result.
- **The ghoul is claw/claw/bite**, three attacks a round, each forcing the
  paralysis save. Session 01 ran it as a single attack.

The combined effect is a party with lower AC, lower accuracy, a deadlier Brush
table, and a monster set that hits more often and crits harder.

## The Party

Four characters, abilities rolled 3d6 in order. Modifier table: 3 = -3, 4-5 =
-2, 6-8 = -1, 9-12 = 0, 13-15 = +1, 16-17 = +2, 18 = +3. Gold rolled 3d6 x 10 and
spent on gear, as Session 01 did.

### Orsible, Human Magic-User (Neutral)

- Rolls: STR `[2 1 3]`=6 (-1), DEX `[5 2 2]`=9 (0), CON `[6 1 2]`=9 (0), INT `[6 3 1]`=10 (0), WIS `[5 6 5]`=16 (+2), CHA `[1 6 1]`=8 (-1).
- Human +1 went to CHA (8 to 9), the only score a single point could nudge across a modifier line. It changed nothing else.
- HP 4 (max d4 + CON 0). AC 10 (no armor). Melee -1 (Mage +0, STR -1), dagger 1d4-1 (min 1).
- **Slots at Level 1: 1.** INT 10 is +0, so there is no bonus Magic-User slot. Spellbook holds Magic Missile and Sleep, but only one can be prepared per day.
- Saves: Body 1d20+0, Dodge 1d20+0, Will 1d20+2, plus +2 vs magic.
- Gold `[4 2 3]`x10 = 90. Spellbook 15, dagger 2, rations 5, four oil flasks 8, torches 1, rope 1. Kept the rest as coin.
- Tie `[2]` = Enemy. Home `[2]` = the river shires.

The headline: with INT 10 this Magic-User gets a single spell slot. Session 01's
Orsible rolled INT 18 and carried two spells, Magic Missile and Sleep. This
Orsible brings one spell for the entire day.

### Hurgo, Half-Orc Fighter (Neutral)

- Rolls: STR `[1 6 2]`=9 (0), DEX `[4 5 1]`=10 (0), CON `[2 4 3]`=9 (0), INT `[2 2 5]`=9 (0), WIS `[2 4 6]`=12 (0), CHA `[2 1 6]`=9 (0). Every modifier is zero.
- Half-Orc: +1 melee damage, sees 60 ft in the dark.
- HP 8 (max d8 + CON 0). AC 15 (medium 14 + shield 1). Move 20 ft in medium armor. Melee +1 (Warrior +1, STR 0), sword 1d6+1 (STR 0 + Half-Orc 1). +2 Body saves.
- Gold `[6 3 3]`x10 = 120. Medium armor 75, shield 10, sword 10, rations 5, spikes and hammer 3 (a blunt backup), rope 1, torches 1, two oil 4. 11 left.
- Tie `[5]` = Patron. Home `[3]` = the river shires.

### Branna, Dwarf Cleric (Lawful)

- Rolls: STR `[2 3 1]`=6 (-1), DEX `[2 3 6]`=11 (0), CON `[2 3 6]`=11 (0), INT `[6 2 5]`=13 (+1), WIS `[2 6 1]`=9 (0), CHA `[4 3 4]`=11 (0).
- Dwarf: +2 Body saves, darkvision 60 ft, notes stonework and slopes.
- HP 6 (max d6 + CON 0). AC 14 (medium, no room for a shield after the holy symbol). Move 20 ft. Melee +0 (Priest +1, STR -1), mace 1d6-1 blunt. +2 Will (class), +2 Body (kindred).
- **Slots at Level 1: 1.** WIS 9 is +0, so no bonus Cleric slot. Prepared Cure Light Wounds. Turn Undead is 1d20 + 1 + 0.
- Gold `[4 4 4]`x10 = 120. Holy symbol 25, medium armor 75, mace 10, rations 5. 5 left.
- Tie `[5]` = Patron. Home `[3]` = the river shires.

### Pip, Elf Thief (Neutral)

- Rolls: STR `[2 1 4]`=7 (-1), DEX `[6 2 6]`=14 (+1), CON `[1 4 2]`=7 (-1), INT `[6 5 1]`=12 (0), WIS `[6 4 3]`=13 (+1), CHA `[4 2 6]`=12 (0).
- Elf: immune to Sleep and Charmed, darkvision 60 ft, spots secret doors 1-2 on 1d6 within 10 ft.
- HP 5 (max d6 + CON -1). **AC 11** (light armor; DEX 14 earns no edge now). Melee +0, dagger 1d4-1. Missile: sling +2 (Expert +1, DEX +1), 1d6. Backstab +4 and double damage vs the unaware. +3 Dodge; DEX Class Checks at +4.
- Gold `[6 5 5]`x10 = 160. Thieves' tools 30, light armor 20, sling and ammo 20, dagger 2, rations 5, rope 1, four oil 8, torches 1. 73 left as coin.
- Tie `[5]` = Patron. Home `[4]` = the deep forest.

Party HP total: 23. Note the spread: Hurgo AC 15 and Branna AC 14 up front, but
Pip AC 11 and Orsible AC 10 behind them. In Session 01 every character stood at
AC 14. The two casters are now soft targets.

## The Adventure

The same job and the same place as Session 01: a patron pays per map of the
**Sunken Crypt**, cracked open by the spring floods under the river shires. Travel
is off-limits for a core run, so the march is one sentence and the party goes down
the broken stair into knee-deep water.

The encounters are held identical to Session 01, in the same order: the Ghoul, the
Orc Patrol, the Skeleton Guards, and the Drowned Warden.

## First Encounter: The Ghoul

> Ghoul. HD 2, HP 10, AC 14, Atk +2, claw/claw/bite (1d3 each). Any hit: Body save
> vs 12 or Paralyzed. Mindless. Saves at 12.

**Surprise, 1d6 each: party `[1]`, ghoul `[5]`.** The party is caught off guard and
loses the first round; the ghoul is not. Where Session 01 had a mutual flinch,
here the ghoul gets a free round.

**Surprise round.** The ghoul lunges at Hurgo in front (AC 15): claw `[11]`+2 = 13
miss, claw `[7]`+2 = 9 miss, **bite `[16]`+2 = 18 hit** for 1d3 = 3. Hurgo 8 -> 5,
and the hit forces a Body save: `[3]`+2 = **5 vs 12, failed. Hurgo is Paralyzed**
(1d4 = 4 rounds), and so Helpless: attacks on him now hit automatically.

### Round 1 (ghoul 10, initiative party `[2]` vs ghoul `[3]`, ghoul first)

- The Mindless ghoul gorges on the paralyzed Hurgo. Three auto-hits (Helpless): 1d3 each = `[2] [3]` and a third moot. Hurgo 5 -> 3 -> **0**. Damage past 0 ignored.
- **Hurgo Brush with Death `[3]` = Shaken.** He surges back to 1 HP, drops his sword, and is Injured until a Haven rest, which means Weakened (-2 to all d20) for the rest of the delve.
- Party's turn: **Branna rolls a natural `[20]`**, crit mace (1d6-1)x2 = (`[5]`-1)x2 = 8, ghoul 10 -> 2. **Orsible's Magic Missile** auto-hits for 1d4+1 = `[5]`+1 = 6, ghoul dead. Pip's sling `[9]`+2 = 11 missed.

**Outcome: ghoul dead in one round, but it cost a Brush with Death.** Hurgo is
alive at 1 HP, weaponless for a beat, and Injured for the rest of the run. In
Session 01 the ghoul whiffed every attack and the party took zero damage. The
difference is the three-attack profile and the lost surprise round: one landed
bite was all it took to paralyze the front-liner and nearly kill him.

Between fights, Branna spends her one slot on Cure Light Wounds for Hurgo: 1d8 =
`[6]`, Hurgo back to 7/8. He is still Injured and Weakened; the spell mends HP, not
the condition. Orsible's one spell is already gone. The party now has no magic
left and three encounters to go.

## Second Encounter: The Orc Patrol

Held identical: three orcs, HP 9/5/5. Current stats: HD 1, AC 13, Atk +1 (1d8).

- **Surprise, 1d6 each: party `[5]`, orcs `[6]`.** Neither surprised.
- **Reaction, 2d6 + CHA: `[6 6]` = 12**, friendly for now. As in Session 01 the party wants the chamber, the parley breaks, and because neither side was surprised there is no free round.

### Round 1 (initiative party `[3]` vs orcs `[4]`, orcs first)

- Two orcs crowd Hurgo, one takes Branna. Orc A `[16]`+1 = 17 hits Hurgo (AC 15) for 1d8 = 5, Hurgo 7 -> 2. **Orc C natural `[20]`** crits Hurgo, 1d8 = `[8]`, doubled = 16, Hurgo 2 -> **0**. Orc B `[2]` misses Branna.
- **Hurgo Brush with Death.** This is his **second** Brush today, so +1: raw `[6]` + 1 = **7. Slain.** Hurgo is dead, killed before he could swing. A raw 6 alone would have been Slain regardless.
- Party's turn (Hurgo down): **Branna rolls a natural `[20]`** against Orc B, crit mace (1d6-1)x2 = (`[1]`-1)x2, minimum 2, Orc B 5 -> 3. Pip's sling `[13]`+2 = 15 hits Orc C for 1d6 = `[3]`, Orc C 5 -> 2. Orsible's oil `[2]` missed.
- End of Round 1: Hurgo is Slain; Orcs stand at A 9, B 3, C 2. No orc has fallen yet, so no morale check. The party is down to three, no tank, no spells.

### Round 2 (initiative party `[6]` vs orcs `[1]`, party first)

- Branna `[9]`+0 miss, Pip sling `[5]`+2 = 7 miss, **Orsible's oil `[17]`+0 = 17 hits** Orc C for 1d6 fire = 6. Orc C (2) is dead, the group's first loss.
- **Morale, 1d6: `[3]`, the orcs break.** With the friendly reaction, the survivors Orc A (9 HP) and Orc B (3 HP) throw down and yield rather than flee. Branna's contingent Brush `[6]` is void; she was never struck.

**Outcome: the orcs yield, but Hurgo is dead.** The tank is gone, Orsible has no
spells, Branna has no spells, and two encounters remain. A real table would very
likely withdraw here with the loot and the body. To complete the A/B I press on,
which is exactly where Session 01 and Session 02 part ways.

Loot, held identical to Session 01: the chamber held a **Coin Cache, 600 GP**.

## Third Encounter: The Skeleton Guards

Held identical: three skeletons, HP 2/6/5. Current stats: HD 1, AC 13, Atk +1
(1d6). Mindless, resistant to edged and piercing, vulnerable to blunt.

The party is down to Branna (mace, blunt, double damage), Pip (sling and dagger,
both piercing, so halved here and nearly useless), and Orsible (1 spell gone, a
dagger and three oil flasks). The plan is Branna and the oil do the work, Pip
Aids.

- **Surprise, 1d6 each: party `[2]`, skeletons `[4]`.** The party is caught off guard a second time and loses the first round; the skeletons are not.

**Surprise round.** Three skeletons rise from the vault floor and each seizes a
body. S1 `[4]`+1 = 5 misses Branna (AC 14). **S2 natural `[20]`** crits Pip (AC 11),
1d6 = `[6]`, doubled = 12, Pip (5 HP) -> **0**. S3 `[14]`+1 = 15 hits Orsible
(AC 10) for 1d6 = 5, Orsible (4 HP) -> **0**. Both casters fall before the party
can act.

- **Pip Brush with Death `[6]` = Slain.** Pip is dead.
- **Orsible Brush with Death `[3]` = Shaken.** 1 HP, drops his gear, Injured.

### Round 1 (initiative party `[1]` vs skeletons `[3]`, skeletons first)

Branna (6 HP, untouched) is the only one still fighting, with an unconscious-grade
casualty count already at two dead. There is no winning this, let alone the boss
beyond it. She grabs Orsible and runs for the stair. The skeletons, having won
initiative, strike as the two break away:

- On Branna (AC 14): S1 `[11]`+1 = 12 miss, S2 natural `[1]` miss.
- On Orsible (AC 10, 1 HP): **S3 natural `[20]`** hits. Orsible -> 0 again.
- **Orsible Brush with Death**, his second today, +1: raw `[3]` + 1 = **4 = Grievous Wound.** Unconscious until healed by magic or sleep, Injured until a Haven. He must be carried.

Branna hauls the unconscious Orsible up the stair. The skeletons are Mindless
vault wardens and do not pursue beyond their chamber. The party is routed.

## Fourth Encounter: The Drowned Warden

**Never fought.** The party never reached the boss. Two characters are dead and a
third is unconscious; the lone survivor is in full retreat.

## Outcome and Aftermath

- **Hurgo: Slain** (orc crit, second Brush).
- **Pip: Slain** (skeleton crit, surprise round).
- **Orsible: Grievous Wound**, unconscious, Injured, carried out.
- **Branna: unhurt**, 6 HP, the only functional survivor.
- The Drowned Warden and its reliquary are untouched.

XP, such as it is:

- Ghoul defeated: 25 x 2 HD = 50.
- First visit, depth 1: 100.
- Orc Patrol broken: 3 x (25 x 1 HD) = 75.
- Orc Coin Cache: 600 GP, banked if Branna reaches town.
- Skeletons: not defeated, the party fled. 0.
- Boss: never reached. 0.

Combat and exploration XP 225, plus 600 gold carried out, split between one
able survivor and one unconscious one. Session 01, by contrast, cleared all four
encounters for about 1,400 XP and lost no one until a single maiming in the boss
fight.

## Methodology Mistakes

Several mistakes in how this playtest was run, separate from the rules, inflated
the body count and muddy the rules findings. Recording them so the next run is
cleaner.

1. **Classes were assigned before the dice, producing mismatched characters.** The
   four archetypes were fixed first, then 3d6 was rolled in order under them. The
   rolls fought the classes. Orsible, the Magic-User, rolled INT 10 and WIS 16, a
   Cleric's spread. Branna, the Cleric, rolled INT 13 as her best score, a
   Magic-User's. The result was a Magic-User who could barely cast and a Cleric
   with a wasted prime score. The correct order is to roll 3d6 first, then name and
   assign the class that fits the numbers. Session 01 happened to roll a strong INT
   for its Magic-User; this run did not, and forcing the class onto a poor roll is
   a methodology artifact, not a rules result.

2. **No replacement characters were offered after a death.** By the core rule, a
   player whose character dies may bring in a new one at the next room or scene.
   When Hurgo died, the player should have rolled a fresh character to enter the
   next encounter, keeping the party at four. Instead the run continued
   short-handed, which compounded into the rout. The corollary a GM would enforce:
   a replacement who joins only in time to retreat earns no XP from that delve, not
   even a share of the gold carried back. The reward belongs to the characters who
   did the work.

3. **The GM adjudication was too aggressive against downed and helpless targets.**
   The Mindless monsters immediately piled onto paralyzed or dropped characters and
   fanned out to the soft back line. A real GM has latitude here. Paralysis lasts
   only 1d4 rounds and a helpless target is going nowhere, so a monster has no
   pressing reason to keep mauling it; turning to the standing threats is at least
   as likely. Had the ghoul done that, it would have stood exposed to the rest of
   the party, an opening that matters a great deal for a larger or replenished
   party. This run resolved every such choice for maximum lethality.

Taken together, these three turned a hard run into a near-total party kill. The
rules changes (lower AC, the old Brush table) made the party genuinely more
fragile, but the methodology is what ran up the death count. The next run should
roll stats first and assign classes to fit, offer a replacement on a death, and
adjudicate monster targeting as a GM would rather than always for the kill.

## Playtest Notes

The same party build and the same dungeon that Session 01 walked through with zero
deaths produced two dead, one grievously wounded, and a rout before the boss. Some
of that is variance; much of it is the rules changes. Separating the two:

1. **AC fell and it decided the game.** Light armor is now AC 11 and the DEX edge
   needs 16+, so the two casters stood at AC 10 and 11 where Session 01 had them
   at 14. Every monster attacks at + HD, unchanged, so the same orcs and skeletons
   that could not touch AC 14 now connect on the casters routinely. The AC
   question flagged in Session 01 notes 3 and 8 has been answered hard in the
   other direction: the party is now very hittable.

2. **The Brush with Death table is lethal, and the +1 compounds.** With 6 = Slain
   and a +1 for each earlier Brush that day, a character who goes down twice is
   rolling on a table where 5 and 6 both kill. Hurgo's second Brush was a raw 6
   (Slain outright); Pip's first was a raw 6. Two of the three deaths were the
   die, but the table makes a second trip to 0 HP far deadlier than the first,
   which punishes exactly the battered party that most needs a break.

3. **Monster natural 20s were the proximate cause, and low party HP made them
   fatal.** Three monster crits (orc on Hurgo, skeleton on Pip, skeleton on
   Orsible) drove every casualty. A doubled 1d8 or 1d6 is 12-16 damage, which is a
   one-shot kill against 4-8 HP characters. Session 01 saw monster crits too, but
   against AC 14 the monsters rarely rolled to begin with, and the party's HP was
   effectively the same. The lever is that lower AC lets more attacks land, and
   each landed crit is now a corpse.

4. **A low-INT Magic-User is nearly spell-less, though the roll-order mistake made
   it worse.** INT 10 gave Orsible one slot for the whole day. He spent it on the
   ghoul and had nothing for the orcs, the skeletons, or the boss. Session 01's
   Orsible rolled INT 18, carried Magic Missile and Sleep, and Sleep alone would
   have ended the orc fight. Part of this is the methodology mistake above: had the
   classes been assigned to the rolls, the WIS 16 roll would have been the Cleric
   and the Magic-User would have landed on a better INT. But the underlying lever
   is real: gating the bonus slot behind INT 13+ means a bad INT roll produces a
   Magic-User who throws oil flasks. Worth deciding whether that is the intended
   floor or whether Mages want a second slot by default.

5. **Surprise bit twice, and the per-round rule did not save the party.** The
   party rolled `[1]` then `[2]` on surprise and handed two monster groups a free
   round each. The ghoul used its free round to paralyze the tank; the skeletons
   used theirs to drop both casters. A 1-in-3 chance to lose the opening round is
   a real tax when the opening round can be two crits. Per-round initiative then
   kept handing the monsters the first action in the rounds that mattered.

6. **Helpless and paralysis are not actually in tension with Brush.** This was
   first flagged as a possible double-kill: a paralyzed, Helpless character auto-hit
   to death. On reflection it is not a rules gap. Paralysis lasts only 1d4 rounds,
   and whether a monster keeps mauling a downed, helpless target or turns to the
   standing threats is a GM call, not a rule. The lethality here came from choosing
   to keep attacking the downed, which is the methodology point above, not from any
   missing rule.

7. **The Human +1 rarely does anything.** Orsible's +1 could only move one score
   across a modifier line (CHA 8 to 9), and that score did not matter to him. The
   mod table's breakpoints are 2 to 3 points wide, so a single point lands inside
   a band most of the time. The Human trait reads as strong but usually changes no
   modifier at all. Worth noting against the other kindred traits, which always do
   something.

8. **The damage-type puzzle still works, when there is anyone left to solve it.**
   Branna's blunt mace and Orsible's fire were the right answers to the skeletons,
   exactly as in Session 01. The problem was that the party reached the skeleton
   vault with no tank, no spells, and two soft targets, so the puzzle never got
   played; the skeletons simply alpha-struck the casters in the surprise round.

## Comparison to Session 01, in one line

Identical dungeon, identical monster HP. Session 01: four encounters cleared, zero
deaths until one maiming in the boss fight, about 1,400 XP. Session 02: two dead,
one grievously wounded, routed before the boss, about 225 XP and 600 gold. The
rules in between lowered party AC and accuracy and made the Brush table deadlier,
and that turned a cakewalk into a near-total party kill.

## Suggestions for Review

- **Adopted after this run: the Brush with Death table was revised.** 1-2 are now
  Close Call, Scarred also clears any lingering ailment, and Slain was removed from
  the 1d6 range so only a 7+ (reachable just by stacking a second Brush in a day)
  kills. The next session tests this gentler table. Session 02 above was played on
  the old table.
- The party's defensive floor dropped a lot. If AC 10-11 casters getting one-shot
  by crits is not the intended feel, the remaining lever (beyond the softened
  Brush table) is whether light armor or a basic defense should sit a point higher.
- The INT gate on Magic-User slots turns a bad roll into a near-useless class for
  a whole session. Decide if that is acceptable OSR variance or if the Mage track
  wants a guaranteed second slot.
- **Kindred bonuses are unbalanced**, and a rebalance is on the backlog. The Elf
  and Dwarf traits are strong utility, the Half-Orc trait is a large mechanical
  edge, and the Human and Halfling are the weakest. The Human +1 is a deliberate
  AX&X invention, not a 1e trait, chosen for a simpler experience and level-cap
  system; the project accepts deviating from 1e here. The question is the relative
  strength across kindred, not the +1 itself.
