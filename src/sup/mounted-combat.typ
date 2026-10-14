#import "../../lib/24xx.typ": *

#show: xx.with(
  title: "AX&X: Horse and Lance",
  subtitle: "Riding into the fight, the charge, and the mount as a second combatant. A mounted-combat supplement for AX&X.",
  cols: 2,
)

= The Charge and the Saddle

The core game fights on foot. This is for the fights with a horse under you: a lance down an open field, a running skirmish on the steppe, a knight breaking a shield wall. It leans on the Combat supplement, which already carries the Charge, the set spear, high ground, and difficult ground, so bring that to the table alongside this.

It adds no new dice. A mounted attack is still #k[1d20 + Attack Mod] against AC, a save at 12+. And it is fiction first: a horse belongs in the open, not the crawl. No roll rides one down a dungeon stair or through a tight press, the ground simply forbids it. Roll only when the scene puts the mount in doubt.

= Riding into a Fight

- #item[From the Saddle][Mounted, you move at the mount's speed and strike down from #k[high ground, +1], as the Combat supplement sets out, with the reach to hold off anyone on foot. You take the mount's whole movement and still attack.]
- #item[A Steady Mount][A #k[war-trained] horse fights without a thought from you. Any other mount, a palfrey, a pack mule, a borrowed nag, will not charge or stand in a melee: ride it into blood, fire, or a monster's roar and make a #k[Ride check] (DEX, or a Class or Lifepath Check, 12+) to hold it, or it tests #k[Morale] and bolts, carrying you off or throwing you.]
- #item[Hands and Heed][Managing a mount in a melee wants a hand and your attention. Fighting two-handed from the saddle, or casting, rides on the mount's steadiness alone, a war-trained beast or a Ride check each round.]

= The Charge

The lance is why a knight is worth ten footmen, and why a hedge of spears is worth the knight.

- #item[Couch and Close][Move in a straight line at least #k[20 ft], the mount's doubled pace carrying you far, then strike as the core #k[Charge]: #k[+2 to hit] and #k[-2 to your AC] until your next turn. A lance, or a spear braced to the charge, deals #k[double damage] on that blow. One pass, then you are through and must wheel to come again.]
- #item[The Counter][A #k[set] spear, pike, or polearm strikes the charger first and deals double damage back, as the Combat supplement sets out. This is why a braced line breaks cavalry, and why horse goes around it. Broken or difficult ground, a crowd, or a turn in the path cancels a charge outright.]
- #item[Overrun][In place of a lance blow, ride a smaller foe down: a #k[Shove], the mount's HD for your STR, to drop it Prone beneath the hooves and trample for the mount's hoof damage. A braced or larger foe stops the horse instead.]

= Horse and Rider as Two

- #item[Two Bodies][The mount is its own creature, with the HD, HP, and AC on the table below. A war-trained one makes its #k[own hoof or bite attack] each round, on your initiative. A foe may strike at you, or at the larger, easier target under you.]
- #item[Down Goes the Horse][Drop the mount and the rider spills #k[Prone]: a #k[Ride save] (DEX, 12+) to land clear and on your feet, or take the fall, #k[1d6] and Prone. A dead horse is cover, and a line of retreat gone.]
- #item[Barding][Armor for the mount, bought and worn like a character's. It raises the mount's AC and weighs it down a speed step; heavy barding leaves only a trot. Light #k[+1 AC], medium #k[+2], heavy #k[+3], at a rider's armor prices.]

= Unhorsing

Coming off a horse is half the danger of riding one.

- #item[Thrown Down][A rider is unhorsed by an adjacent foe's #k[Shove or Trip] (opposed STR, or HD for a monster), by a #k[set weapon's] hit, by the mount going down, or, with the optional critical, by a natural 20 from a weapon of reach.]
- #item[Staying Seated][Each time, a #k[Ride save] (DEX, 12+) keeps the saddle. Fail and you hit the ground Prone for #k[1d6], at the feet of whatever put you there.]

= From the Saddle

- #item[Shooting][Loose from a moving mount at #k[-2]. A trained #k[horse-archer] ignores it, the steppe rider's whole art. A heavy crossbow will not load or fire at the gallop.]
- #item[A Cavalry Host][A troop of riders is a #k[Warband] like any other, run from that supplement. Mounted, it hits harder on the charge and runs down a broken foe, and a set line of spears breaks it the same as it breaks one knight.]

#table(
  columns: (auto, auto, auto, auto, 1fr),
  stroke: (y: 0.4pt + luma(80%)),
  inset: (x: 4pt, y: 3pt),
  table.header([Mount], [HD/HP/AC], [Move], [Attack], [Notes]),
  [Riding horse], [2 / 10 / 12], [60], [panic kick 1d4], [Won't fight; bolts at blood or fire.],
  [War pony], [2 / 10 / 13], [40], [2 hooves 1d3], [War-trained. Surefooted in hills.],
  [Light warhorse], [2 / 10 / 13], [60], [2 hooves 1d4], [Fast; the scout's mount.],
  [Medium warhorse], [3 / 15 / 13], [50], [1d6/1d6, bite 1d3], [The common cavalry horse.],
  [Heavy warhorse], [3 / 15 / 14], [40], [1d8/1d8, bite 1d3], [The destrier, bred for the lance.],
  [Mule or camel], [2 / 10 / 12], [40], [kick 1d4], [Stubborn, surefooted; the camel keeps the desert.],
)

The warhorses, the pony, and a trained camel fight; a riding horse, a mule, and any untrained mount do not.

#rolltable("1d6", "In the Saddle", note: [Roll when a mount is pushed hard, shaken, or a Ride check fails badly.], (
  item[Rears][It rears from the fray. A Ride save to stay up and keep it facing the foe, or lose your action to the reins.],
  item[Girth Snaps][Saddle or girth gives. A Ride save or you slide off Prone, and you ride bareback until it is mended.],
  item[Shies][It will not face the fire, the undead, or the roar. It backs a move out of reach until you master it.],
  item[Tramples][A charge or a rear carries into the fallen. The nearest Prone or tiny foe takes the mount's hoof damage.],
  item[Bolts][It takes the bit and runs. A Ride save each round to turn it; until then it bears you where it fears least.],
  item[Thrown][You are down, Prone for 1d6, and the mount bolts clear unless war-trained and held.],
))
