#import "../../lib/24xx.typ": *

#show: xx.with(
  title: "AX&X: Combat & Tactics",
  subtitle: "Positioning, maneuvers, and ground. A combat supplement for AX&X.",
  cols: 2,
)

= Fighting on the Ground

The core game runs a fight on four lines: initiative, an action, an attack roll, and damage. That is enough for a torchlit room and a handful of goblins, and most tables never need more. This supplement is for the fights where the ground itself matters: a bridge, a cliff edge, a flooded crypt, a cavalry charge down a hall.

It adds options, not new dice. Every rule here is still #k[1d20 + a flat modifier] against AC, or a save at 12+. Use what the scene calls for and leave the rest on the shelf. A GM can take the terrain lines and skip the wrestling, or the reverse.

= Position

- #item[Range Without a Map][For theater-of-the-mind play, track three bands, not feet: #k[engaged] (in reach), #k[near] (a move off, about 30 ft), and #k[far] (a Run or a bowshot away). A move shifts one band, reaching engaged lets you strike, and leaving engaged draws the free attack unless you Withdraw. Missiles carry to far at the core's range steps.]
- #item[Difficult Ground][Rubble, mud, deep snow, thick brush, a steep slope, or shallow water. Moving through it costs double, so 30 ft becomes 15. You cannot charge or run across it.]
- #item[High Ground][An attacker above the target, on a ledge, a stair, or a saddle, strikes at +1, and holds reach against anyone climbing up.]
- #item[Prone][Knocked flat by a shove, a trip, a charge, or a fall. A prone creature attacks at -2, is hit in melee at +2, and is a poor target at range, -2 to shoot. Standing up spends half your move.]
- #item[Climbing & Squeezing][Climbing is half move and needs a free hand: a Thief uses the Class Check on a hard pitch, others a STR check. Fighting as you climb is -2, and a hit may force a DEX save or a fall. A tight gap is difficult ground and gives no room for a shield.]

= Charging & Bracing

- #item[Charge][Move at least 20 ft in a straight line at a foe, then make one melee attack at +2. You are committed: -2 to your own AC until your next turn. Difficult ground or a turn in the path cancels it.]
- #item[Set Against a Charge][Ready a spear, pike, or polearm and name the way you face. The first charger or large creature to reach you is struck first and takes double damage. This is why a braced line beats cavalry.]
- #item[Shove & Trip][In place of an attack, make a STR check against a foe's STR, or its HD for a monster. Win, and push it back 5 ft or drop it Prone. A creature two sizes larger cannot be moved this way.]

= Tactical Actions

Each replaces your action for the round.

- #item[Guard][Take no action now. Name a trigger, a foe rounding the corner, the door bursting, an ally's signal, and act the instant it happens, before the trigger resolves. A readied shot or spell goes off first.]
- #item[Parry][Forgo your attack and raise your guard: +2 AC until your next turn. A Fighter may instead name one foe and cut its attacks by 2.]
- #item[Gang Up][Two or more on one target already give +2 each in the core. Strike an occupied or unaware foe from behind for another +2, and ignore its shield.]

= Grappling

For grabs, tackles, and bare hands, when a blade is the wrong tool.

- #item[Unarmed][A punch or kick deals #k[1d2 + STR], and a foe dropped by it is knocked out, not slain. A held weapon still beats fists.]
- #item[Grab][In place of an attack, make a STR check against the target's STR or HD. Hold it and neither of you moves, and both of you attack others at -2. Break free with a STR check on your action.]
- #item[Overbear][Pile on to drag a foe Prone. Each extra grabber adds +2. A pinned creature is Helpless to those holding it.]

= Ranged Combat

- #item[Point Blank][Within 10 ft, a clear shot hits at +1. A sling or thrown weapon serves here. A bow does not: with a foe in melee you shoot at -4 and draw a free attack, so drop it for a blade.]
- #item[Into the Scrum][Shooting a target locked in melee with your friends is -4 to pick it out. A natural 1 or 2 hits a random fighter in that knot instead, friend or foe.]
- #item[Cover][Something solid in the way: a low wall, a corner, a pillar. Half cover is -2 to hit; full cover, no shot. It shields you from a foe's arrows the same way.]
- #item[Concealment][Smoke, fog, foliage, or gloom hides a target without stopping an arrow. Lightly hidden is -2, heavily hidden -4, and a target you cannot see at all takes no aimed shot or targeted spell.]

= Light & Weather

- #item[Darkness][As the core: swinging at what you cannot see is -4, and targeted spells need line of sight. A torch or lantern lights 30 ft; Dwarf, Elf, and Half-Orc see 60 ft in the dark.]
- #item[Dim Light][Dusk, a distant torch, or deep shade. -2 to attacks and to spot, and the edges of the room count as concealment.]
- #item[Smoke & Fog][Concealment that drifts, and it fouls the lungs. A round spent in thick smoke calls for a Body save or a cough that costs -2 that turn. Fire and lightning cut through; little else does.]
- #item[Wind & Rain][Hard wind sends arrows wide, -2 past 60 ft, and a gale grounds light flyers. Rain turns ground difficult and footing poor.]

= Footing

- #item[Slick Ground][Ice, mud, blood, or loose scree. Run or get shoved on it and make a DEX save, 12+, or fall Prone. Careful movement is safe but counts as difficult ground.]
- #item[Edges & Drops][Near a pit, a rampart, or a ship's rail. A failed save from a shove, a trip, or a slip sends you over. A short fall is 1d6 per 10 ft; a long one is a roll on Brush with Death.]
- #item[Fighting in Water][Wading is difficult ground; swimming is half move and no shield. Submerged, melee is -2, a thrust beats a swing, and a bow will not fire. Hold your breath a number of rounds equal to your CON score, then make a Body save each round or start to drown.]

= Optional: Heroes of the Line

Martial skill shows in volume, not only in bigger numbers. The extra attacks are already core; cleave is the optional flourish.

- #item[Extra Attack][A core #k[Warrior], Fighter, Barbarian, or Ranger, makes a second attack at Level 6 and a third at 11, each a full roll at the same Attack Mod.]
- #item[Cleave][When a Warrior's melee attack drops a foe, the swing carries into another within reach, once per turn.]

#rolltable("1d8", "Battlefield Features", note: [Roll one or two to give a fight its shape. Each is a prize for both sides.], (
  item[Choke Point][A door, bridge, or ledge only one or two can hold. Flanking is denied, and a braced line rules.],
  item[High Ground][A stair, balcony, or rise. +1 to strike from it, and a scramble to take it.],
  item[Broken Ground][Rubble and pits across the middle. Difficult ground, and no charge through it.],
  item[Scattered Cover][Pillars, crates, gravestones. Half cover for whoever reaches it first.],
  item[The Drop][A pit, cliff, or rail along one side. Shoves and trips turn deadly here.],
  item[Darkness][Guttered torches or a deep cave. -4 to those without darkvision, and a lamp becomes a prize.],
  item[Hazard][Fire, a flood, a swarm, a swinging blade. 1d6 to anyone forced into it.],
  item[Slick Footing][Ice, mud, or spreading blood. A DEX save to run or be shoved, or fall Prone.],
))
