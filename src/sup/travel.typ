#import "../../lib/24xx.typ": *

#show: xx.with(
  title: "AX&X: Travel",
  subtitle: "Overland, sea, and sky. A journey supplement for AX&X.",
  cols: 2,
)

= How Travel Works

Most journeys need no rules. A known, safe road costs the days and a ration each, and you arrive. This is for when the crossing itself is the adventure: wild country, no map, foul weather, a pursuit, a pass that may be shut, or the short way no one sane takes.

It adds no new dice. Break a crossing into #k[legs], usually a day each, and make one Travel Check per leg, or wave a safe leg through. If you map in hexes, a Check still covers a day, not a hex.

= The Travel Check

Name a #k[guide] for the leg, the one breaking trail or at the helm. Only the guide rolls, and the whole party shares what happens. The guide rolls #k[1d20 + the leg's ability, 12+]. A road, fair weather, or an easy route lifts it; a storm, rough ground, or no way marked drops it, as each road says below. Another traveler may Aid for +2. Each road leans on one ability for the leg and a second when things go wrong.

- #item[Success][The leg goes clean. You reach the next stop on time and whole.]
- #item[Failure][You still get there, but it costs a day and a roll on Mishaps. Press on from where it leaves you. A natural 1 also fills a mark of the Journey Count.]

= Pace

A standing choice, and the #k[slowest traveler sets it].

- #item[Forced March][Cover half again the distance, but at day's end make a Body save, 12+, or be Weakened until a full night's rest.]
- #item[Steady][The standard.]
- #item[Cautious][Half the distance, and +2 to the Travel Check. Scout ahead, mark the trail, reef the sails.]

= On the Road

- #item[Rations][Each leg costs one ration per traveler, like any Day. Out of food, every further day you are Weakened and heal nothing until you resupply.]
- #item[Carriers][A mount, wagon, or ship can be lost or wrecked on a Mishap. Strand or scuttle one to turn a hazard aside, once. What each one hauls and how fast is set by its road below.]
- #item[The Journey Count][A long or risky crossing is a Count of 4 to 6 marks, named for what runs out: the snows closing the pass, a pursuit, the stores. Each Mishap, each detour, and each night camped in the open fills one. When it fills, the named thing happens with no roll to stop it. The Check says whether today went well; the Count says how long you have. Do not spend one bad roll on both.]
- #item[Arriving][You arrive as worn as the road left you. Carry any fatigue and wounds into what waits. A safe arrival lets you rest as a Day or a Haven; a hot one does not.]

= The Three Roads

== Overland

A leg is a day, and the guide rolls #k[STR] to march and force the way. What you ride sets the distance and the load, below. Once per day in the wild, roll 1d6: on a 1, an encounter, read off the Terrain Table below, not a flat Threat roll, so the ground and the region decide what you meet. A Lost Mishap or a filled Count calls for an #k[INT Check] to read the land and pick up the trail; fail and lose another day astray.

- #item[Road or trail][24 miles. +4 to Travel.]
- #item[Open plain][20 miles. +2 to Travel.]
- #item[Forest or hills][12 miles. No change.]
- #item[Mountains or desert][8 miles. -2 to Travel.]
- #item[Swamp or jungle][6 miles. -4 to Travel.]

=== By Cart and Mount

On foot is the standard above, and a walker goes anywhere a person can and carries their own slots. A mount or a cart changes the distance and the load, and adds one more thing to lose on a Mishap. The distance scales the terrain line: double of 24 miles is 48 on the road, double of 12 is 24 in the hills.

#table(
  columns: (auto, auto, 1fr),
  stroke: (y: 0.4pt + luma(80%)),
  inset: (x: 4pt, y: 3pt),
  table.header([Mode], [Distance], [Notes]),
  [On foot], [As above], [Any terrain. Each marcher carries their own slots.],
  [Riding horse], [Double], [Road, trail, and open ground. In forest, swamp, or mountains it is led at foot distance.],
  [Warhorse or pony], [Half again], [Bred for the charge or the steep path, not the long haul. Steady where a light horse balks.],
  [Mule or pack train], [Foot distance], [Hauls the party's heavy gear and frees slots on the marchers. Sure-footed in hill and mountain.],
  [Cart or wagon], [Foot distance], [Road or trail only. Hauls a great load and the footsore. Off a made road it bogs: a Breakdown, or a day the long way.],
)

- #item[Feed][A mount eats like a traveler. Green country grazes it free; waste, snow, or a ship's hold costs a slot of feed a day.]
- #item[Forced march][A mount can force the march, but at day's end it makes the Body save in its rider's place, 12+, or goes lame.]
- #item[Going lame][On a Breakdown that falls on a mount, or a failed forced march, roll The Beast Falters.]

