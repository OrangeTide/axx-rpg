#import "../../lib/24xx.typ": *

#show: xx.with(
  title: "AX&X: The Foretold Doom",
  subtitle: "Time, decline, and the end of the campaign. A countdown supplement for AX&X.",
  cols: 2,
)

= The Gathering Dark

Something is coming, and it keeps a schedule. The Foretold Doom is a campaign-long countdown that hangs over every delve. You cannot outwait it and you cannot hide from it, because adventuring is what spends it. Each expedition buys you loot and a Level and burns a little more of the time you have left.

It is built for the kind of play where a line of heroes races one deadline, and the world is darker at the end than it was at the start. The core game needs none of this. Bolt it on when you want a campaign that can be lost to the calendar, not just to a bad fight.

= Setting the Doom

- #item[Marks][Start with #k[12]. Each mark is one expedition, a dungeon delve, or one overland journey. Draw the Count where every player can see it.]
- #item[Name the Doom][One sentence the table agrees on, picked or rolled on #k[What Is the Doom?] below: the lich's rite, the comet's fall, the drowning of the coast. That is what the Count counts down to.]
- #item[Scale][Roughly the number of expeditions you expect the campaign to run, plus a little slack. A grim sprint is 6, a standard arc 12, a long saga 18 to 24.]

= Spending Time

- #item[The Tick][At the end of each expedition or overland journey, erase one mark. The Count only moves one way.]
- #item[Extra Ticks][A whole season idled in town, a Journey Count that filled, or a catastrophic failure costs another mark, at the GM's call.]
- #item[No Free Afternoons][Shopping, a night's rest, and short trips inside a settled area are free. The Count tracks the long haul, not the hour.]

= The Decline

The world does not wait for zero. Each quarter of the Count that empties advances the Decline one step: a named milestone the whole table feels, telegraphed a tick before by a Sign. A Stronghold takes a raid at each step, and the Powers of the Land rise and fall with it, so the milestones are the campaign's shared clock.

- #item[The Carrion Wind][First quarter gone. Birds fall from the sky, the dead sleep ill, and refugees crowd the roads. Rumor, not yet ruin.]
- #item[The Breaking][Halfway. A city burns or a river runs foul, and a region or an ally falls. Journey Counts start one mark shorter, and prices climb.]
- #item[The Guttering][Three quarters gone. The last Havens go dark one by one and the heartland is overrun. Resupply is dear, and the wandering-monster roll comes up one face easier.]
- #item[The Unmaking][Empty. The Doom lands, as The End sets out below.]

= The End

At zero the doom lands. The rite completes, the comet falls, the sea comes in. The campaign is lost, in the way the Decline had been writing on the wall for hours of play. It is the bill come due. The GM narrates the dark age that follows. From there you can call it an ending, or carry survivors into that fallen world as a different, harder game.

= Succession

A party wipe does not wind the Count back. The years still passed, and now they are shorter. Bring in a fresh party at the current number and press on. The dungeon remembers: the fallen lie where they fell, their maps and gear still in the dark for the next hands to find. In solo play you are the line itself, each hero taking up the last one's unfinished march.

= Variant: Death Winds the Doom Back

For a kinder campaign you can lose and begin again, let a total party wipe wind the Count back to full, or back by half if full is too soft. The campaign becomes a cycle you can lose and try again. The pressure now comes from wanting to reach the end before you run out of heroes you care about, rather than from the calendar alone.

Give it a reason in the world, so it reads as more than a convenient escape. The age is caught in recurrence: a prophecy that re-rolls when its champions die, a god of time that rewinds to its last chosen, a cycle the villain's unfinished rite forces on the world. Each new party wakes at the dawn of the twelve years with the dim sense they have walked this road before, and now and then a memory that proves true: a trap they already know, a face they should not recognize, a door that should not be open.

= Tuning

