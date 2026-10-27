#import "../../lib/24xx.typ": *

#show: xx.with(
  title: "AX&X: More Classes",
  subtitle: "Druid, Paladin, Monk, and Bard, built on the three tracks.",
  cols: 2,
  dense: true,
)

= New Classes

These four extend the core six. Each is built on one of the three progression tracks, so read them exactly as the core classes: the #k[track] sets attack bonus and XP, the class adds a Hit Die, a save boon, a kit, and a special ability. Nothing here changes a track. A character is one class, as ever.

- #item[Druid][Priest, d6. Neutral by calling. Leather and a wooden shield, never metal armor; the scimitar, sling, spear, and staff their arms. +2 Body. Prepares nature spells through mistletoe, below. Speaks with beasts, moves through brush unhindered, and is immune to the charm of woodland folk. Kit: scimitar, sling, leather, wooden shield, a sprig of mistletoe.]
- #item[Paladin][Warrior, d8. Lawful only, sworn to a hard oath: keep only what you need and give the rest to church and the poor, never refuse a plea for aid, never suffer Chaos unchallenged. Break the oath and every boon is stripped until atonement. Any weapon and armor. #k[+2 to all saves]. #k[Lay on Hands] heals twice your Level in HP a day by touch, or cures one disease. Senses Chaos at will, is never sick, and #k[Turns undead] as a Cleric two Levels lower. Allies within Near gain +1 on saves against Chaotic magic. Kit: weapon, shield, medium armor, holy symbol.]
- #item[Monk][Specialist, d6. Lawful. No armor, light weapons, fights unarmed. Unarmored and unburdened, your AC is #k[10 + half Level] plus any DEX edge, and bare hands strike for 1d6 + STR. Once a fight a hit can stun: the foe makes a Body save or is dazed a round. You move silently and climb as Class Checks, fall safely any height beside a wall, and move 10 ft faster. Kit: staff, light weapon, traveling clothes, a begging bowl.]
- #item[Bard][Specialist, d6. Light and medium weapons, light armor. +2 Will. #k[Loremaster:] a Class Check recalls a useful truth about a monster, relic, or place, and on a good roll names its weakness. #k[Song:] while you play and do nothing else, allies within Near gain +1 to attacks and saves and shrug off fear and charm; it ends if you stop or take a wound. A performance can sway a crowd, +2 to its reaction. Kit: an instrument, a light weapon, light armor, a book of tales.]

= Druid Spells

A Druid prepares spells as a Cleric does, up to the slots its Level grants, choosing from the list below. The focus is a sprig of mistletoe: cut fresh by moonlight it gives full effect; dried or bought, it still works, at -2. A Druid may also prepare Cure Light Wounds from the Cleric list. The same list is printed in the Spellbook.

#let spells = csv("spells.csv").slice(1)
#let sfmt(r) = [#strong(r.at(0) + ".") #r.at(5)]
#for lvl in ("1", "2", "3") {
  let rows = spells.filter(r => r.at(1) == "Druid" and r.at(2) == lvl).sorted(key: r => r.at(0))
  if rows.len() > 0 {
    heading(level: 2, "Level " + lvl)
    list(..rows.map(sfmt))
  }
}
