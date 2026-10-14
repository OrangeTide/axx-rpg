// Adventure helpers for AX&X modules.
//
// Re-exports the 24XX page style so an adventure imports one file, and adds
// two helpers for the things adventures write by hand: a monster stat block
// for the Threats list, and a read-aloud callout. Both keep the plain 24XX
// look, no boxes or ornament.

#import "24xx.typ": *

// A monster stat block, printed as one Threats-list entry in place of a
// hand-formatted line. Drop it inside a #list(...), the way rolltable builds
// an enum.
//
//   name:  the monster's name, set bold as the entry label
//   hd:    Hit Dice
//   hp:    Hit Points
//   ac:    Armor Class
//   atk:   attack bonus; defaults to HD, the house convention that Atk = HD
//   dmg:   the attack printed in parentheses, such as "1d6 claws" or a save
//   body:  trailing traits, tags, and the Trick sentence; pass [] for none
#let monster(name, hd: none, hp: none, ac: none, atk: auto, dmg: none, body) = {
  let ab = if atk == auto { hd } else { atk }
  let stats = ()
  if hd != none { stats.push[HD #hd] }
  if hp != none { stats.push[HP #hp] }
  if ac != none { stats.push[AC #ac] }
  if ab != none {
    if dmg != none { stats.push[Atk +#ab (#dmg)] } else { stats.push[Atk +#ab] }
  }
  let line = stats.join[, ]
  item(name, [#line. #body])
}

// A read-aloud callout for boxed text spoken to the players. Set as indented
// serif italic behind a thin left rule, not a framed box, to hold the 24XX
// look. In HTML it becomes a blockquote.
#let readaloud(body) = context {
  if target() == "html" {
    html.elem("blockquote", body)
  } else {
    block(
      above: 0.6em,
      below: 0.6em,
      inset: (left: 0.7em),
      stroke: (left: 1.2pt + black),
    )[
      #set text(font: section-font, style: "italic", size: 9.5pt)
      #body
    ]
  }
}
