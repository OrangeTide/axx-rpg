#import "../lib/24xx.typ": *

// Opt-in landscape reference build: `typst compile --input landscape=true ...`.
// With no input the core builds as the default two-page portrait document.
#let landscape = sys.inputs.at("landscape", default: none) != none

#show: xx.with(
  title: "AX&X: Core Rules",
  cols: 3,
  dense: true,
  landscape: landscape,
)

AX&X is a two-page fantasy roleplaying game: gather a party, delve the dungeon, and roll 1d20 over 12 to settle the rest.

= Character Creation

Roll abilities, pick a kindred, class, and alignment, buy gear, then roll a Tie. Lifepaths adds a Trinket and a fuller past.

== Abilities

Roll #k[3d6 in order]. Modifier: #k[3:] -3 #bar #k[4--5:] -2 #bar #k[6--8:] -1 #bar #k[9--12:] 0 #bar #k[13--15:] +1 #bar #k[16--17:] +2 #bar #k[18:] +3.

- #item[STR][Melee attack and damage. Item #k[slots] equal to the score, with a pack worn.]
- #item[DEX][Missile attack. AC edge at high DEX, see Gear.]
- #item[CON][HP per Hit Die. Body saves.]
- #item[INT][Lore, languages. Magic-User with +1 or better: one extra 1st-level slot.]
- #item[WIS][Perception, Will saves. Cleric with +1 or better: one extra 1st-level slot.]
- #item[CHA][Reactions, parley, hirelings.]

== Classes

Level 1 HP is the #k[maximum] of one Hit Die + CON. A weapon outside your class list attacks at -2. Your #k[track] sets attack bonus and XP; your class adds a Hit Die, a save boon, a kit, and a special ability.

- #item[Tracks][Attack by Level: #k[Warrior] +Level, a 2nd attack at Level 6 and a 3rd at 11 #bar #k[Specialist] and #k[Priest] +half Level (round up) #bar #k[Mage] +half Level (round down). Level 2: #k[Specialist 1,500], #k[Warrior and Priest 2,000], #k[Mage 2,500] XP; each later Level doubles.]
- #item[Fighter][Warrior, d8. Any weapon and armor. +2 Body. Kit: weapon, shield, medium armor.]
- #item[Barbarian][Warrior, d10. +2 to saves vs magic, and distrusts magic items: will not wield one. No heavy armor; 40 ft on foot. Kit: a heavy weapon, hide armor, a slain beast's trophy.]
- #item[Ranger][Warrior, d8. +2 Body. Surprised only on a 1, surprises on 1--3. Tracks, hunts, forages as a Class Check, +2 in a chosen wild. Kit: bow, blade, woodcraft gear.]
- #item[Cleric][Priest, d6. Blunt weapons, medium or heavy armor. +2 Will. Divine spells; Turns undead, symbol in hand. Lawful or Chaotic. Kit: holy symbol, mace, medium armor.]
- #item[Thief][Specialist, d6. Light weapons and armor. +2 Dodge. Stealth, locks, traps, climbing are Class Checks with DEX +2. #k[Backstab:] +4 and double damage on the unaware. Kit: thieves' tools, light weapon, light armor.]
- #item[Magic-User][Mage, d4. Dagger or staff, no armor. +2 to saves vs magic. Spellbook of two 1st-level spells. Kit: spellbook, dagger.]

== Kindred

Any kindred, any class. One trait each.

- #item[Human][+1 to one ability score after rolling, and a 10% bonus to all XP earned, rising fastest.]
- #item[Dwarf][+2 to Body saves. Sees 60 ft in the dark. Notes sloping passages and new stonework.]
- #item[Elf][Immune to Sleep and Charmed. Sees 60 ft in the dark.]
- #item[Halfling][Once per day, reroll a failed d20. +2 to stealth checks. +1 AC against foes larger than human. No two-handed weapons.]
- #item[Half-Orc][+1 to melee damage. Sees 60 ft in the dark.]

== Alignment

#k[Law], #k[Neutrality], or #k[Chaos]. Undead, demons, and most monsters are Chaotic. _Protection from Evil_ and Turn Undead work against Chaos. Act against your alignment and the GM may strip a Cleric's spells until atonement.

== Gear

