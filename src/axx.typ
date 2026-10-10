#import "../lib/24xx.typ": *

#show: xx.with(
  title: "XD&X",
  subtitle: "An OSR refit of 1st Edition, in the style of 24XX",
  credit: [XD&X is an OSR variation on 1st Edition, not a 24XX game. Page style inspired by 24XX by Jason Tocci, released under CC BY 4.0.],
  cols: 3,
)

= Rules

== Abilities

Roll #k[3d6 in order] for each. Scores give a modifier: #k[3:] -3 #bar #k[4--5:] -2 #bar #k[6--8:] -1 #bar #k[9--12:] 0 #bar #k[13--15:] +1 #bar #k[16--17:] +2 #bar #k[18:] +3.

- #item[STR][Melee attack and damage. Carry a number of item #k[slots] equal to your STR score.]
- #item[DEX][Missile attack. Add to AC.]
- #item[CON][Add to HP rolled for each Hit Die. Body saves.]
- #item[INT][Lore and languages. A Magic-User with INT +1 or better prepares one extra spell.]
- #item[WIS][Perception and Will saves. A Cleric with WIS +1 or better prepares one extra spell.]
- #item[CHA][Parley, reactions, hireling loyalty.]

== The Core Roll

- #item[Check][For a risky action, roll #k[1d20 + Ability Mod] vs #k[TN 12]. Success achieves it. Failure means it fails, or succeeds at a cost. The GM may set TN 9 for easy or TN 15 for hard.]
- #item[Class Check][A check that uses class training (Thief skills, Turn Undead) adds your Level: #k[1d20 + Level + Ability Mod] vs #k[TN 12].]
- #item[Save][A check against a hazard. Roll it as a Class Check: #k[1d20 + Level + Ability Mod] vs #k[TN 12]. Success avoids or halves the effect. A hazard caused by a creature uses TN 10 + its HD, if higher.]
  - #k[Body (CON):] poison, death magic, paralysis, petrification, disease.
  - #k[Dodge (DEX):] breath weapons, wands, traps, falling.
  - #k[Will (WIS):] spells, charm, fear, illusion.
- #item[Natural 20][Always succeeds. Attacks deal double damage.]
- #item[Natural 1][Always fails, and the GM adds a complication.]

== Time

- #item[Turn (10 minutes)][The exploration unit. In one turn the party moves through a few rooms, searches a room, picks a lock, or rests. Every third turn, roll 1d6: on a 1, a wandering monster appears (roll on the Threat table).]
  - #k[Rest:] After five turns of activity the party must rest for one turn or take -2 to all d20 rolls until it does.
  - #k[Torches:] One torch burns for 6 turns (1 hour). A lantern flask burns 24 turns.
- #item[Round (1 minute)][The combat unit. Each combatant moves and takes one action.]
- #item[Day][Ends with 8 hours of sleep and one ration per character. Without the ration, no HP is regained that night and all d20 rolls take -2 until fed.]

== Combat

- #item[Initiative][Each side rolls 1d6 each round. The high side acts first. On a tie, both sides act at once: resolve every action before anyone drops.]
- #item[Action][Attack, cast a spell, use an item, or move again. A character may also retreat; an enemy adjacent to a retreating character gets a free attack.]
- #item[Attack][Roll #k[1d20 + Attack Mod] vs the target's #k[AC]. Attack Mod = Level + class bonus + STR (melee) or DEX (missile). Monsters attack at + HD.]
- #item[Damage][Weapon die + STR for melee. At 0 HP, roll on the Injury table. Damage past 0 is ignored.]
- #item[Casting][A spell takes the caster's action. If the caster took damage earlier in the round, the spell is lost.]
- #item[Helpless][Attacks against a sleeping, paralyzed, or bound target hit automatically.]

== Healing

- #item[Bind Wounds (1 turn)][Once per day, each character regains 1d4 HP. This counts as a rest turn.]
- #item[Sleep (a Day)][Regain HP equal to one roll of your Hit Die + CON. Requires the ration.]
- #item[Safe Haven][A week of rest in town or another safe place restores all HP and ends Injured, unless the Injury result says otherwise.]
- #item[Magic][_Cure Light Wounds_ and Healing Potions restore 1d8 HP at once. _Cure Light Wounds_ also ends Poisoned.]

