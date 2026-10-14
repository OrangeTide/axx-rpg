#import "../../lib/24xx.typ": *

#set document(title: "AX&X: Party Inventory")
#set page(
  paper: "us-letter",
  flipped: true,
  margin: (x: 0.4in, top: 0.4in, bottom: 0.4in),
  footer: context {
    let rev = sys.inputs.at("rev", default: none)
    if rev != none and rev != "" { text(size: 7pt, fill: luma(40%), rev) }
    h(1fr)
    box(baseline: 28%, image("/lib/cc0.svg", height: 9pt))
  },
)
#set text(font: body-font, stretch: body-stretch, size: 8pt, fill: black, hyphenate: false)
#set par(leading: 0.45em, spacing: 0.5em)

#let rl = 0.6pt + luma(50%)
#let ul(w) = box(width: w, height: 0.95em, stroke: (bottom: rl))
#let lbl(s) = text(font: heading-font, weight: "bold", size: 7pt, upper(s))
#let note(s) = text(size: 6.3pt, fill: luma(45%), s)
#let field(label, w) = [#lbl(label)#h(0.3em)#ul(w)]
#let sq = box(width: 8pt, height: 8pt, stroke: 0.5pt + luma(40%))
// a run of tick boxes, wider gap every `per` to read as groups
#let sqrow(total, per) = {
  for i in range(total) {
    sq
    if calc.rem(i + 1, per) == 0 { h(6pt) } else { h(2.5pt) }
  }
}
// a labelled tally: a fixed-width name, then a run of boxes, so every row
// starts its boxes at the same x and none wrap
#let tally(name, total, per) = block(below: 0.55em)[
  #box(width: 0.62in, lbl(name))#sqrow(total, per)
]

// a bordered zone with a titled rule
#let zone(title, h, note-str, body) = box(
  width: 100%, height: h, inset: (x: 6pt, y: 5pt), stroke: 0.8pt + black, clip: true,
)[
  #text(font: section-font, size: 10.5pt, tracking: 0.04em, upper(title))
  #if note-str != none [ #note(note-str)]
  #v(-0.25em)
  #line(length: 100%, stroke: 0.6pt + black)
  #v(0.3em)
  #body
]

// n underlined rows across a set of labelled columns.
//   cols: array of (label, width) pairs; width is a track size
#let rows(cols, n) = {
  let header = cols.map(c => lbl(c.at(0)))
  let blanks = range(n).map(_ => cols.map(_ => ul(100%))).flatten()
  grid(
    columns: cols.map(c => c.at(1)),
    column-gutter: 6pt,
    row-gutter: 1.05em,
    ..header,
    ..blanks,
  )
}

// ===== masthead =====
#block(width: 100%, below: 0.3em)[
  #text(font: title-font, size: 22pt, tracking: 0.02em, upper("AX&X: Party Inventory"))
  #h(1fr)
  #box(baseline: 30%, text(size: 7pt, fill: luma(40%))[One sheet for the whole company. Slots on a body, loads in a hold. 100 coin fills a slot. Bearers, mounts, and carts wait at the road's end or the dungeon mouth; none follow into a tight crawl, a shaft, or deep water.])
  #v(0.1em)
  #line(length: 100%, stroke: 0.8pt + black)
]

#v(0.35em)

// ===== three columns of zones =====
#grid(
  columns: (1fr, 1.18fr, 1.12fr),
  column-gutter: 10pt,

  // ---- Column A ----
  stack(spacing: 8pt,
    zone("Pooled Supplies", 2.55in, "Mark one box per unit on hand. Spend them off the Turn Tracker.")[
      #tally("Torches", 12, 6)
      #tally("Oil flasks", 12, 6)
      #tally("Rations", 12, 4)
      #tally("Waterskins", 8, 4)
      #tally("Rope, 50 ft", 6, 3)
      #tally("Iron spikes", 12, 6)
      #tally("Mount feed", 12, 4)
      #lbl("Also")#h(0.4em)#ul(74%)
      #v(0.5em)
      #lbl("Also")#h(0.4em)#ul(74%)
    ],
    zone("Party Treasury", 2.0in, "Coin is experience only once it is safe in town.")[
      #field("GP", 20%)#h(0.6em)#field("SP", 18%)#h(0.6em)#field("CP", 18%)
      #v(0.6em)
      #lbl("Gems & valuables to sell")
      #v(0.3em)
      #ul(100%)#v(0.55em)#ul(100%)#v(0.55em)#ul(100%)
      #v(0.5em)
      #lbl("Salvage in hand")#h(0.4em)#sqrow(10, 5)#h(0.4em)#note("loads")
    ],
    zone("Cached in the Field", 1.85in, "Dropped or hidden below to return for. It may be gone, or guarded, when you do.")[
      #rows((([Where], 1fr), ([What], 1.1fr)), 5)
    ],
  ),

  // ---- Column B ----
  stack(spacing: 8pt,
    zone("Carried by the Party", 3.6in, "Shared gear beyond a character's own kit. Note who bears each, so a fall or a grab is not a surprise.")[
      #rows((([Item], 1.5fr), ([Slots], 0.4fr), ([Held by], 1fr)), 10)
    ],
    zone("Quest Items, Keys & Documents", 2.85in, "The irreplaceable: keys, writs, maps, named relics. Always name the bearer.")[
      #rows((([Item], 1.5fr), ([Held by], 0.9fr)), 7)
    ],
  ),

  // ---- Column C ----
  stack(spacing: 8pt,
    zone("Mounts & Pack Train", 2.6in, "A mule frees the marchers' slots. Feed is a slot a day where nothing grazes.")[
      #rows((([Mount], 0.9fr), ([Bears], 1.3fr), ([Feed], 0.4fr)), 5)
    ],
    zone("Cart, Wagon or Ship's Hold", 1.9in, "Road or hold only. Waits at the rim; hauls loot and Salvage home by the load.")[
      #lbl("Vessel or cart")#h(0.4em)#ul(56%)
      #v(0.6em)
      #lbl("Load")#h(0.4em)#sqrow(14, 7)#h(0.4em)#note("loads")
      #v(0.6em)
      #rows((([Hauling], 1.4fr), ([Loads], 0.4fr)), 3)
    ],
    zone("Haven or Stronghold Cache", 1.9in, "Stored behind a lock at the base: gear and loot, and Salvage for the walls.")[
      #lbl("Salvage in the cache")#h(0.4em)#sqrow(10, 5)#h(0.4em)#note("loads")
      #v(0.6em)
      #rows((([Stored gear & loot], 1.6fr), ([Slots], 0.4fr)), 3)
    ],
  ),
)