Take your #k[class kit] to start, or roll #k[3d6 x 10 GP] and shop. AC is 10, or the armor value, plus a DEX edge: #k[+1] at DEX 16--17, #k[+2] at 18. Slots equal STR with a pack worn, fewer without; over your slots you are #k[Weakened], at half speed, no Run; a heavy hoard of coin costs slots at the GM's call, about one per 100. Each weapon is #k[blunt], #k[edged], or #k[piercing], chosen when bought.

- #item[Weapons][Light (1d4, 1 slot) #k[2 GP] #bar Medium (1d6, 1 slot) #k[10 GP] #bar Heavy, two hands (1d10, 2 slots) #k[15 GP] #bar Spear (1d6, 1 slot) #k[3 GP] #bar Polearm, two hands (1d8, 2 slots) #k[8 GP] #bar Javelin (1d4, 1 slot) #k[1 GP] #bar Darts (1d3, 1 slot) #k[1 GP] #bar Sling (1d4, 1 slot) #k[2 GP] #bar Bow, with arrows (1d6, 2 slots) #k[20 GP] #bar Crossbow, with bolts (1d6+1, 2 slots) #k[25 GP].]
- #item[Armor][Light (AC 11, 1 slot) #k[20 GP] #bar Medium (AC 14, 2 slots) #k[75 GP] #bar Heavy (AC 16, 3 slots) #k[100 GP] #bar Shield (+1 AC, 1 slot) #k[10 GP]. A shield's bonus counts only against foes you face; splinter it to negate one hit, then it is gone.]
- #item[Supplies][Rations (7 days, 1 slot) #k[5 GP] #bar Torches (6, 1 slot) #k[1 GP] #bar Lantern and 3 flasks (2 slots) #k[12 GP] #bar Oil flask (thrown: 1d6 fire and Burning) #k[2 GP] #bar Blade poison, 1 dose #k[25 GP].]
- #item[Tools][Rope 50 ft (1 slot) #k[1 GP] #bar Ten-foot pole (1 slot) #k[1 GP] #bar Spikes and hammer (1 slot) #k[3 GP] #bar Grapnel (1 slot) #k[5 GP] #bar Sack (holds 3 slots, 1 slot) #k[1 GP] #bar Mirror #k[10 GP] #bar Whistle, chalk #k[1 GP].]

= Playing the Game

== The Core Roll

- #item[Check][For a risky action, roll #k[1d20 + Ability Mod], #k[12+] to succeed. Fall short and it fails, or the GM may grant it at a price. 9+ for easy, 15+ for hard. Rolls may be skipped when there is nothing at stake. Round down by default; a bonus or penalty counts once per source.]
- #item[Class Check][A check using class training adds your Level: #k[1d20 + Level + Ability Mod], 12+.]
- #item[Save][A check against a hazard: #k[1d20 + half Level + Ability Mod], #k[12+], or 10 + HD or higher if a creature caused it. Success avoids or halves the effect. Monsters save at #k[1d20 + HD], 10 + the caster's Level or higher.]
  - #k[Body (CON):] poison, death magic, paralysis, petrification, disease. #k[Dodge (DEX):] breath, blasts, falling, pits, dart traps. #k[Will (WIS):] spells, charm, fear, illusion. Save against the effect, not the thing that delivers it.
- #item[Aid][Spend your action to help an ally's check or attack: +2.]
- #item[Natural 20 and 1 (optional)][20 auto-succeeds, an attack dealing #k[maximum] damage, doubled if vulnerable; 1 auto-fails, badly. Omit for 1e.]

== Time

- #item[Turn (10 minutes)][The exploration unit: move through a few rooms, search a room, pick a lock, or rest.]
  - #k[Rest:] After five turns of activity, rest one turn or be Weakened until you do. #k[Torches:] 6 turns. Lantern flask: 24 turns.
- #item[Round (10 seconds)][The combat unit. On your turn you act or move, as Combat sets out.]
- #item[Day][Ends with 8 hours of sleep and a ration each. Skip the ration and you heal nothing and are Weakened until you eat.]

== Exploration

