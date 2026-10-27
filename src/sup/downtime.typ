#import "../../lib/24xx.typ": *

#show: xx.with(
  title: "AX&X: Hearth and Harvest",
  subtitle: "Downtime, healing, and living off the land. A downtime supplement for AX&X.",
  cols: 2,
)

= At the Hearth

A week in a Haven, call it a refuge, a sanctuary, or a safe town as you like, mends the body. The core already clears all HP and ends Injured for a week in town, so downtime is what the week is otherwise for. Each character takes #k[2 Downtime Actions] per haven week, and each follows one shape, like a harvest: what it spends, the roll if any, and what it wins.

- #item[Recover][Tend a lasting wound: fill a #k[Mending] mark, or two with a healer or an Infirmary. The free week already clears HP and Injured; this is for the hurts that outlast them. See Wounds and Mending.]
- #item[Work][A trade for the lean weeks: a Class or Lifepath Check, 12+, earns #k[2d6 x Level x 10] GP to live on. Wages buy bread and gear, not XP. Your Lifepath names the trade.]
- #item[Carouse][A bender, 2d6 x 10 GP a night and more in a city. Body save, 12+: win a boon, a rumor, a contact, or a step of Standing. Fail and roll the Carousing table. Gold bought XP when you hauled it to town, so this buys connection and trouble, not levels.]
- #item[Craft & Repair][Mend gear and shields, fletch ammunition, cut snares, brew poison or a Remedy, preserve a hunt. Needs the tools, and a Check only for something new.]
- #item[Study][Copy a scroll into the book, research a question, or learn a tongue. A Day to the scroll, as the core says; a harder lesson takes the week.]
- #item[Court][Work a power: shift one faction's Standing a step, chase a rumor to a lead, or call in a Tie. Factions and the core Ties table name who answers.]

The week has a price. A resupply stay between delves is free, as the Foretold Doom counts it, but a whole season at the hearth, or a long Mending, fills a mark of the Decline. Rest too long and the doom gains while you heal.

#rolltable("1d8", "Carousing", note: [Roll on a failed Body save after a bender.], (
  item[Robbed and Beaten][Your purse is gone, and you start the next delve at half HP.],
  item[A Brawl][A new Enemy who knows your face and your haunts.],
  item[A Dangerous Debt][You owe someone who collects: 2d6 x 100 GP.],
  item[Loose Lips][A rival or a Hostile power learns your next move.],
  item[Barred][A tavern, a guild, or a whole quarter closes to you. Drop a step of Standing.],
  item[A Rash Oath][You swore something drunk, and you are held to it.],
  item[A Rumor in the Haze][For all the mess, a true lead surfaced: a treasure, a threat, or a way in.],
  item[One of Us][You wake initiated into a cult or a secret society, for good or ill, the GM's call.],
))

= Wounds and Mending

The core mends the day to day: Bind Wounds, a night's sleep, a week's Haven. This is for the deeper hurts, the ones that outlast a night. It is the slow healing of 1st Edition, bent so that a maiming is a setback and not an ending, if you can get your friend home.

- #item[Convalescence][A lasting wound, a Maimed limb or a bad Exposure, carries a #k[Mending] Count of #k[2 to 6 weeks], the GM setting it by how bad. A week of true rest at a haven fills a mark; a healer, an Infirmary, or a course of Remedies fills two; a Cure spell skips the Count. When it fills, the Injured lifts: the scar stays, a lost eye or a limp the GM keeps, but you fight at full again.]
- #item[Escape First][The Count runs only where it is safe to lie still. A Maimed character carried out of the dungeon can mend; one who falls and is left behind cannot. Death in the dark is still death, so getting the wounded home is the new goal, and often the harder one.]
- #item[The Remedy][The herbalist's dose, gathered in the wild or bought at market: one use, heals 1d6 or ends one condition, no magic needed. A party without a Cleric lives on these, and a steady course of them is what mends a wound in half the weeks.]
- #item[First Aid][Once per wound, a WIS Check or a Thief or Cleric Class Check, 12+: steady a Grievous or Shaken ally at 1 HP without magic, or add #k[+1 Hit Die] to a patient's next night of healing. Bind it now, mend it later.]
- #item[The Infirmary][A haven's healer, shrine, or sickhouse. For a fee or a favor it tends the Injured and fills two Mending marks a week. A Favored power often keeps one, and a lost Haven takes it with them.]

= Living off the Land

A party between delves is a handful of armed vagrants. With a town near they buy bread and sleep under a roof. Out past the last farm there is no bread to buy and no work to take, so they eat what they can catch, dig, or snare, or they go hungry and heal nothing.

