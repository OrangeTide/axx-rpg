#import "../lib/24xx.typ": *

#show: xx.with(
  title: "AX&X: Core Rules",
  cols: 3,
  dense: true,
)

= Character Creation

Roll abilities, pick a kindred, class, and alignment, buy gear, then roll a Tie. Lifepaths adds a Trinket and a fuller past.

== Abilities

Roll #k[3d6 in order]. Modifier: #k[3:] -3 #bar #k[4--5:] -2 #bar #k[6--8:] -1 #bar #k[9--12:] 0 #bar #k[13--15:] +1 #bar #k[16--17:] +2 #bar #k[18:] +3.

- #item[STR][Melee attack and damage. Item #k[slots] equal to the score.]
- #item[DEX][Missile attack. AC bonus only at 16+.]
- #item[CON][HP per Hit Die. Body saves.]
- #item[INT][Lore, languages. Magic-User with +1 or better: one extra 1st-level slot.]
- #item[WIS][Perception, Will saves. Cleric with +1 or better: one extra 1st-level slot.]
- #item[CHA][Reactions, parley, hirelings.]

== Classes

Level 1 HP is the #k[maximum] of one Hit Die + CON. Weapons outside your class list attack at -2.

- #item[Fighter][d8. +2 to attacks. Any weapon or armor. +2 to Body saves.]
- #item[Cleric][d6. +1 to attacks. Blunt weapons, medium or heavy armor. +2 to Will saves. Must be Lawful or Chaotic. Turns undead (see Magic).]
- #item[Magic-User][d4. +0 to attacks. Dagger or staff, no armor. +2 to saves against magic. Spellbook with two 1st-level spells.]
- #item[Thief][d6. +1 to attacks. Light weapons and armor. +2 to Dodge saves. Stealth, locks, traps, and climbing are Class Checks with DEX at +2. _Backstab:_ +4 to attack and double damage against an unaware target.]

== Kindred

Any kindred, any class. One trait each.

- #item[Human][+1 to one ability score after rolling.]
- #item[Dwarf][+2 to Body saves. Sees 60 ft in the dark. Notes sloping passages and new stonework.]
- #item[Elf][Immune to Sleep and Charmed. Sees 60 ft in the dark. Spots secret doors on 1--2 on 1d6 when passing within 10 ft.]
- #item[Halfling][+2 to Dodge saves and stealth checks. Light weapons only.]
- #item[Half-Orc][+1 to melee damage. Sees 60 ft in the dark.]

== Alignment

#k[Law], #k[Neutrality], or #k[Chaos]. Undead, demons, and most monsters are Chaotic. _Protection from Evil_ and Turn Undead work against Chaos. Act against your alignment and the GM may strip a Cleric's spells until atonement.

== Gear

Start with #k[3d6 x 10 GP]. AC is 10, or the armor value, plus a DEX edge only the nimble keep: #k[+1] at DEX 16--17, #k[+2] at 18. Slots equal STR; a heavy hoard of coin costs slots at the GM's call, about one per 100. Each weapon is #k[blunt], #k[edged], or #k[piercing], chosen when bought.

- #item[Weapons][Light (1d4, 1 slot) #k[2 GP] #bar Medium (1d6, 1 slot) #k[10 GP] #bar Heavy, two hands (1d10, 2 slots) #k[15 GP] #bar Bow or sling, piercing, with ammunition (1d6, 2 slots) #k[20 GP].]
- #item[Armor][Light (AC 13, 1 slot) #k[20 GP] #bar Medium (AC 15, 2 slots) #k[75 GP] #bar Heavy (AC 17, 3 slots) #k[100 GP] #bar Shield (+1 AC, 1 slot) #k[10 GP].]
- #item[Consumables][Rations (7 days, 1 slot) #k[5 GP] #bar Torches (6, 1 slot) #k[1 GP] #bar Lantern and 3 flasks (2 slots) #k[12 GP] #bar Oil flask (thrown: 1d6 fire and Burning) #k[2 GP] #bar Blade poison, 1 dose #k[25 GP].]
- #item[Tools][Rope 50 ft (1 slot) #k[1 GP] #bar Ten-foot pole (1 slot) #k[1 GP] #bar Spikes and hammer (1 slot) #k[3 GP] #bar Grapnel (1 slot) #k[5 GP] #bar Sack (holds 3 slots, 1 slot) #k[1 GP] #bar Mirror #k[10 GP] #bar Whistle, chalk #k[1 GP].]
- #item[Class Kit][Thieves' Tools (1 slot) #k[30 GP] #bar Holy Symbol #k[25 GP] #bar Spellbook (1 slot) #k[15 GP].]

