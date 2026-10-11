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

- #item[Success][The leg goes clean. You reach the next waypoint on time and whole.]
- #item[Failure][You still get there, but it costs a day and a roll on Mishaps. Press on from where it leaves you. A natural 1 also fills a segment of the Journey Clock.]

= Pace

A standing choice, and the #k[slowest traveler sets it].

- #item[Forced March][Cover half again the distance, but at day's end make a Body save, 12+, or take -2 to all d20 rolls until a full night's rest.]
- #item[Steady][The baseline.]
- #item[Cautious][Half the distance, and +2 to the Travel Check. Scout ahead, mark the trail, reef the sails.]

= On the Road

- #item[Rations][Each leg costs one ration per traveler, like any Day. Out of food, every further day takes -2 and heals nothing until you resupply.]
- #item[Carriers][Mounts, wagons, and ships carry more and go faster, and each can be lost or wrecked on a Mishap. Strand or scuttle one to turn a hazard aside, once.]
- #item[The Journey Clock][A long or risky crossing is a clock of 4 to 6 segments, named for what runs out: the snows closing the pass, a pursuit, the stores. Each Mishap, each detour, and each night camped in the open fills one. When it fills, the named thing happens with no roll to stop it. The Check says whether today went well; the clock says how long you have. Do not spend one bad roll on both.]
- #item[Arriving][You arrive as worn as the road left you. Carry any fatigue and wounds into what waits. A safe arrival lets you rest as a Day or a Safe Haven; a hot one does not.]

= The Three Roads

== Overland

A leg is a day, and the guide rolls #k[STR] to march and force the way. Mounts double the distance and need grazing or feed. Once per day in the wild, roll 1d6: on a 1, an encounter, so roll on the Threat table. A Lost Mishap or a filled clock calls for an #k[INT Check] to read the land and pick up the trail; fail and lose another day astray.

- #item[Road or trail][24 miles. +4 to Travel.]
- #item[Open plain][20 miles. +2 to Travel.]
- #item[Forest or hills][12 miles. No change.]
- #item[Mountains or desert][8 miles. -2 to Travel.]
- #item[Swamp or jungle][6 miles. -4 to Travel.]

== By Sea

A leg is a day afloat, and the guide rolls #k[WIS] to navigate. Wind sets the distance: a fair wind carries a sailing ship #k[72 miles], a crosswind #k[36], and dead against or becalmed is #k[0], a leg lost. A rowed galley makes 36 miles with no wind but tires its crew. A storm is a Travel Check at #k[-4]: fail and the ship is blown a day off course and springs a plank or tears a sail, and each soul aboard makes a Dodge save or is swept overboard. A storm or a filled clock calls for a #k[CHA Check] to command the crew and hold them to their stations; fail and they falter, costing a day or balking at the next hard leg.

== By Air

A leg is a day aloft, and the guide rolls #k[DEX] at the helm. An airship makes #k[120 miles] a day and flies straight over mountain and ocean, which is why the far spires are days away, not months. It answers to no terrain, but it answers to weather and its engine. A storm aloft is a Travel Check at #k[-4]: fail and the ship is flung off heading, loses height, and anyone on deck makes a Dodge save or goes over the rail. When the clock fills, or a Mishap breaks the engine, an #k[INT Check] keeps the aether-engine lit; fail and it costs a day of repairs, or sets you down to go on overland.

#rolltable("1d8", "Mishaps", note: [Roll on a failed Travel Check, or when the Journey Clock fills.], (
  item[Lost][Add a day finding the way. At sea you are off course; aloft, blown off heading.],
  item[Weather Turns][Everything is -2 until it breaks, or hole up and lose a day. At sea or aloft, a storm, as that road says.],
  item[Breakdown][A mount goes lame, an axle breaks, a sail tears, the engine coughs. Mend it with a Check or go on slower.],
  item[Not Alone][A wandering monster on open ground or deep water. Roll on the Threat table.],
  item[The Ground Turns][A flood, a rockfall, a ravine, a reef, a downdraft. A Check to cross, or a day the long way around.],
  item[Spoiled Stores][A day's rations ruined, or the water fouled.],
  item[Hard Going][Someone is hurt or loses heart. A traveler takes -2 until the next safe rest, or a hireling tests morale.],
  item[A Find][A shrine, a ruin, a wreck, a hermit with news. A chance for aid, a rumor, or a side delve.],
))
