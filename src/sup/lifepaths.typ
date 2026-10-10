#import "../../lib/24xx.typ": *

#show: xx.with(
  title: "Lifepaths",
  subtitle: "Play the years before the dungeon. A character supplement for AX&X.",
  cols: 2,
)

= How It Works

Instead of a fresh Level 1 with rolled gold, you play out the life that came first. You start at 18 and serve four-year terms, gambling survival for XP, coin, training, and scars. Quit while you are ahead, or push your luck for another term and risk dying in your own backstory. When you walk away, you enter play as a veteran: usually still Level 1, but richer for it, with a purse, old training, a few heirlooms, and a past full of people who remember you. Serve long and rank high, and you may muster out with a horse and cart, a library of scrolls, a passage on a trader's ship, even a ship of your own.

= Make Your Veteran

== Abilities

Roll #k[3d6 in order] for STR, DEX, CON, INT, WIS, and CHA, the same six and the same modifiers as the core rules.

== Enlist

Pick a career whose key ability is #k[9 or higher] (a +0 modifier or better). Roll #k[1d20 + the key ability's modifier, 12+] to be taken on. Fall short, or fail the roll, and you are drafted: you serve as a Peasant, earn no career benefits, but may still muster out at the end.

== Each Term

A term is four years. Resolve these in order, then decide whether to serve another.

- #item[Survival][#k[1d20 + survival ability, 12+]. Fail and death reaches for you: roll on #k[Brush with Death] in the core rules. On #k[Slain], scrap the sheet and roll a new character. On any other result you lived through it and carry any lasting mark, a Maimed limb or a Scar. The HP and recovery lines belong to the dungeon, not your past.]
- #item[Progress][#k[1d20 + key ability, 12+]. Success earns rank and #k[500 XP], and a roll on Benefits. Failure earns #k[250 XP] and nothing more.]
- #item[Event][Roll once on Lifepath Events for the mark this term left on you.]

== Re-enlist or Muster Out

After each term you may leave, or try to stay on with a #k[2d6, 6+] roll. Fail and the career releases you, so you muster out either way. From your #k[fifth term] (age 34), the years start to bite: each term, make a #k[CON check (1d20 + CON, 12+)] or lose 1 point from STR, DEX, or CON, your choice.

== Enter Play

- #item[Level][Convert your banked XP with the core Thresholds. Four solid terms is about Level 2; most veterans enter at Level 1. Take the HP, attacks, saves, and slots for that Level.]
- #item[Class and Kindred][Pick both as normal. Your career points at a class but does not bind you to it.]
- #item[Carry It In][Your banked gold is your starting wealth; you do not also roll the usual 3d6 x 10 GP. Add your items, knacks, and ties. Your age is 18 plus 4 per term served.]
- #item[Muster Out][Roll on Mustering Out once per term served. For each Rank you hold, also roll once on Legacy, the greater spoils of a long service.]

= Careers

Key is the ability you roll to Enlist and to Progress. Survival is the ability you roll to live through each term.

- #item[Militia][Fighter. Key STR, Survival CON. Garrison drills and border skirmishes.]
- #item[Thieves' Guild][Thief. Key DEX, Survival DEX. Second-storey work and guild politics.]
- #item[Cloister][Cleric. Key WIS, Survival WIS. Vigils, sick-wards, and holy wars.]
- #item[Arcane Apprenticeship][Magic-User. Key INT, Survival INT. Copied grimoires and miscast spells.]
- #item[Free Company][Fighter or Thief. Key STR, Survival STR. Paid blades on a hard campaign.]
- #item[Drafted (Peasant)][Any class. No key. Survival CON. The fallback when enlistment fails.]

Militia and Free Company are service under arms, a stint in the kind of host the Warband supplement fields. A veteran keeps those bonds. Hold a Rank and you may call your old company to the banner for a cause or a wage, a warband of men-at-arms from a Free Company or of militia from the Militia. They remember the years you served with them.

#rolltable("1d6", "Benefits", note: [Roll once for each term you Progress.], (
  item[Weapon Training][Pick one weapon type outside your class list. It no longer takes the -2.],
  item[Knack][A background trade, such as riding, herbs, stonework, or forgery. +2 to Checks that use it.],
  item[War Chest][2d6 x 10 GP, saved from your pay.],
  item[Toughening][+1 to your career's key ability, to a maximum of 18.],
  item[Heirloom][Roll 1d6: #k[1--3] a scroll or potion #bar #k[4--5] a +1 ring or protective charm #bar #k[6] a +1 weapon.],
  item[Rank][+1 to every later Progress roll in this career, and one more Mustering Out roll.],
))

#rolltable("1d8", "Lifepath Events", note: [The story each term leaves behind. Links to the core Ties.], (
  item[A Scar][-1 to CHA checks, or +1 to intimidate. There is a tale behind it.],
  item[A Rival][Someone from the career means to best you, and shows up at the worst time.],
  item[A Debt][You owe 2d6 x 10 GP to a guildmaster, a captain, or a temple.],
  item[A Comrade][A named ally from your term who will answer one call for help.],
  item[A Patron][An officer, abbot, or master who still sends you work.],
  item[A Secret][You learned something you were not meant to. Someone wants it buried.],
  item[A Boon][A letter of passage, a guild token, or a sigil that opens certain doors.],
  item[A Loss][A friend died on your watch. You carry their blade, or their name.],
))

#rolltable("1d6", "Mustering Out", note: [Roll once for each term you served.], (
  item[Purse][3d6 x 10 GP.],
  item[Kit][A full set of your class's starting gear, free.],
  item[Mount and Cart][A riding horse, or a mule and cart for hauling loot out of the hills.],
  item[Retainer][A torchbearer or man-at-arms who owes you one delve at no wage.],
  item[Heirloom][Roll on Benefits result 5.],
  item[Contact][A name in a far town who owes you a favor, and a reason to travel there.],
))

#rolltable("1d6", "Legacy", note: [The greater spoils. Roll once for each Rank you hold.], (
  item[Scroll Case][1d4 spell scrolls. Roll each on the core Scroll result.],
  item[A Passage][A token or letter for free travel on a named caravan or captain's ship, there and back, once.],
  item[Trade Share][A stake in a merchant venture. 2d6 x 10 GP comes in each season you are home to collect it.],
  item[Freehold][A stone tower, a mill, or a walled steading. A base with a cellar, a servant or two, and a name.],
  item[A Ship][A river barge or a small coaster, yours outright, though it eats coin and wants a crew.],
  item[Warrant][A title, a commission, or a guild mastership, with leave to levy troops. Standing that opens doors and musters a warband at need, and the duties that come with both.],
))

= Example

Rolls STR 14, DEX 15, CON 12, INT 11, WIS 9, CHA 10. DEX 15 is +1, so she enlists in the Thieves' Guild on a 1d20+1, and makes it. Term one: Survival on DEX, a 12, clear. Progress on DEX, an 8, clear, so 500 XP and a Benefits roll of 3, a War Chest of 80 GP. Term two: Survival comes up a 4, +1 is 5, short of 12. She rolls on Brush with Death and gets Slain. The watch catches her, and she hangs before ever seeing a dungeon. New character.