- #item[Search][One turn per 10 ft section, WIS check: find a secret door, trap, or hidden cache. A Thief uses a Class Check, and can disarm a trap they find. A trap left unfound springs when triggered, forcing its Dodge save.]
- #item[Doors][Stuck: STR check to force. Listen: WIS check, one turn. Held with spikes: 1d4 turns against a monster.]
- #item[Wandering Monsters][Roll 1d6 about every third turn, and at once after a fight, a forced door, or a shout: a #k[1], or #k[1--2] after noise, brings a wanderer from the Threat table.]
- #item[Darkness][Swinging at what you can't see is -4. Targeted spells need line of sight.]
- #item[Hirelings][Torchbearer #k[1 GP/day] (HD 1/2, HP 3, AC 10). Man-at-arms #k[5 GP/day] (HD 1, HP 6, AC 13, Atk +1, 1d6). Each takes a half share of XP. When first asked to risk death, a CHA check or they quit; then test Morale.]

== Encounters

- #item[Four Answers][Meet a monster four ways: Fight, Flee, Talk, or Exploit a weakness. A look or a Lore check with INT tells you what cuts it, what it shrugs off, and what it wants.]
- #item[Surprise][When an encounter begins, each side rolls 1d6: on 1--2 it's caught off guard and loses the first round. A side that saw it coming, or that scouted ahead, isn't; a side that sneaks in unseen, on a won stealth check, surprises outright.]
- #item[Distance][An encounter opens about #k[2d6 x 10 ft] apart, less in tight quarters or on a surprise, more in the open. Then roll reaction and set the order.]
- #item[Reaction][When a monster's intent is unclear, roll 2d6 + CHA: #k[2--5] hostile #bar #k[6--8] wary, open to a deal #bar #k[9+] friendly, for now.]
- #item[Morale][When a group first loses a member, and again at half strength, the GM rolls 1d6: on 1--3 the rest flee or yield. Mindless or cornered monsters skip this.]

== Combat

- #item[Initiative][Each round, roll 1d6 per side, high side first, or choose what best suits the story and the game. On a tie, both act at once: resolve everything before anyone drops.]
- #item[Action][Each round, either #k[act], attack, cast, use an item, or aid, with a short step, or #k[move] up to #k[30 ft] (20 in medium or heavy armor). #k[Run] doubles it. Reaching a far foe is a move; you strike next round, or #k[Charge]: close and attack at once, +2 to hit and -2 AC until your next turn.]
- #item[Withdraw][Leaving an enemy's reach draws a free attack. Withdraw instead: half speed, no action, and no attack drawn.]
- #item[Attack][Roll #k[1d20 + Attack Mod] vs #k[AC]. Attack Mod = your track bonus + STR (melee) or DEX (missile). Monsters attack at + HD. Two on one target: +2 each.]
- #item[Range][#k[Near] is 30 ft, a thrown weapon's reach. A bow, sling, or crossbow carries #k[60 ft], 120 ft at -2, 240 ft at -5. #k[Shots a round:] darts 3, bow 2, sling 1; a crossbow fires once, then reloads an action. Half cover: -2 to hit; full cover, no target. Loose into a melee and a miss hits a random figure, friend or foe.]
- #item[Reach & Thrown][A spear or polearm strikes from the second rank, behind a front-line ally, and keeps a closing foe at bay. A spear or javelin throws to Near; any one-handed weapon at -2.]
- #item[Damage][Weapon die + STR for melee. A creature #k[resistant] to a damage type takes half; #k[vulnerable], double. At 0 HP, roll on Brush with Death. Damage past 0 is ignored.]
- #item[Poison][A dose on a blade lasts one hit: Body save or Poisoned. Applying it is an action.]
- #item[Casting][Takes the action. If the caster took damage earlier in the round, the spell is lost.]
- #item[Helpless][Attacks on a sleeping, paralyzed, or bound target hit automatically. Call a blow nonlethal to drop a foe Helpless at 0, not slain.]
- #item[Ending][A side that is down, flees, or yields ends it. Break line of sight to escape, unless chased at equal speed. A CHA check may turn a fight to parley, if the enemy can talk.]

== Healing & Injury

