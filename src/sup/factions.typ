#import "../../lib/24xx.typ": *

#show: xx.with(
  title: "AX&X: Powers of the Land",
  subtitle: "Factions, territory, and standing. A factions supplement for AX&X.",
  cols: 2,
)

= The Contending Powers

Powers older and larger than any one party have carved up the land between dungeons: merchant assemblies, horrors under the hills, hordes, courts, and cults. Each has a territory, a people, a specialty, and a want, so a party's choices ripple past the dungeon mouth.

The feel is the old hex-map wargames, a weird continent of kingdoms: ancient, scheming, every border a grudge. None of this is needed to crawl a dungeon. Bring it in when you want the world to push back and keep its own books. The roster is generated from #k[factions.csv], so adding a row raises a new power.

== Running These at the Table

Do not bring all of them in at once. Treat the roster as a map to draw from. You stage only the few you need.

- #item[Start small][Pick two to four powers whose territory touches where the party begins. Leave the rest as rumor, a name on the map, until the party travels into their reach.]
- #item[Let Ties choose][A character's core Tie binds to a power, as #k[Ties to the World] below sets out. Seat the factions your players already hold a lever on, and the ones that matter pick themselves.]
- #item[Run rivals in pairs][One near power and the rival its entry names is tension enough for a whole arc. You keep two books, not eleven, and the land still bristles.]
- #item[Let the Doom promote][When a distant power steps onto the stage, let the #k[Foretold Doom] pull it there, one power at a time.]
- #item[Overlap on purpose][Two powers can share a trade and a border and still read as distinct, like the Gilt Assembly and the Aether Guild over the sky-lanes. Run them as branch houses of one bloodline at odds, as a schism over doctrine, or as two faiths that hate each other most of all. Leave which it is unsaid, and let the party guess wrong.]

== Reading an Entry

- #item[Region][The territory the power holds or haunts. Its home ground, and often an adventure in itself.]
- #item[People][How many, and of what sort. A rough measure, not a muster roll. When a power's soldiers come to blows, stat them from the Bestiary.]
- #item[Specialty][What it trades in, makes, or wields. The reason to deal with it, and the reason to fear it.]
- #item[Stance][Its mood toward outsiders. The rung named after it is the Standing you begin at.]
- #item[Rivals][The powers it contends with. Aiding this one slips you a step with each rival named here.]

== Standing

Track your #k[Standing] with each power you deal with: Hostile, Wary, Neutral, Favored, Sworn. Start at the rung its entry gives and move one step at a time.

- #item[Shifting][A deed that serves a power's want raises Standing a step; one that crosses it drops a step. Big deeds, a saved city or a murdered envoy, move two.]
- #item[Reaction][Standing bends the core #k[2d6 + CHA] Reaction roll: #k[Hostile] -2, and may skip the roll for a blade #bar #k[Wary] +0 #bar #k[Neutral] +1 #bar #k[Favored] +2 #bar #k[Sworn] +4, or friendly with no roll.]

== What They Want

Each power wants something: coin, secrets, blood, worship, land, or the Doom to run out. The hook in each entry names it. Serve the want to rise, thwart it to fall. A power that gets what it wants from you will overlook a great deal else.

== Favor and Enmity

- #item[Favored][Their region is a Haven to you. Expect a discount, a hireling, a thread of lore, or a shot at a named item held back from the market.]
- #item[Hostile][Their region is a threat. Patrols, bounties, barred gates, and a knife at your back while you crawl someone else's dungeon.]

== Rivals

Powers contend, so your friends make your enemies. Aiding one power shifts you a step against each rival its entry names. You cannot befriend the whole map; choose your enemies deliberately, and let two foes spend themselves on each other.

== Ties to the World

A character's core Tie, an ally, enemy, patron, mentor, or contact, belongs to a power. Roll or pick which, and that bond gains a banner, a region, and a want behind it. Now the favor owed to one name is a lever on a whole faction.

== The Foretold Doom

If you run the Foretold Doom, the powers answer to it. At each Decline step, one rises and one falls: a horde crosses a border, an assembly packs its gold and flees, a hooded cult throws back its hoods. The Comet's Faithful and the Bone Clerks swell with the dark. The rest must choose a side, and will remember which side you chose.

== Raising a Power

Give it a region, a people, a specialty, a stance, and one strange want. Add a hook that makes it more than a flag on a map. Price its favor and its wrath against the party's Level, and set it against a neighbor so the land stays at odds.

= The Powers

Generated from #k[factions.csv]. Each is a faction of the land.

#let fmt(r) = {
  let name = r.at(0)
  let region = r.at(1)
  let people = r.at(2)
  let specialty = r.at(3)
  let stance = r.at(4)
  let start = r.at(5)
  let rivals = r.at(6)
  let hook = r.at(7)
  [#strong(name), #emph(region). #k[People:] #people. #k[Specialty:] #specialty. #k[Stance:] #stance, start #start. #k[Rivals:] #rivals. #hook]
}

#let data = csv("factions.csv").slice(1)
#list(..data.map(fmt))
