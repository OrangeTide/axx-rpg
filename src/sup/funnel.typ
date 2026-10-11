#import "../../lib/24xx.typ": *

#show: xx.with(
  title: "AX&X: The Funnel",
  subtitle: "Zero-level play, hirelings, and henchmen. A followers supplement for AX&X.",
  cols: 2,
)

= The Zero Level

Before a character is a Fighter or a Thief they are just a person with a trade and a bad idea. That is the #k[zero level], and it is one statline shared by three kinds of nobody: the peasant mob of a funnel, the torchbearer you hire at the gate, and the porter who hauls your loot. All three are built the same.

- #item[Abilities and Kindred][Roll #k[3d6 in order] for the six, and take a kindred. Its one trait applies even now: a dwarf still sees in the dark, an elf still shrugs off Sleep.]
- #item[Hit Points][#k[1d4 + CON], minimum 1. A zero level is one bad blow from the grave.]
- #item[Defense and Attack][#k[AC 10], or better with scraps of armor. Attacks at #k[+0]: no class, no Level. A pitchfork, sling, or torch is a light weapon, improvised at -2 unless it is a real one.]
- #item[Saves][#k[1d20 + ability, 12+]. No Level to add and no class bonus, though a kindred save still counts.]
- #item[A Past Life][Roll on #k[Occupations] below. It grants a #k[knack], +2 to Checks that life would cover, and the one odd thing you carried out of it.]
- #item[They Leave the Story][A zero level never pops back up to fight on. At 0 HP they are out of the tale for good; the roll only tells how they go. Roll #k[Brush with Death], or a table of your own, and read it as their exit: #k[Slain] is a death, and every other result is a maiming, a breaking, or a body dragged from the field, retired from the funnel all the same, a survivor if the party wins free, a corpse if it does not. Draw your next body from your own mob first; roll up fresh zero levels only when a player's pool runs dry.]

#rolltable("1d20", "Occupations", csv("occupations.csv").slice(1).map(r => [#strong(r.at(0) + ".") #r.at(1) #emph(r.at(2))]), note: [Your past life. A knack and the one strange thing you kept. Generated from #k[occupations.csv].])

= Running a Funnel

A funnel opens a campaign with a crowd of zero levels and ends it with a few heroes. Each player rolls up a little mob of #k[three or four], a dozen or more to the table, and marches the lot into one deadly dungeon. The dungeon does the choosing. Whoever crawls out the far side has earned a class.

- #item[The Mob][Everyone runs their handful at once. Track them in a row and expect to cross names out. A zero level hauls light, fights poorly, and dies easily, so the play is cleverness, caution, and numbers, not heroics.]
- #item[Spend the Bodies][Send the expendable to prod the floor and open the door. That is the funnel's grim joke and its honest lesson: the survivors learn the dungeon is the enemy, long before the goblins are.]
- #item[The Dungeon][It ships as rules, not a map. Bring your own deadly place and stock it with the core procedure, pitched a notch crueller than a Level 1 party would meet.]
- #item[Graduation][Live to the end and the character #k[becomes Level 1]. Pick a class, your kindred and past life already yours: take the class Hit Die at maximum plus CON for new HP, gain its features, keep the knack and whatever gear and scars you carried out, and roll a Tie. The past life colors the choice, a cutpurse leans Thief, an acolyte Cleric, but never binds it. The funnel's XP carries over.]

= Hirelings

A hireling is a zero level you pay by the day. Build a torchbearer or a porter exactly as a funnel peasant, kindred, past life, and all; a man-at-arms is a cut above, a trained hand at Level 1.

- #item[The Hired][Torchbearer or porter #k[1 GP/day], a zero level. Link-boy, bearer, and camp-hand are the same. A #k[man-at-arms] at #k[5 GP/day] is Level 1: HD 1, a weapon and light armor, Atk +1.]
- #item[Shares][A hireling draws its wage and a #k[half share] of XP. Let that XP ride and a hireling can reach the Level 1 threshold and graduate just as a funnel survivor does, choosing a class and coming up a henchman.]
- #item[Loyalty][Asked first to risk death, a hireling makes a #k[CHA check], yours, or balks, flees, or quits. After that it tests #k[morale] like any creature: 1d6, breaking on 1 to 3 when the blood runs. Fair pay, fair shares, and not being spent as bait all weigh for you, and the GM may shade the roll.]
- #item[Specialists][A trade expert, an alchemist, a sage, a sapper, costs more and bargains harder, but brings a knack no slot-filler has. Price it to the job.]

= Henchmen

A henchman is not hired but won: a loyal adventurer who throws in with you for a share and a cause, levels at your side, and may one day carry the torch when you fall.

- #item[How Many][You may lead henchmen up to your #k[CHA modifier + 1], minimum one. A charmer draws a following; a boor leads no one.]
- #item[Where They Come From][A funnel survivor you kept, a captive you freed, a Lifepath Comrade or Retainer, a faction's gift, or a likely sort won in a tavern with a #k[CHA check]. Each is a full character, rolled up, entering at Level 1 or a Level below you.]
- #item[The Deal][No wage. A henchman takes a #k[half share] of loot and XP and #k[levels on it], and gets a say in how both are split. The share is theirs by right, not your largesse.]
- #item[Loyalty][Won by use, not by rule. Share fairly, spend them as comrades and not as fodder, and they hold. Cheat or risk them past reason and loyalty frays: a CHA check or a morale test when pushed, and a broken henchman walks, or turns, a ready-made Rival or Enemy.]
- #item[The Succession][When your character dies, a henchman is the replacement the core already promises: leveled, equipped, and tied to the party. Promote one, and roll a fresh henchman in their place.]

= From Peasant to Hero

One ladder runs under all of it. A zero level is the bottom rung, peasant, torchbearer, and porter alike. Earn a half share through a funnel or a hired season, cross the Level 1 threshold, and pick a class to graduate. Throw in for a cause and a share, and a graduate becomes a henchman who levels with you. Outlive your patron, or strike out alone, and a henchman becomes a hero in their own right. When the whole crowd takes the field, the Warband supplement runs them as one host, the funnel's mob mustering under a banner.