- #item[Bind Wounds][During a rest turn, once per day, regain 1d4 HP.]
- #item[Sleep][A Day regains one Hit Die + CON.]
- #item[Haven][A week in a safe town or refuge restores all HP and ends Injured.]
- #item[Magic][_Cure Light Wounds_ and potions restore HP at once.]
- #item[At 0 HP][Drop to 0 and roll #k[Brush with Death]: #k[1d6 + 1 per earlier Brush this day], read below, #k[7+] always Slain. A new day clears the count. Slain, Maimed, and Petrified are permanent unless the GM provides a cure. The player may bring in a replacement when the GM judges the moment fitting.]
- #item[The Long Road][Between delves a party lives off the land and lays up to heal, and with time and safety the deeper hurts mend. The downtime supplement runs it, or rule it at the table.]

== Conditions

- #item[Weakened][-2 to all d20 rolls; -4 from two separate sources.]
- #item[Poisoned][The save is for your life. Fail and drop to 0 HP, roll Brush with Death at +2. Weakened until _Neutralize Poison_ or a _Cure_.]
- #item[Diseased][Weakened, and no healing works. Body save each Day's end to end it, or _Cure Disease_. Virulent strains kill as Poisoned.]
- #item[Paralyzed][No move or action for 1d4 rounds. Helpless.]
- #item[Asleep][Helpless. Wakes if damaged or shaken a round.]
- #item[Charmed][Treats the caster as a trusted friend for a day. Harm from the caster ends it.]
- #item[Frightened][Must flee from the source for 1d4 rounds.]
- #item[Burning][1d6 fire each round until a round douses it.]
- #item[Petrified][Stone. Out of play, permanent unless cured.]
- #item[Injured][Weakened until healed as the Brush with Death result states.]

= Magic

- #item[Spell Levels][Spells are level 1 to 3 here. Prepare spells into slots each day after sleeping. Slots by caster Level, as 1st/2nd/3rd: #k[1:] 1 #bar #k[2:] 2 #bar #k[3:] 2/1 #bar #k[4:] 3/2 #bar #k[5:] 4/2/1 #bar #k[6:] 4/2/2. Beyond Level 6, add one slot per Level.]
- #item[Clerics][Pray. May prepare any Cleric spell of a level they have slots for.]
- #item[Magic-Users][Prepare only from the spellbook, which starts with two 1st-level spells and takes a slot. A Day of study copies a scroll into it, using the scroll up. A lost book costs 15 GP and a Day per spell to rewrite.]
- #item[Turn Undead][Once per fight, a Cleric rolls #k[1d20 + Level + WIS] against the strongest undead present, 10 + its HD or higher. On success, #k[2d6 HD] of undead flee for 1d4 turns, weakest first. If the Cleric's Level is 3 or more above their HD, they are destroyed instead.]
- #item[Cleric 1][_Cure Light Wounds_ (1d8 HP, ends Poisoned) #bar _Light_ (30 ft, 6 turns) #bar _Bless_ (+1 to the party's attacks and saves, one fight) #bar _Protection from Evil_ (+2 AC and saves against Chaotic creatures, one fight).]
- #item[Magic-User 1][_Magic Missile_ (1d4+1 force, never misses) #bar _Sleep_ (2d4 HD of creatures of 4 HD or less, Asleep, no save) #bar _Shield_ (+4 AC, one fight) #bar _Charm Person_ (Will save or Charmed) #bar _Hold Portal_ (a door stays shut 6 turns).]
- #item[Higher Spells][Spell levels 2 and 3, and the full spell list, are in the Spellbook supplement.]

= Advancement

- #item[XP][#k[1 GP = 1 XP] once brought to town. A defeated or outwitted monster earns #k[25 XP per HD]. The first visit to each dungeon level earns #k[100 XP x depth]. Level 2 costs by track (see Classes); each later Level doubles the last.]
- #item[Level Up][Roll one more Hit Die + CON and add it to HP. Attacks follow your track; saves and slots follow Level.]
- #item[Improvise][These rules are a foundation to build your own game upon. Use a Check at 12+ for general situations not explicitly stated. Rulings by the GM are more potent than this book, and the GM is the final arbiter of how your fantasy realm works. Anything from 1st Edition drops right in: AC is 19 minus the old number, HD is HD, saves as above.]

= Running the Dungeon