= Playing the Game

== The Core Roll

- #item[Check][For a risky action, roll #k[1d20 + Ability Mod], #k[12+] to succeed. Fall short and it fails, or succeeds at a cost. 9+ for easy, 15+ for hard.]
- #item[Class Check][A check using class training adds your Level: #k[1d20 + Level + Ability Mod], 12+.]
- #item[Save][A check against a hazard: #k[1d20 + half Level + Ability Mod], #k[12+], or 10 + HD or higher if a creature caused it. Success avoids or halves the effect. Monsters save at #k[1d20 + HD], 10 + the caster's Level or higher.]
  - #k[Body (CON):] poison, death magic, paralysis, petrification, disease. #k[Dodge (DEX):] breath, wands, traps, falling, blasts. #k[Will (WIS):] spells, charm, fear, illusion.
- #item[Aid][Spend your action to help an ally's check or attack: +2.]
- #item[Natural 20 and 1][20 always succeeds, and an attack deals double damage. 1 always fails, with a complication.]

== Time

- #item[Turn (10 minutes)][The exploration unit: move through a few rooms, search a room, pick a lock, or rest. Every third turn roll 1d6: on a 1, a wandering monster appears (roll Threat).]
  - #k[Rest:] After five turns of activity, rest one turn or take -2 to all d20 rolls until you do. #k[Torches:] 6 turns. Lantern flask: 24 turns.
- #item[Round (10 seconds)][The combat unit. Each combatant moves and takes one action.]
- #item[Day][Ends with 8 hours of sleep and a ration each. Skip the ration and you heal nothing, and every d20 roll takes -2 until you eat.]

== Exploration

- #item[Search][One turn per 10 ft section, WIS check: find a secret door, trap, or hidden cache. Thieves use their Class Check for traps.]
- #item[Doors][Stuck: STR check to force. Listen: WIS check, one turn. Held with spikes: 1d4 turns against a monster.]
- #item[Noise][Forcing a door, a fight, or shouting triggers a wandering monster roll at once, on 1--2.]
- #item[Darkness][Swinging at what you can't see is -4. Targeted spells need line of sight.]
- #item[Hirelings][Torchbearer #k[1 GP/day] (HD 1/2, HP 3, AC 10). Man-at-arms #k[5 GP/day] (HD 1, HP 6, AC 13, Atk +1, 1d6). Each takes a half share of XP. When first asked to risk death, make a CHA check or they flee or quit.]

== Encounters

- #item[Four Answers][A monster is a puzzle, not just a fight: Fight, Flee, Talk, or Exploit a weakness. A look or a Lore check with INT tells you what cuts it, what it shrugs off, and what it wants.]
- #item[Surprise][Each side rolls 1d6: on 1--2 it's caught off guard and loses the first round. A side that saw it coming isn't.]
- #item[Reaction][When a monster's intent is unclear, roll 2d6 + CHA: #k[2--5] hostile #bar #k[6--8] wary, open to a deal #bar #k[9+] friendly, for now.]
- #item[Morale][When a group first loses a member, and again at half strength, the GM rolls 1d6: on 1--3 the rest flee or yield. Mindless or cornered monsters skip this.]

== Combat

