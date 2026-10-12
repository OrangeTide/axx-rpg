#import "../../lib/24xx.typ": *

#show: xx.with(
  title: "AX&X: Relics and Wonders",
  subtitle: "The source of truth for magic items in AX&X.",
  cols: 2,
)

= Magic Items

Magic turns up as treasure, rolled on the core's stocking and the Magic Item result, or placed by the GM. The roster on these pages is generated from #k[magic.csv], so adding a row adds an item. The common finds recur: a hoard may hold several potions or a plain +1 blade. The named relics are each one of a kind, and each carries a Price.

== Reading an Item

- #item[Effect][What the item does. A power used once per day returns at dawn. A wand or staff spends charges and is spent when they run out.]
- #item[Price][On a named relic, the catch that rides with it. The Price holds while you carry or wear the item and lifts when you set it down, unless the entry says the mark is permanent.]
- #item[Type][Weapon, armor, potion, scroll, or a named relic. The type tells you how it is worn, drunk, or read.]

== Using Them

- #item[Who][Anyone may use an item unless it says otherwise. A +1 weapon helps any hand, but a Cleric scroll still needs a Cleric to read it.]
- #item[Learning][You learn what a relic does by using it, by a Day of study, or from a sage. An obvious item, a glowing blade, may speak for itself at the GM's call.]
- #item[Spent][Potions and scrolls are used up. A scroll's spell casts once, at the writer's Level, then the ink fades.]
- #item[Worth][Magic is not coin, so it is not XP by itself. Keep it, or sell it to someone who wants it at the GM's call, and then that gold is XP like any other.]
- #item[Stacking][A bonus counts once with its like: two wards of the same kind do not add. Bonuses from different sources still stack, as the core's same-source rule sets.]

#let data = csv("magic.csv").slice(1)
#let fmt(r) = {
  let price = r.at(3)
  if price == "" {
    [#strong(r.at(0) + ".") #r.at(2)]
  } else {
    [#strong(r.at(0) + ".") #r.at(2) #emph([Price: #price])]
  }
}
#let group(types, label) = {
  let rows = data.filter(r => types.contains(r.at(1)))
  if rows.len() > 0 {
    heading(level: 1, label)
    list(..rows.map(fmt))
  }
}

#group(("weapon", "armor", "potion", "scroll"), "Common Finds")
#group(("named",), "Named Relics")

= Quirks and Omens

An optional garnish. Roll #k[1d8] when a relic first comes to light, for a sign that marks it as more than metal. Flavor only, unless the GM gives it teeth.

#rolltable("1d8", "A Relic's Sign", (
  [It is always cold to the touch.],
  [It hums faintly near its own kind.],
  [Beasts and dogs will not come near it.],
  [It is older than any name the party knows.],
  [It bears a maker's mark no one can read.],
  [Dust never settles on it.],
  [It grows warm when danger is near.],
  [It was buried with someone who wanted it kept.],
))