== Injury

At 0 HP, roll 1d6 on the Injury table. Each result says what your HP becomes. A player whose character dies or is maimed may retire that character and bring in a replacement at the next room or scene, or play on with what is left.

== Conditions

- #item[Poisoned][Take 1d6 damage at the end of each turn and -2 to all d20 rolls. At the end of each turn, make a Body save to end it.]
- #item[Paralyzed][No move or action for 1d4 rounds. Helpless.]
- #item[Asleep][Helpless. Wakes when damaged or after one round of shaking.]
- #item[Petrified][Stone until magic restores you.]
- #item[Frightened][Must flee from the source for 1d4 rounds. -2 to attacks until it ends.]
- #item[Burning][Take 1d6 damage each round until a round is spent dousing the flames.]
- #item[Injured][From the Injury table. -2 to all d20 rolls until healed as the result states.]

== Treasure, XP & Leveling

- #item[Looting][Roll on the Treasure table when searching rooms, chests, or boss enemies.]
- #k[1 GP = 1 XP] once brought safely to town.
- #item[Thresholds][#k[Lvl 2:] 2,000 XP #bar #k[Lvl 3:] 4,000 XP #bar #k[Lvl 4:] 8,000 XP. Each level after that costs twice the one before.]
- #item[Level Up][Roll one more Hit Die of your class, add CON, and add the result to your HP. Attacks and saves already add your Level, so they rise by 1. Casters prepare one more spell per day.]
- #item[Beyond the Tables][A spell of a given AD&D level becomes available at twice that level minus one (2nd level spells at level 3, 3rd at level 5). A new monster has HP of about 5 per HD, attacks at + HD, has AC 11 to 16, and forces saves at TN 10 + HD.]

= Classes, Spells & Equipment

== Classes

Every class starts at Level 1 with the #k[maximum] of one Hit Die + CON, and knows its save specialty.

- #item[Fighter][d8 Hit Die. +2 to attacks. Any weapon or armor. +2 to Body saves.]
- #item[Cleric][d6 Hit Die. +1 to attacks. Blunt weapons, medium or heavy armor. +2 to Will saves. _Turn Undead:_ a Class Check with WIS once per fight; on success, d8 HD of undead flee for 1d4 turns.]
- #item[Magic-User][d4 Hit Die. +0 to attacks. Dagger or staff, no armor. +2 to saves against spells, wands, and staves.]
- #item[Thief][d6 Hit Die. +1 to attacks. Light armor. +2 to Dodge saves. Stealth, locks, and traps are Class Checks with DEX, at +2. _Backstab:_ +4 to attack and double damage against an unaware target.]

== Spells & Magic

Prepare #k[1 spell per Level] each day after sleeping. Casting is an action; see Combat for disruption.

- #item[Cleric Spells][_Cure Light Wounds_ (1d8 HP, ends Poisoned), _Light_ (30 ft radius, 6 turns), _Bless_ (+1 to the party's attacks for one fight), _Protection from Evil_ (+2 AC and saves against one creature type for one fight).]
- #item[Magic-User Spells][_Magic Missile_ (1d4+1 damage, never misses), _Sleep_ (2d4 HD of creatures of 4 HD or less fall Asleep, no save), _Shield_ (+4 AC for one fight), _Invisibility_ (unseen until you attack or cast), _Charm Person_ (Will save or one person treats you as a trusted friend for a day).]

== Gear List

Start with #k[3d6 x 10 GP]. AC is 10 + DEX, or the armor's value + DEX. You carry slots equal to STR; coins fill one slot per 100.

- #item[Weapons][Light (1d4, 1 slot) #k[2 GP] #bar Medium (1d6, 1 slot) #k[10 GP] #bar Heavy, two hands (1d10, 2 slots) #k[15 GP] #bar Bow or sling with ammunition (1d6, 2 slots) #k[20 GP].]
- #item[Armor][Light (AC 13, 1 slot) #k[20 GP] #bar Medium (AC 15, 2 slots) #k[75 GP] #bar Heavy (AC 17, 3 slots) #k[100 GP] #bar Shield (+1 AC, 1 slot) #k[10 GP].]
- #item[Supplies][Rations (7 days, 1 slot) #k[5 GP] #bar Torches (6, 1 slot) #k[1 GP] #bar Lantern and 3 flasks (2 slots) #k[12 GP] #bar Rope 50 ft (1 slot) #k[1 GP] #bar Iron spikes and hammer (1 slot) #k[3 GP] #bar Thieves' Tools (1 slot) #k[30 GP] #bar Holy Symbol #k[25 GP] #bar Spellbook (1 slot) #k[15 GP].]