#rolltable("1d6", "The Beast Falters", note: [Roll when a mount goes lame on a Breakdown or a failed forced march.], (
  item[Thrown shoe][Lead it at foot distance until reshod. A smith, or a Class Check with tools and an hour, sets it right.],
  item[Pulled up lame][Half distance for 1d3 days, or trade it down to a pack load.],
  item[Spooked][It bolts with a saddlebag. Lose 1d4 slots of gear unless someone makes a DEX Check to catch the rein.],
  item[Winded][No forced march and no gallop until a full day's rest and good feed.],
  item[Colic or fever][It sickens. A WIS Check or a Remedy saves it, else it is down a day and may be lost.],
  item[Foundered][It can go no farther. Put it to pasture, pack what it carried onto the others, and walk.],
))

== By Sea

A leg is a day afloat, and the guide rolls #k[WIS] to navigate. Wind sets the distance: a fair wind carries a sailing ship #k[72 miles], a crosswind #k[36], and dead against or becalmed is #k[0], a leg lost. A rowed galley makes 36 miles with no wind but tires its crew. A storm is a Travel Check at #k[-4]: fail and the ship is blown a day off course and springs a plank or tears a sail, and each soul aboard makes a Dodge save or is swept overboard. A storm or a filled Count calls for a #k[CHA Check] to command the crew and hold them to their stations; fail and they falter, costing a day or balking at the next hard leg.

=== Ships

The By Sea leg above runs the crossing. This is the hull you cross in: a berth bought, a ship chartered, or one you command.

- #item[Passage][Pay per head and ride her route, about #k[2 GP a leg] in the hold, more for a cabin. The captain sets the course and the schedule and makes the ship's Travel Checks. You bring only your own slots.]
- #item[Charter][Hire the whole hull: set the route and the cargo, crew her or pay a crew, and own every Mishap. Reckon it near a crew's wages for the voyage. Now your guide makes the navigation Check, and you fill her hold.]
- #item[Buy Her][A ship is a campaign prize. Set the price with the GM, or win one, and take on her upkeep, her crew's wages, and a home port. The strongholds supplement runs a port as a base.]
- #item[The Hold][A hull hauls like a wagon writ large, far past what a party can carry, which is how loot and Salvage come home. Count the hold in #k[loads], as strongholds counts Salvage. Load her past full and she rides low: a step slower, and -2 to every storm Check.]
- #item[Crew][She needs hands to make her distance. Short-crewed, she sails a step slower and a storm Check is at a further -2. Wages run a man-at-arms' #k[5 GP a day] each, or press and volunteers as the Hirelings and Warbands rules allow. A galley's rowers are its muscle and its morale both.]
- #item[Stores][Crew and passengers eat a ration a day, and water runs dry at sea. On a long crossing, name the Journey Count for the water casks; empty stores are the core's Weakened until a landfall.]
- #item[Wrecking][As Carriers above, beach or scuttle her to turn one hazard aside, once. Else track a named hull like a creature at #k[5 HP per HD] of its Warband HD, below: a reef, a ram, a fire, or storm on storm wears her down, and at 0 she founders.]
- #item[Naval Combat][Ship against ship is a #k[Warband clash]. Run each hull as a vehicle-combatant of its own Warband HD, set by size and crew, trading HD against HD per the Warbands supplement, a ram or a ballista for its attack and the crew for its pool. #k[Boarding] is a warband clash on the decks, each crew a host under its captain, and the beaten hull is taken, not sunk. A lone ship against a dragon turtle or a sea serpent runs off the Bestiary and the core.]

#table(
  columns: (auto, auto, 1fr),
  stroke: (y: 0.4pt + luma(80%)),
  inset: (x: 4pt, y: 3pt),
  table.header([Vessel], [Speed], [Hold and crew]),
  [Boat or skiff], [Coast and river], [A few loads, 1 to 3 hands. Ferry, fishing, the last mile upriver.],
  [Sailing ship], [Fair 72, cross 36, calm 0], [A wagon's hold, 8 to 20 crew. The By Sea baseline.],
  [Galley], [36 rowed, no wind], [Light hold, many oars. Fast in a calm, tires the crew, shallow water.],
  [Cog or merchantman], [A step slower], [The largest hold, small crew. Built to haul Salvage home.],
  [Longship], [Fast, beaches anywhere], [Small hold, large crew. The raider's shallow hull.],
  [Warship], [As a sailing ship], [Hold given to a ram, engines, and marines.],
)

#rolltable("1d6", "The Ship Flounders", note: [Roll when a vessel is wrecked on a Mishap, or a storm Check fails hard.], (
  item[Sprung Plank][She takes water. Bail and patch with a Class Check and tools, or lose a day and a few loads spoiled.],
  item[Torn Rigging][No full sail until mended. Half distance, or a day in a lee to repair.],
  item[Off Course][Blown or set a day astray. A WIS Check to find the sea-road again, or lose another.],
  item[Fever Below][Sickness in the crew. She is short-crewed, a step slower, until a week ashore.],
  item[Mutiny Brewing][Pay, plunder, or fear splits the crew. A CHA Check to hold them, or they balk at the next hard leg.],
  item[Holed and Sinking][A reef or a ram opens her. Run her aground to save the souls and some cargo, or she goes down.],
))

