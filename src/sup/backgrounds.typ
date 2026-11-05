#import "../../lib/24xx.typ": *

#show: xx.with(
  title: "AX&X: Backgrounds",
  subtitle: "The station you held before you took up the delving life, and the trouble it left. A character supplement for AX&X.",
  cols: 2,
)

= Where You Stood Before

Not every adventurer was born to the plough. Some fell from a higher place, or walked away from one: a trade gone sour, a house that cast you out, an office you can no longer hold. A #k[background] is that former station, and the mark it left. You carry out of it a little knowledge, one keepsake, and a complication that still has a claim on you.

A background is the lighter cousin of the #k[Lifepaths] supplement. Where Lifepaths plays the years out term by term, a background is one roll and a line of history. It differs from the funnel's #k[Occupations] as well: those are the lowborn trades of the peasant mob, while these are the fallen and the former, the kind of past that draws debts and old faces after you.

- #item[One Roll][Roll on #k[Backgrounds] below, or pick the one that fits your idea.]
- #item[The Knack][Each entry opens with a short list of what the station taught you, the keepsake set in italics after it. Gain #k[+2 to any Check] that the knack plainly covers, by the GM's call. It grants no spell, no class skill, and no second knack in a field a funnel Occupation already covers.]
- #item[The Keepsake][You kept one thing from that life. It takes no slot and is worth little in coin, but it is yours and it is known.]
- #item[The Complication][Something followed you out: a creditor, a rival, an order with a claim, a name you cannot shake. The GM decides when it catches up, and it will.]
- #item[With a Class][A background colors a character but never binds the class. Take it in place of a funnel Occupation, or alongside one if your GM allows a past both above and below the mud.]

#rolltable("1d20", "Backgrounds", csv("backgrounds.csv").slice(1).map(r => [#strong(r.at(0) + ".") #r.at(1) #emph(r.at(2)) #r.at(3)]), note: [The station you fell from or left behind. A knack, a keepsake, and the trouble that came with you. Generated from #k[backgrounds.csv].])