- #item[Sizing a Count][Any Count, the Doom, a Journey, a raid: match the marks to the fill rate, or the name lies. #k[Imminent] 4, #k[Looming] 6, #k[Distant] 8. Never spend one bad roll twice, on the Check and the Count both.]
- #item[Buying Back Time][Optional. A major victory, toppling a lieutenant, sealing a gate, saving a province, restores one mark, never above the starting number.]
- #item[Harder or Softer][Fewer marks for dread, more for a slow saga. Hand out extra ticks freely to tighten the screw, or waive them to loosen it.]

#rolltable("1d8", "Signs of the End", note: [Telegraph a Decline step. Pick or roll one a tick before it lands.], (
  item[Red Sky][The sun rises wrong and the animals will not settle.],
  item[The Dead Walk Early][Undead turn up a dungeon level shallower than they should.],
  item[Sour Harvest][Food spoils fast. Rations cost double this season.],
  item[A Haven Falls][A town or ally you relied on is gone when you return.],
  item[The Roads Close][Travel is harder. Journey Counts start one mark shorter.],
  item[Deserters][A hireling or contact abandons you, too afraid to go on.],
  item[The Enemy Named][The doom's agent is seen in the open, bolder than before.],
  item[Too Quiet][No wandering monsters for a stretch, because something worse cleared them out.],
))

#pagebreak()

#rolltable("1d8", "What Is the Doom?", note: [Roll or pick the end the Count counts down to. Name it in a sentence, then draw the Count beneath it.], (
  item[The Pale Comet][Its light draws nearer, and where that light falls the dead rise and walk.],
  item[The Sleeping God][A god is dying in its sleep, and the world unravels thread by thread as it goes.],
  item[The Drowning][The sea climbs the land, a league of coast taken each season, and it does not stop.],
  item[The Last Verse][A sorcerer-king's rite to unmake death itself nears its final word.],
  item[The Guttering Sun][The sun dims one shade a year, and the coming winter will never break.],
  item[The Thing Beneath][Something vast wakes under the mountains, and the stone has begun to dream.],
  item[The Grey Tide][A plague of unmaking spreads, turning the living to dust and silence.],
  item[The Wound in the Sky][A rent opens overhead, and the old and hungry gods are coming home.],
))

#rolltable("1d8", "The Hand of the Doom", note: [Who or what serves it, the agent the Signs name and the Stronghold raids answer to. Pick one, or roll.], (
  item[The Prophet][A mad saint who welcomes the end and labors to hurry it on.],
  item[The Deathless][A lich or sorcerer-king who wrote the rite and means to outlast the world.],
  item[The Fallen Crown][A ruler who bargained to save the realm and damned it instead.],
  item[The Faceless][No single head, but a thousand hooded hands in court and cellar alike.],
  item[The Harbinger][A thing from outside, sent ahead to make the way ready.],
  item[The Betrayer][An ally you trust, or a power you courted, already turned.],
  item[The Hollow Legion][The risen dead themselves, needing no master to march.],
  item[No Hand at All][The Doom is a tide or a turning wheel, with no face to kill, only to outrun.],
))

#colbreak()

#rolltable("1d8", "The World After", note: [The dark age the Doom leaves, if you play on in it as a harder game. See Succession and the variant above.], (
  item[Ash and Ember][The land burned to cinders, and the survivors pick through the ash.],
  item[The Drowned Reach][Water over everything, life clinging to the high and dwindling places.],
  item[The Long Winter][An endless cold, the sun a dim coin, and nothing will grow.],
  item[Reign of the Dead][The risen hold the cities, and the living hide, scavenge, and run.],
  item[The Great Silence][Most are simply gone. The world stands empty and echoing.],
  item[The New Gods][The hungry powers rule in the open now, and come to collect their due.],
  item[The Shards][The world broken into drifting pieces, each one adrift with its own small doom.],
  item[Begun Again][The wheel turned to a dim dawn, and the survivors half-remember walking this road before.],
))