- #item[Initiative][Roll 1d6 per side once as the fight breaks out, high side first, or let the fiction set the order. On a tie, both act at once: resolve everything before anyone drops.]
- #item[Action][Each round, move up to #k[30 ft] (20 ft in medium or heavy armor) and take one action: attack, cast, use an item, or aid. #k[Run] doubles the move and forfeits the action.]
- #item[Withdraw][Leaving an enemy's reach draws a free attack. Withdraw instead: half speed, no action, and no attack drawn.]
- #item[Attack][Roll #k[1d20 + Attack Mod] vs #k[AC]. Attack Mod = Level + class bonus + STR (melee) or DEX (missile). Monsters attack at + HD. Two attackers on one target: +2 each.]
- #item[Range][Thrown #k[30 ft]. Bows and slings #k[60 ft], or 120 ft at -2 and 240 ft at -5. Half cover: -2 to hit; full cover, no target.]
- #item[Damage][Weapon die + STR for melee. A creature #k[resistant] to a damage type takes half; #k[vulnerable], double. At 0 HP, roll on Brush with Death. Damage past 0 is ignored.]
- #item[Poison][A dose on a blade lasts one hit: Body save or Poisoned. Applying it is an action.]
- #item[Casting][Takes the action. If the caster took damage earlier in the round, the spell is lost.]
- #item[Helpless][Attacks on a sleeping, paralyzed, or bound target hit automatically.]
- #item[Ending][A side that is down, flees, or yields ends it. Break line of sight to escape, unless chased at equal speed. A CHA check may turn a fight to parley, if the enemy can talk.]

== Healing & Injury

- #item[Bind Wounds][During a rest turn, once per day, regain 1d4 HP.]
- #item[Sleep][A Day regains one Hit Die + CON. Needs the ration.]
- #item[Safe Haven][A week in town restores all HP and ends Injured.]
- #item[Magic][_Cure Light Wounds_ and potions restore HP at once.]
- #item[At 0 HP][Roll 1d6 on Brush with Death; each result states your HP. Slain, Maimed, and Petrified are permanent unless the GM provides a cure. The player may bring in a replacement at the next room or scene.]
- #item[The Long Road][Between delves a party lives off the land and lays up to heal, and with time and safety even a maiming can mend. The downtime supplement runs it, or rule it at the table.]

== Conditions

- #item[The Answer][A deadly effect has a counter: the right item, spell, or class skill, spent the round it lands, negates it. The GM telegraphs the trick a round before, so a prepared party can deny it.]
- #item[Poisoned][1d6 damage at the end of each turn and -2 to all d20 rolls. Body save at the end of each turn to end it.]
- #item[Paralyzed][No move or action for 1d4 rounds. Helpless.]
- #item[Asleep][Helpless. Wakes when damaged or after a round of shaking.]
- #item[Charmed][Treats the caster as a trusted friend for a day. Harm from the caster ends it.]
- #item[Frightened][Must flee from the source for 1d4 rounds.]
- #item[Burning][1d6 fire damage each round until a round is spent dousing.]
- #item[Petrified][Stone. Out of play, permanent unless cured.]
- #item[Injured][-2 to all d20 rolls until healed as the Brush with Death result states.]

= Magic