- #item[Depth][Dungeon level 1 is nearest the surface. On levels 1 and 2, roll Threat on the #k[1d6] table below, or pick; deeper, add the level and read the heavier foes from the Bestiary. Coin results multiply by the level.]
- #item[Stocking][For each room roll 1d6, or place it by hand: #k[1--3] empty (1-in-6 chance of hidden treasure, found by Search) #bar #k[4] monster (1-in-2 chance it guards treasure) #bar #k[5] trap or trick (Dodge save or 2d6 damage, or a puzzle; on level 3 or deeper, gas: Body save or Petrified) #bar #k[6] treasure, with a guard on 1--2 on 1d6.]
- #item[Handing Out Treasure][Treasure comes from stocking, not from fights. Defeated monsters carry 1d6 x 10 GP on a 1--2 on 1d6, else nothing but XP. A leader of 3+ HD carries one Treasure roll.]

#rolltable("1d6", "Threat", note: [#k[HD] Hit Dice, #k[AC] Armor Class, #k[Atk] attack bonus and damage type. Attack bonus equals HD. #k[Mindless] is immune to Sleep, Charmed, Poisoned, Diseased, and Frightened. The Bestiary holds the heavier foes and the full list of keywords.], (
  item[Giant Rats][HD 1/2, HP 2, AC 12, Atk +0 (1d3 piercing). 2d6 rats.],
  item[Goblin Band][HD 1, HP 4, AC 13, Atk +1 (1d6). 1d6 goblins ambush from cover.],
  item[Skeleton Guard][HD 1, HP 5, AC 13, Atk +1 (1d6). 1d6. Mindless. Resistant to piercing and edged, vulnerable to blunt.],
  item[Orc Patrol][HD 1, HP 5, AC 13, Atk +1 (1d8). 1d4 warriors demanding blood or toll.],
  item[Ghoul][HD 2, HP 10, AC 14, Atk +2, two claws and a bite (1d3). Any hit: Body save or Paralyzed. Mindless.],
  item[Giant Spider][HD 2, HP 9, AC 14, Atk +2 (1d6 piercing). A hit: Body save or Poisoned. Webs: Dodge save or stuck 1d4 rounds.],
))

#rolltable("1d6", "Treasure", (
  item[Loose Pouch][2d6 x 10 GP.],
  item[Coin Cache][1d6 x 100 GP.],
  item[Chest][1d6 x 100 GP and 1d4 gems (50 GP each). Locked.],
  item[Art][Silverware, idols, or a tapestry worth 300 GP. Two slots.],
  item[Gems][2d6 cut stones at 50 GP each, in one pouch. One slot.],
  item[Magic Item][Roll #k[1d6]: #k[1--4] a Potion (Healing 1d8 HP, or Giant Strength, +2 melee attack and damage for 6 turns) #bar #k[5--6] a Charm (a Scroll of one level 1--3 spell, or a +1 weapon or armor, which counts as magic and silver). Plus 1d6 x 100 GP. Named relics and the full roster are in the Relics and Wonders supplement.],
))

#rolltable("1d6", "Ties to the World", note: [Roll once. Also roll 1d6 for home: #k[1] the Free City #bar #k[2] a hill fort #bar #k[3] the dwarf halls #bar #k[4] the elf wood #bar #k[5] the river shires #bar #k[6] the orc marches. Home gives shelter and one named contact.], (
  item[Ally][A named NPC owes you their life. They will come once if called.],
  item[Enemy][Someone wants you dead, and knows where you drink.],
  item[Debt][You owe 200 GP to someone who collects.],
  item[Patron][A temple, guild, or noble pays 50 GP for each map you bring back.],
  item[Mentor][An old adventurer. One question answered per delve, by letter.],
  item[Kin][A relative went into the dungeon and never came back.],
))

#rolltable("1d6", "Brush with Death", note: [Rolled at 0 HP. +1 per earlier Brush today; #k[7+] is Slain.], (
  item[Close Call][Negate the blow that felled you and any effect it carried.],
  item[Close Call][As above.],
  item[Scarred][-1 CHA checks or +1 intimidate. Back to full HP, ailments cleared.],
  item[Shaken][Drop your gear. 1 HP. Injured until a Haven.],
  item[Grievous Wound][Out until healed by magic or sleep. Injured until a Haven.],
  item[Maimed][Lose a limb or eye. Out 1d4 turns, then 1 HP. Injured for good.],
))
