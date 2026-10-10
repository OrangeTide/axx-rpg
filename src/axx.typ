#import "../lib/24xx.typ": *

#show: xx.with(
  title: "XD&X",
  subtitle: "A 24XX refit for 1st Edition",
  credit: [Based on 24XX by Jason Tocci (CC BY 4.0). Dungeon play in the spirit of 1st Edition.],
  cols: 3,
)

= Rules

== Ability Modifiers

From your #k[3d6 Ability Scores (3--18)]:

- #k[3:] -3 #bar #k[4--5:] -2 #bar #k[6--8:] -1
- #k[9--12:] 0
- #k[13--15:] +1 #bar #k[16--17:] +2 #bar #k[18:] +3

== Core Checks & Saving Throws

- #item[Attribute Checks][Roll #k[1d20 + Ability Mod] vs #k[TN 12].]
- #item[Saving Throws (Roll-Under)][When exposed to a hazard, roll #k[1d20]. If you roll #k[equal to or under] your class Target Number for that hazard type, you succeed.]
  - _Level Progression:_ Reduce all Save Target Numbers by #k[1 per Level] (minimum 2).

- #item[Save Targets by Class][Best save in bold.]
  - #k[Fighter:] Poison #k[12] #bar Wands 14 #bar Petrify 15 #bar Breath 17 #bar Spells 16
  - #k[Cleric:] Poison 10 #bar Wands 12 #bar Petrify 13 #bar Breath 16 #bar Spells #k[15]
  - #k[Magic-User:] Poison 14 #bar Wands #k[11] #bar Petrify 13 #bar Breath 15 #bar Spells #k[12]
  - #k[Thief:] Poison 13 #bar Wands 14 #bar Petrify 12 #bar Breath #k[13] #bar Spells 15

== Turns, Time & Resources

- #item[Dungeon Turn (10 min)][Collective party action (explore, search, disarm trap, rest).]
  - _Torches:_ 1 torch lasts #k[6 Dungeon Turns] (1 hour).
  - _Rations:_ Consume 1 daily ration per #k[Long Rest] (6 hours) or take -2 to all rolls.
- #item[Combat Round (1 min)][High side on #k[1d6 Initiative] acts first. Move + 1 action (Attack, Cast, Use Item).]
  - _Attack:_ Roll #k[1d20 + Attack Mod] vs #k[Target AC] (Target = 20 - Enemy AC).

== Healing & Death

- #item[Short Rest (1 turn)][Bind wounds once/day to regain #k[1d4 HP].]
- #item[Spells & Potions][_Cure Light Wounds_ or Healing Potions heal #k[1d8 HP] instantly.]
- #item[0 HP & Recovery][At 0 HP, roll #k[1d6 Injury & Death]. If killed or retired, a replacement character enters immediately at the next room or scene.]

== Treasure, XP & Leveling

- #item[Looting][Roll #k[Treasure Table] when searching rooms, chests, or boss enemies.]
- #k[1 GP = 1 XP] (brought safely to town).
  - #k[Lvl 2:] 2,000 XP #bar #k[Lvl 3:] 4,000 XP #bar #k[Lvl 4:] 8,000 XP
  - _Level Up:_ #k[+1 Hit Die (d6 HP)], #k[+1 Attack Mod], #k[-1 to all Save Targets].

= Classes, Spells & Equipment

== Classes

- #item[Fighter][d8 HP/lvl. +2 Attack. Uses any weapon/armor. Best vs #k[Poison / Death].]
- #item[Cleric][d6 HP/lvl. +1 Attack. Blunt weapons, medium/heavy armor. Best vs #k[Spells / Magic]. _Turn Undead:_ Roll #k[1d20 + WIS vs TN 12] to turn d8 HD of undead.]
- #item[Magic-User][d4 HP/lvl. +0 Attack. Dagger/Staff, no armor. Best vs #k[Wands & Spells].]
- #item[Thief][d6 HP/lvl. +1 Attack. Light armor. Best vs #k[Breath Weapons]. +2 stealth/locks/traps. _Backstab:_ +4 attack & 2x damage against unaware targets.]

