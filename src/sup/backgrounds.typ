#import "../../lib/24xx.typ": *

#show: xx.with(
  title: "AX&X: Backgrounds",
  subtitle: "The station you held before you took up the delving life, and the trouble it left. A character supplement for AX&X.",
  cols: 2,
)

= Where You Stood Before

Not every adventurer was born to the plough. Some fell from a higher place. Others simply walked away from one, but the place keeps its claim: a house that still sends you work, an oath not yet discharged, a patron who waits on you, a debt or a disgrace at your back. A #k[background] is that former station, and the mark it left. You carry out of it a little knowledge, one keepsake, and a complication that still has a hold on you.

A background is the lighter cousin of the #k[Lifepaths] supplement. Where Lifepaths plays the years out term by term, a background is one roll and a line of history. It parts from the funnel's #k[Occupations] too: those are the trades of the zero-level mob, a knack and the odd thing it left, while a background is a station you have since left behind, and the claim it still keeps on you.

- #item[One Roll][Roll on #k[Backgrounds] below, or pick the one that fits your idea.]
- #item[The Knack][Each entry opens with a short list of what the station taught you, the keepsake set in italics after it. Gain #k[+2 to any Check] that the knack plainly covers, by the GM's call. It grants no spell and no class skill.]
- #item[The Keepsake][You kept one thing from that life. It takes no slot and is worth little in coin, but it is yours and it is known.]
- #item[The Complication][Something followed you out: a creditor, a rival, an order with a claim, a name you cannot shake. The GM decides when it catches up, and it will.]
- #item[With a Class][A background colors a character but never binds the class. Take it in place of a funnel Occupation.]

#rolltable("1d20", "Backgrounds", csv("backgrounds.csv").slice(1).map(r => [#strong(r.at(0) + ".") #r.at(1) #emph(r.at(2)) #r.at(3)]), note: [The station you fell from or left behind. A knack, a keepsake, and the trouble that came with you. Generated from #k[backgrounds.csv].])