- #item[Spell Levels][Spells are level 1 to 3 here. Prepare spells into slots each day after sleeping. Slots by caster Level, as 1st/2nd/3rd: #k[1:] 1 #bar #k[2:] 2 #bar #k[3:] 2/1 #bar #k[4:] 3/2 #bar #k[5:] 4/2/1 #bar #k[6:] 4/2/2. After that, one more slot per Level, and a new spell level opens at each odd Level.]
- #item[Clerics][Pray. May prepare any Cleric spell of a level they have slots for.]
- #item[Magic-Users][Prepare only from the spellbook, which starts with two 1st-level spells and takes a slot. A Day of study copies a scroll into it, using the scroll up. A lost book costs 15 GP and a Day per spell to rewrite.]
- #item[Turn Undead][Once per fight, a Cleric rolls #k[1d20 + Level + WIS] against the strongest undead present, 10 + its HD or higher. On success, #k[2d6 HD] of undead flee for 1d4 turns, weakest first. If the Cleric's Level is 3 or more above their HD, they are destroyed instead.]
- #item[Cleric 1][_Cure Light Wounds_ (1d8 HP, ends Poisoned) #bar _Light_ (30 ft, 6 turns) #bar _Bless_ (+1 to the party's attacks and saves, one fight) #bar _Protection from Evil_ (+2 AC and saves against Chaotic creatures, one fight).]
- #item[Magic-User 1][_Magic Missile_ (1d4+1 force, never misses) #bar _Sleep_ (2d4 HD of creatures of 4 HD or less, Asleep, no save) #bar _Shield_ (+4 AC, one fight) #bar _Charm Person_ (Will save or Charmed) #bar _Hold Portal_ (a door stays shut 6 turns).]
- #item[Higher Spells][Spell levels 2 and 3, and the full spell list, are in the Spellbook supplement.]

= Advancement

- #item[XP][#k[1 GP = 1 XP] once brought to town. A defeated or outwitted monster earns #k[25 XP per HD]. The first visit to each dungeon level earns #k[100 XP x depth].]
- #item[Thresholds][Level 2 needs #k[2,000 XP]. Each level after costs double the last.]
- #item[Level Up][Roll one more Hit Die + CON and add it to HP. Attacks, saves, and slots follow Level.]
- #item[Improvise][These rules are bones, not the whole beast. When something's not covered, call a Check at 12+, jot down how you ruled it, and stick with that. Trust the fiction over the sheet: a sound ruling can stand in for a roll, and a foe can run on a look and a want. Anything from 1st Edition drops right in: AC is 19 minus the old number, HD is HD, saves as above.]

= Running the Dungeon

- #item[Depth][Dungeon level 1 is nearest the surface. On levels 1 and 2, roll Threat on the #k[1d6] table below; deeper, add the level and read the heavier foes from the Bestiary. Coin results multiply by the level.]
- #item[Stocking][For each room roll 1d6: #k[1--3] empty (1-in-6 chance of hidden treasure, found by Search) #bar #k[4] monster (1-in-2 chance it guards treasure) #bar #k[5] trap or trick (Dodge save or 2d6 damage, or a puzzle; below level 3, gas: Body save or Petrified) #bar #k[6] treasure, with a guard on 1--2 on 1d6.]
- #item[Handing Out Treasure][Treasure comes from stocking, not from fights. Defeated monsters carry 1d6 x 10 GP on a 1--2 on 1d6, else nothing but XP. A leader of 3+ HD carries one Treasure roll.]

#rolltable("1d6", "Threat", note: [#k[HD] Hit Dice, #k[AC] Armor Class, #k[Atk] attack bonus and damage type. Attack bonus equals HD. The heavier foes of the deeper levels are in the Bestiary.], (
  item[Giant Rats][HD 1/2, HP 2, AC 12, Atk +0 (1d3 piercing). 2d6 rats. A bite on a 20 also gives disease: Poisoned.],
  item[Goblin Band][HD 1, HP 4, AC 13, Atk +1 (1d6). 1d6 goblins ambush from cover.],
  item[Skeleton Guard][HD 1, HP 5, AC 13, Atk +1 (1d6). 1d6. Mindless. Resistant to piercing and edged, vulnerable to blunt. Immune to Sleep, Charmed, Poisoned, Frightened.],
  item[Orc Patrol][HD 2, HP 9, AC 14, Atk +2 (1d8). 1d4 warriors demanding blood or toll.],
  item[Ghoul][HD 2, HP 10, AC 14, Atk +2 (1d3). A hit: Body save or Paralyzed. Immune as skeletons.],
  item[Giant Spider][HD 2, HP 9, AC 14, Atk +2 (1d6 piercing). A hit: Body save or Poisoned. Webs: Dodge save or stuck 1d4 rounds.],
))

