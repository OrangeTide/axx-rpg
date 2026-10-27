#import "../../lib/24xx.typ": *

#show: xx.with(
  title: "AX&X: The Funnel",
  subtitle: "Zero-level characters and the dungeon that makes heroes. A funnel supplement for AX&X.",
  cols: 2,
)

= The Zero Level

Before a character is a Fighter or a Thief they are just a person with a trade and a bad idea. That is the #k[zero level], and it is one stat block shared by three kinds of nobody: the peasant mob of a funnel, the torchbearer you hire at the gate, and the porter who hauls your loot. All three are built the same.

- #item[Abilities and Kindred][Roll #k[3d6 in order] for the six, and take a kindred. Its one trait applies even now: a dwarf still sees in the dark, an elf still shrugs off Sleep.]
- #item[Hit Points][#k[3], flat. A zero level is one bad blow from the grave.]
- #item[Defense and Attack][#k[AC 10], or better with scraps of armor. Attacks at #k[+0]: no class, no Level. A pitchfork, sling, or torch is a light weapon, improvised at -2 unless it is a real one.]
- #item[Saves][#k[1d20 + ability, 12+]. No Level to add and no class bonus, though a kindred save still counts.]
- #item[A Past Life][Roll on #k[Occupations] below. It grants a #k[knack], +2 to Checks that life would cover, and the one odd thing you carried out of it.]
- #item[They Leave the Story][A zero level never rises again to fight on. At 0 HP they are out of the tale for good; the roll only tells how they go. Roll #k[Brush with Death], or a table of your own, and read it as their exit: #k[Slain] is a death, and every other result is a maiming, a breaking, or a body dragged from the field, retired from the funnel all the same, a survivor if the party wins free, a corpse if it does not. Draw your next body from your own mob first; roll up fresh zero levels only when a player's pool runs dry.]

#rolltable("1d20", "Occupations", csv("occupations.csv").slice(1).map(r => [#strong(r.at(0) + ".") #r.at(1) #emph(r.at(2))]), note: [Your past life. A knack and the one strange thing you kept. Generated from #k[occupations.csv].])

= Running a Funnel

A funnel opens a campaign with a crowd of zero levels and ends it with a few heroes. Each player rolls up a little mob of #k[three or four], a dozen or more to the table, and marches the lot into one deadly dungeon. The dungeon does the choosing. Whoever crawls out the far side has earned a class.

- #item[The Mob][Everyone runs their handful at once. Track them in a row and expect to cross names out. A zero level hauls light, fights poorly, and dies easily, so the play is cleverness, caution, and numbers, not heroics.]
- #item[Spend the Bodies][Send the expendable to prod the floor and open the door. That is the funnel's grim joke and its honest lesson: the survivors learn the dungeon is the enemy, long before the goblins are.]
- #item[The Dungeon][It ships as rules, not a map. Bring your own deadly place and stock it with the core procedure, pitched a notch crueller than a Level 1 party would meet.]
- #item[Graduation][Live to the end and the character #k[becomes Level 1]. Pick a class, your kindred and past life already yours: take the class Hit Die at maximum plus CON for new HP, gain its abilities, keep the knack and whatever gear and scars you carried out, and roll a Tie. The past life colors the choice, a cutpurse leans Thief, an acolyte Cleric, but never binds it. The funnel's XP carries over.]

= Beyond the Funnel

A zero level who lives is a Level 1 hero. But the same stat block, hired instead of played, is a torchbearer or a porter; and a survivor you keep at your side is a henchman. Hiring the hands, winning the henchmen, their wages, shares, loyalty, and how a party spends them, is run in full in the #k[Retinue] supplement. This book builds the zero level and sends a funnel of them into the dark; the Retinue is how you put the survivors, and the hands you never funneled, to work.