== Spells & Magic

Prepare #k[1 spell per level per day] (6-hour rest required). Casting takes 1 turn action; taking damage before your turn breaks the spell.

- #item[Cleric Spells][_Cure Light Wounds_ (1d8 HP), _Light_ (30ft radius, 1 hr), _Bless_ (+1 party attacks for 1 fight).]
- #item[Magic-User Spells][_Magic Missile_ (1d4+1 auto-hit damage), _Sleep_ (puts 2d4 HD of weak foes to sleep), _Shield_ (+4 AC for 1 fight), _Invisibility_ (invisible until attacking/casting).]

== Gear List

Start with #k[3d6 x 10 GP].

- #item[Weapons][Light (1d4 dmg, 1 slot) #k[2 GP] #bar Medium (1d6 dmg, 1 slot) #k[10 GP] #bar Heavy (1d10 dmg, 2 slots) #k[15 GP].]
- #item[Armor][Light (AC 7) #k[20 GP] #bar Medium (AC 5, 2 slots) #k[75 GP] #bar Heavy (AC 3, 2 slots) #k[100 GP] #bar Shield (+1 AC, 1 slot) #k[10 GP].]
- #item[Supplies][Rations (7 days, 1 slot) #k[5 GP] #bar Torches (6, 1 slot) #k[1 GP] #bar Rope 50ft #k[1 GP] #bar Thieves' Tools #k[30 GP] #bar Holy Symbol #k[25 GP].]

= Tables & Generators

#rolltable("1d8", "Threat / Encounter", note: [Monster stats: #k[HD] = Hit Dice/Level, #k[AC] = Descending Armor Class, #k[Atk] = Attack Mod/Damage.], (
  item[Goblin Band][HD 1, HP 4, AC 7, Atk +0 (1d6). 1d6 goblins ambush.],
  item[Orc Patrol][HD 2, HP 9, AC 6, Atk +1 (1d8). 1d4 brutal warriors demanding blood or toll.],
  item[Skeleton Guard][HD 1, HP 5, AC 7, Atk +0 (1d6). Mindless, immune to sleep/poison.],
  item[Ghoul][HD 2, HP 10, AC 6, Atk +1 (1d3 + Paralysis: Roll #k[Save vs Paralyzation] or immobilized 1d4 turns).],
  item[Rival Adventurers][Equal count to party. HD = Party Avg Level. Mixed classes.],
  item[Dark Cultist][HD 3, HP 12, AC 8, Atk +1 (1d4 + Casts _Cause Light Wounds_ for 1d8 dmg).],
  item[Cursed Trap][Roll #k[Save vs Poison/Traps]. Takes 2d6 damage or venom on failure.],
  item[Ogre][HD 4, HP 19, AC 5, Atk +4 (2d6 heavy club).],
))

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
  item[Potion][Healing (restores 1d8 HP) or Invisibility (1 hour).],
  item[Scroll][Contains 1 random Magic-User or Cleric spell (single-use cast).],
  item[Magic Weapon][+1 to Attack and Damage rolls.],
  item[Magic Armor][+1 AC improvement over base type.],
  item[Hoard][1d6 x 500 GP, 2 Gems, and 1 Magic Item (roll again 1--7).],
))

#rolltable("1d6", "Injury & Death (at 0 HP)", (
  item[Fatal][Dead. Retire character immediately; replacement enters next turn.],
  item[Maimed][Lost limb or eye (-2 to physical rolls). Retire or play on.],
  item[Grievous Wound][Unconscious; out of action until healed or rested.],
  item[Scarred][Permanent facial scar (-1 CHA or +1 Intimidation).],
  item[Shaken][Disadvantage on next 3 rolls; drop held items.],
  item[Barely Alive][Regain 1 HP, but incapacitated for 1 turn.],
))