It leans on Travel and adds no new dice. A day in the wild is a #k[leg] or a #k[Day] like any other, and one #k[Provision Check] feeds the camp the way one Travel Check guides the march. The harvests differ, a line cast, a snare set, a deer run down, but each follows one shape: an ability and a yield, the ground it needs, when it fits the journey, and its catch.

== The Provision Check

Each day in the wild, a character may work the land instead of, or alongside, pressing on. Name the #k[harvest] and the one who works it. Only that one rolls, and the whole camp eats what comes of it.

- #item[The Roll][#k[1d20 + the harvest's ability modifier], 12+. The Country and the Season lift or drop it, as terrain bends a Travel Check. Another hand may Aid for +2.]
- #item[The Yield][A success makes #k[rations], food for that many travelers for one day, or for herbs a #k[Remedy]. Each harvest says how many it feeds. Several hands stack, and lean ground takes many to feed a party.]
- #item[While You Travel][Some work rides along with the journey and some spends the day, as each harvest says. A march still crawls at the #k[Cautious] pace while it forages, a ship trails a line as it sails, and aloft the land is out of reach, so an airship crosses on its stores alone.]
- #item[Failure][Nothing from that harvest today. Out of food, every traveler is Weakened and heals nothing until the camp is fed, as Travel and the core both warn.]

== The Country and the Season

Where and when you work the land bends the roll, the way the roads bend a Travel Check.

- #item[The Country][#k[Rich] forest, river shire, or green plain: +2, and game is thick #bar #k[Lean] hills, moor, or scrub: +0 #bar #k[Barren] mountain, desert, or salt waste: -2 to -4, and some harvests simply fail.]
- #item[The Season][Growing weather gives as the Country says. In #k[deep winter, drought, or dearth] drop the Country a step, and the green harvests, Forage and Herbs, fail under snow or dust. A verdant land in a hard winter is slow starvation for the unready.]
- #item[Exposure][Cold, storm, and wet bite the body. Without shelter and warm gear, a night in the open is a Body save, 12+, or Weakened until warm and dry, as a Forced March.]
- #item[Water][Fresh water is assumed where a stream runs. In waste or dry heat, finding it is a Forage of its own, or a Count that fills as the skins run dry.]

== The Harvests

Each reads in one order: the ability and what it feeds, the ground it needs, when it fits the journey, and its catch.

- #item[Forage][#k[WIS], feeds #k[1d4]. Roots, greens, nuts, and berries from wood and field. Worked on the march, at the #k[Cautious] pace. On a natural 1 a foul find hides in the basket: Body save or any who eat it are Poisoned.]
- #item[Hunt][#k[DEX] or #k[STR], feeds #k[1d6]. Needs a bow or a sling and country that holds game. A dedicated outing that spends the day or the leg. The kill carries far, so roll a wandering monster at once, on 1 to 2.]
- #item[Fish][#k[WIS], feeds #k[1d3]. Needs line and hooks and water to cast on. Worked at a shore camp, or over the rail of a ship underway for no cost to the leg. Quiet and sure, if slow.]
- #item[Trap][#k[Thief Class Check] or #k[INT], feeds #k[1d4]. Needs a set of snares and runs or burrows to lay them on. Set at dusk and read at dawn, so it costs no daylight and rides along with march or rest. The wild may claim the snares: recover them on a Check, or lose them.]
- #item[Gather Herbs][#k[WIS], yields a #k[Remedy], not food. Needs a herbalist's pouch and something growing. Worked on the march, like foraging. It fills no bellies, so another hand must still find the meal; the Remedy heals 1d6 or ends one condition once, or makes a poison. Full herb-lore is in Wounds and Mending.]

== Eating and Keeping

- #item[A Ration a Day][Each traveler eats one ration per Day or leg, bought in town or won from the land. A camp that cannot feed everyone goes short, and short camps heal nothing. Carried food fills slots like any good, a week's rations to the slot, or a few days of fresh meat dried and salted to the slot at the GM's call.]
- #item[Keep the Kill][Fresh meat feeds today and spoils by tomorrow. Salt or smoke it, a Craft task with the gear, to carry a good hunt forward as rations.]
- #item[Count or Wave][Counting rations by the head is the point, and the pressure, so keep it if you can. A table that would rather not may wave it: a good day feeds the camp, a bad one leaves it hungry and healing nothing.]
- #item[The Long Wait][Days spent provisioning or laid up in the wild pass like any downtime. The Foretold Doom does not care that you were only resting, and time bought from the land is still spent.]