== By Air

A leg is a day aloft, and the guide rolls #k[DEX] at the helm. An airship makes #k[120 miles] a day and flies straight over mountain and ocean, which is why the far spires are days away, not months. It answers to no terrain, but it answers to weather and its engine. A storm aloft is a Travel Check at #k[-4]: fail and the ship is flung off heading, loses height, and anyone on deck makes a Dodge save or goes over the rail. When the Count fills, or a Mishap breaks the engine, an #k[INT Check] keeps the aether-engine lit; fail and it costs a day of repairs, or sets you down to go on overland.

= The Terrain Table

A wandering monster should fit the ground and the region, not drop in from a harder game. Where the dungeon has depth, the overland has #k[Tier] and terrain: the Tier sets how dangerous the country is, the terrain sets what lives there, and a single d6 nudges the night's luck one step either way.

- #item[Region Tier][The GM rates each region by how far it lies from help, I to IV. #k[I Settled], patrolled and tame #bar #k[II Borderland], the ragged edge of the map #bar #k[III Wild], no law, and old things stirring #bar #k[IV Blighted], the Doom's own country. The Tier caps the danger the way a dungeon's depth does, so read the heavier foes from the Bestiary as it climbs. A Decline step can raise a region a Tier, and a Stronghold reads its raids off the same number.]
- #item[The Step][When an encounter comes, roll #k[1d6]. On a #k[1 or 2] it is a step milder, often only a Sign or a fresh track and no contact at all. On a #k[3 or 4] it meets the region at its Tier. On a #k[5 or 6] it is a step direr. Never more than one step, so a Settled wood never looses a Blighted horror.]
- #item[Reading It][Take the terrain's line at the Tier the Step lands on, and stat the result from the Bestiary. The line names what haunts the ground; the Bestiary gives its numbers and keywords.]

== The Ground and Its Denizens

Each terrain reads low to high, Tier I to IV. Pick the entry at the Step's Tier.

- #item[Road and Trail][#k[I] a trader, pilgrims, or a toll-keeper with news #bar #k[II] bandits, or a patrol that wants a word #bar #k[III] an orc raid, or a beast lairing by the road #bar #k[IV] a warband off the march, or the Doom's own agents.]
- #item[Open Plain][#k[I] herds and the folk who drive them #bar #k[II] wolves, nomad riders, or a raiding party #bar #k[III] ogres, a wyvern hunting, or a warhost #bar #k[IV] a giant, a horde, or a dragon on the wing.]
- #item[Forest and Hills][#k[I] boar, deer, and charcoal-burners #bar #k[II] a goblin band, outlaws, or a bear #bar #k[III] an orc patrol, a troll, or giant spiders #bar #k[IV] a dragon's hunting range, or a fey lord's grudge.]
- #item[Mountains and Desert][#k[I] goats, eagles, and a hermit #bar #k[II] raiders, wolves, or a wyvern's range #bar #k[III] ogres, a griffon, or a giant's path #bar #k[IV] a dragon's eyrie, a giant's hold, or loosed elementals.]
- #item[Swamp and Jungle][#k[I] stirges, serpents, and frog-folk #bar #k[II] lizardfolk, giant insects, or a hunting beast #bar #k[III] a troll, undead in the mire, or a black dragon's fen #bar #k[IV] a hag's demesne, or a horror of the deep mire.]
- #item[Open Sea and Sky][#k[I] gulls, dolphins, or a fishing boat #bar #k[II] pirates, a serpent's wake, or a roc aloft #bar #k[III] a reaver fleet, or a wyvern flight #bar #k[IV] a dragon turtle, a sky-leviathan, or a storm given shape.]

#rolltable("1d8", "Mishaps", note: [Roll on a failed Travel Check, or when the Journey Count fills.], (
  item[Lost][Add a day finding the way. At sea you are off course; aloft, blown off heading.],
  item[Weather Turns][You are Weakened until it breaks, or hole up and lose a day. At sea or aloft, a storm, as that road says.],
  item[Breakdown][A mount goes lame, an axle breaks, a sail tears, the engine coughs. Mend it with a Check or go on slower.],
  item[Not Alone][A wandering monster on open ground, deep water, or high air. Read it off the Terrain Table.],
  item[The Ground Turns][A flood, a rockfall, a ravine, a reef, a downdraft. A Check to cross, or a day the long way around.],
  item[Spoiled Stores][A day's rations ruined, or the water fouled.],
  item[Hard Going][Someone is hurt or loses heart. A traveler is Weakened until the next safe rest, or a hireling tests morale.],
  item[A Find][A shrine, a ruin, a wreck, a hermit with news. A chance for aid, a rumor, or a side delve.],
))