#rolltable("1d6", "Treasure", (
  item[Loose Pouch][2d6 x 10 GP.],
  item[Coin Cache][1d6 x 100 GP.],
  item[Chest][1d6 x 100 GP and 1d4 gems (50 GP each). Locked.],
  item[Art][Silverware, idols, or a tapestry worth 300 GP. Two slots.],
  item[Gems][2d6 cut stones at 50 GP each, in one pouch. One slot.],
  item[Magic Item][Roll on Magic Items, with 1d6 x 100 GP.],
))

#rolltable("1d8", "Magic Items", note: [The find on a Magic Item result. Each named relic is one of a kind; the full roster is magic.csv.], (
  item[Potion][Healing (1d8 HP), or Giant Strength (+2 melee attack and damage, 6 turns). GM picks.],
  item[Charm][A Scroll (one random spell of level 1--3, a single cast by any caster), or a +1 weapon or +1 armor. A +1 weapon counts as magic and silver.],
  item[Lantern of the Drowned][Its blue flame burns 24 turns without oil and shows invisible things. Water within 30 ft rises an inch each turn it is lit.],
  item[Blade of the First Orc][Edged, +2 to damage. Howls when drawn: every monster on the level makes a noise check.],
  item[Mantle of Ashes][Immune to fire. The wearer's own touch chars paper and wood.],
  item[Ring of the Shut Door][Once per day, Hold Portal without a slot. The wearer cannot open any door another person has closed.],
  item[Idol of Small Mercies][Once per day, a full Cure Light Wounds on a touch. The idol remembers each name, and one day it will ask for something.],
  item[Wand of the Unseen Hand][3 charges a day: a Magic Missile. Each charge used leaves one of the wielder's fingers numb until sleep.],
))

#rolltable("1d8", "Location", (
  item[Ruined Keep][Collapse-prone stone, moldering tapestries, echoing footfalls.],
  item[Sunken Crypt][Knee-deep water, damp granite, the smell of rot.],
  item[Fungal Caverns][Glowing spores, slick floors, choking haze.],
  item[Defiled Temple][Shattered altars, blood-stained pillars, a low hum.],
  item[Obsidian Dungeon][Razor-edged black stone, sulfur vents, sigils that glow when touched.],
  item[Labyrinth][Shifting corridors, minotaur runes, dust-covered bones.],
  item[Flooded Mine][Rotten timbers, tunnels ending in black water, the tap of digging.],
  item[Giant's Barrow][Doors too tall to reach, grave goods sized for titans, a cold that does not lift.],
))

#rolltable("1d6", "Ties to the World", note: [Roll once. Also roll 1d6 for home: #k[1] the Free City #bar #k[2] a hill fort #bar #k[3] the dwarf halls #bar #k[4] the elf wood #bar #k[5] the river shires #bar #k[6] the orc marches. Home gives shelter and one named contact.], (
  item[Ally][A named NPC owes you their life. They will come once if called.],
  item[Enemy][Someone wants you dead, and knows where you drink.],
  item[Debt][You owe 200 GP to someone who collects.],
  item[Patron][A temple, guild, or noble pays 50 GP for each map you bring back.],
  item[Mentor][An old adventurer. One question answered per delve, by letter.],
  item[Kin][A relative went into the dungeon and never came back.],
))

#rolltable("1d6", "Brush with Death", note: [Roll when you drop to 0 HP.], (
  item[Slain][Dead.],
  item[Maimed][Lose a limb or an eye. Unconscious 1d4 turns, then 1 HP. Injured for good.],
  item[Grievous Wound][Unconscious until healed by magic or sleep. Injured until a Safe Haven rest.],
  item[Scarred][Marked for life: -1 to CHA checks, or +1 to intimidate. The shock snaps you back: full HP.],
  item[Shaken][Drop what you hold. 1 HP. Injured until a Safe Haven rest.],
  item[Close Call][You fight through it. Full HP.],
))
