#import "../../lib/24xx.typ": *

#show: xx.with(
  title: "AX&X: Mungo's Marvelous Emporium",
  subtitle: "Gear, goods, and sundries. The equipment supplement for AX&X.",
  cols: 2,
)

= Welcome to the Emporium

Mungo buys cheap, sells dear, and asks no questions about the blood on your old boots. Everything on these shelves also lives in #k[equipment.csv], so adding a row to that file stocks a new line, and the tables at the back are printed straight from it.

The core lists the same essentials in a sentence. This supplement is the long version: what each thing costs, what it weighs in slots, and the tricks a clever party gets out of a ten-foot pole. Buy what the delve demands and leave the rest to gather dust.

== Reading an Entry

- #item[Cost][In gold pieces, Mungo's asking price. Sell your loot back to him at half.]
- #item[Slots][What it takes to carry. A dash means it tucks away free, into a kit or a pocket.]
- #item[Stat][The number that matters in play: a damage die, an Armor Class, a bonus.]
- #item[Notes][How it behaves at the table.]

== Coin & Carrying

- #item[Starting Purse][A new adventurer rolls #k[3d6 x 10 GP] and spends it here.]
- #item[Coins][Heavy. A big hoard is a load you carry: the GM calls when coin costs a slot or slows you, about one slot per 100.]
- #item[Slots][You carry slots equal to your #k[STR] score when a pack is worn, fewer without one: just what you wear and hold. A soft cap, not a wall: pile on more and you are Overloaded, below. A sack holds 3 slots; a mule or hireling holds more.]
- #item[Availability][A town stocks the common lines. Anything rare wants a bigger city, a favor, or a search, at the GM's call.]

== Overloading

Greed and good hauls both outweigh a strong back. You may take up more than you carry well and pay the weight for it.

- #item[Overloaded][One slot over #k[STR] or more: the load drags and tires you. Move at #k[half speed] with no Run, and you are Weakened, until you drop back within your slots.]
- #item[Immovable][Past #k[double] your slots you only shuffle the pile a few feet. No fighting, climbing, swimming, or running. Set it down to act.]
- #item[Lighten Up][Dropping a sack or pack is free and instant: ditch the haul, fight light, come back for it. Spread a load across packs, a mule, and strong backs; #k[Travel] runs the mounts and wagons that carry treasure out.]

== Arms

- #item[Size and Damage][Light deals 1d4, medium 1d6, heavy 1d10. A heavy weapon needs two hands, so no shield with it.]
- #item[Damage Type][Each weapon is blunt, edged, or piercing, chosen when bought. It matters only when a foe resists or is vulnerable to a type.]
- #item[Off-List][A weapon outside your class list attacks at -2. An improvised one, a chair leg or a rock, is a light weapon at -2.]
- #item[Missiles][Bows and slings come with ammunition. Ranges and the firing rules are in the core and the Combat & Tactics supplement.]

== Armor

- #item[The Trade][Heavier armor raises your AC but drags your move to 20 ft and sours any swim or hard climb. Pick for the dungeon you expect.]
- #item[Shield][+1 AC, one hand, and no good with a two-handed weapon.]
- #item[Donning][Strapping into medium or heavy armor is a few turns of work, not something you do mid-fight.]

== Light & Fire

- #item[Torches][A torch lights 30 ft and burns 6 turns. Carry spares; the dark is -4 to hit and blinds your spells.]
- #item[Lantern][Steadier than a torch and shielded from wind. Each oil flask feeds it for 24 turns.]
- #item[Oil as a Weapon][A flask thrown and lit deals 1d6 and sets the target Burning. A missed throw can light the floor instead.]

== Doses & Vials

- #item[Blade Poison][One coat lasts one hit: Body save or Poisoned. Applying it is an action, so do it before the fight, not during.]
- #item[One-Use Vials][Holy water and the like follow the same shape: one action to use, kept in a kit or a belt loop. Costly ones double as a treasure sink.]

== Tools in Play

- #item[Ten-Foot Pole][The patron saint of careful parties. Prod the floor, trip a plate, fish a key, hold a nasty thing at arm's length.]
- #item[Rope and Grapnel][Climb, lower, bind, or rig a trap. A grapnel turns a wall into a stair.]
- #item[Mirror][See around a corner, and meet a petrifying gaze without meeting its eyes.]
- #item[Spikes and Hammer][Spike a door shut for 1d4 turns against a monster, or pin a bridge, or mark a wall.]
- #item[Odds and Ends][A whistle signals across a room; chalk maps a maze; a sack hauls the loot.]

== For the Wild

- #item[Living off the Land][Line and hooks, a set of snares, a herbalist's pouch, and a curing kit turn a long road into food and physic. The #k[Hearth and Harvest] supplement gives the rules; these are the tools they ask for.]
- #item[Camp][A tent and bedroll keep the weather out, so a cold or wet night is no longer a Body save against Exposure.]
- #item[The Dog][A hunting dog earns its ration: +2 to Hunt or Trap, and a growl in the dark.]

== Class Kits

- #item[Thieves' Tools][A Thief needs them for the best shot at locks and traps; without them the Class Check suffers.]
- #item[Holy Symbol][The Cleric's focus for prayers and for Turn Undead. Lose it and you cannot prepare spells.]
- #item[Spellbook][The Magic-User's focus, opening with two 1st-level spells. A scroll or a captured book copies in with a Day of study.]

#pagebreak()

= On the Shelves

Printed from #k[equipment.csv]. Each line is one good.

#let fmt(r) = {
  let name = r.at(1)
  let cost = r.at(2)
  let slots = r.at(3)
  let stat = r.at(4)
  let notes = r.at(5)
  let slotword = if slots == "" { "no slot" } else if slots == "1" { "1 slot" } else { slots + " slots" }
  let parts = (cost + " GP", slotword)
  if stat != "" { parts.push(stat) }
  let stats = parts.join(", ") + "."
  [#strong(name) #stats #notes]
}

#let data = csv("equipment.csv").slice(1)
#let groups = (
  ("Weapon", "Arms"),
  ("Armor", "Armor"),
  ("Consumable", "Consumables"),
  ("Tool", "Kit and Tools"),
  ("Provision", "For the Wild"),
  ("Class Kit", "Class Kits"),
)

#for (key, label) in groups {
  let rows = data.filter(r => r.at(0) == key)
  if rows.len() > 0 {
    heading(level: 2, label)
    list(..rows.map(fmt))
  }
}

== Stock Your Own Shelf

Price new gear by slot and effect. A mundane tool is a coin or two and one slot; a one-use trick runs a few GP up to 25. If it would swing a fight on its own, it is treasure, not gear. Keep the names strange; Mungo would.