= Tables & Generators

#rolltable("1d8", "Threat / Encounter", note: [#k[HD] = Hit Dice, #k[AC] = ascending Armor Class, #k[Atk] = Attack Mod and damage. A monster's Attack Mod equals its HD.], (
  item[Goblin Band][HD 1, HP 4, AC 13, Atk +1 (1d6). 1d6 goblins ambush from cover.],
  item[Orc Patrol][HD 2, HP 9, AC 14, Atk +2 (1d8). 1d4 warriors demanding blood or toll.],
  item[Skeleton Guard][HD 1, HP 5, AC 13, Atk +1 (1d6). Mindless. Immune to Sleep, Charm, Poisoned, and Frightened.],
  item[Ghoul][HD 2, HP 10, AC 14, Atk +2 (1d3). A hit forces a Body save or the target is Paralyzed.],
  item[Rival Adventurers][See below.],
  item[Dark Cultist][HD 3, HP 12, AC 12, Atk +3 (1d4). Casts _Cause Light Wounds_ for 1d8 damage on a touch.],
  item[Cursed Trap][Dodge save or take 2d6 damage and become Poisoned. A Thief may find it first with a Class Check.],
  item[Ogre][HD 4, HP 19, AC 15, Atk +4 (2d6 club).],
))

=== Rival Adventurers

A rival party has 1d6+1 members. For each, roll 1d4 for class (#k[1] Fighter, #k[2] Cleric, #k[3] Magic-User, #k[4] Thief) and give it the party's average Level, maximum HP, and the gear of its class. Roll 1d6 for what they are after (#k[1--2] the same treasure you are, #k[3--4] a way out, #k[5--6] a bounty on one of you) and 1d6 for their mood (#k[1--2] hostile, #k[3--4] wary and open to a deal, #k[5--6] friendly, for now). Their leader holds a magic item from the Treasure table (roll again on 4 to 7).

#rolltable("1d4", "Location & Environment", (
  item[Ruined Keep][Collapse-prone stone, moldering tapestries, echoing footfalls.],
  item[Sunken Crypt][Stagnant knee-deep water, damp granite, ancient rot smell.],
  item[Fungal Caverns][Bioluminescent spores, slippery terrain, choking haze.],
  item[Defiled Temple][Shattered marble altars, blood-stained pillars, ominous hum.],
))

#rolltable("1d8", "Treasure & Loot", (
  item[Loose Pouch][2d6 x 10 GP.],
  item[Chest][1d6 x 100 GP + 1d4 Gemstones (50 GP each).],
  item[Ornate Urn][Silverware and art objects worth 300 GP.],
  item[Potion][Healing (restores 1d8 HP) or Invisibility (6 turns).],
  item[Scroll][Contains 1 random Magic-User or Cleric spell (single-use cast).],
  item[Magic Weapon][+1 to Attack and Damage rolls.],
  item[Magic Armor][+1 AC over its base type.],
  item[Hoard][1d6 x 500 GP, 2 Gems, and 1 Magic Item (roll again on 4 to 7).],
))

#rolltable("1d6", "Injury (at 0 HP)", (
  item[Slain][Dead.],
  item[Maimed][Lose a limb or an eye. Unconscious for 1d4 turns, then 1 HP. Injured until magic regrows it.],
  item[Grievous Wound][Unconscious until healed by magic or a night's sleep. Then HP as healed, and Injured until a Safe Haven rest.],
  item[Scarred][Marked for life. -1 to CHA checks, or +1 when the scar intimidates. The shock snaps you back: full HP.],
  item[Shaken][Drop whatever you hold. 1 HP, and Injured until a Safe Haven rest.],
  item[Close Call][You fight through it. Full HP.],
))
