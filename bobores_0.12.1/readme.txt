This is a rather simple base mod to add more ore types to the game by Bobingabout.

Delete the migration folder if you don't want the ores to spawn automatically on old maps, instead use the following command to add them manually.
remote.call("bobores", "Regenerate")

V0.2 includes the 6 Dytech ores, Tin, Zinc, Tungsten, Zinc, Silver and Gold, with mining partacle effects. All with the same rarity as Copper.

v0.3 adds a few extras to it:
* Added Bauxite, an Aluminium ore. Can be used in F-Mod.
* Migration script adds new ores to existing maps automatically.
* Also added a command to add ores manually. Enter the following in the console: remote.call("bobores", "Regenerate_Ore")
* Tweaked all the spawn and richness values, to make some ores rarer than others.

For comparison reasons, here are the spawn rate values for the default ores.
Iron: Richness 350, Spawns at noise Peaks 0.65 and 0.57
Copper: Richness 350, Peaks 0.65 and 0.55
Coal: Richness 350, Peaks 0.65 and 0.5
Stone: Richness 250, Peaks 0.4(Resulting in smaller fields)

These are my settings, listed in order of what should be the most abundent of the new resources, to the least.
Bauxite: Richness 150, Peaks 0.6 and 0.5
Tin: Richness 150, Peaks 0.6 and 0.5
Zinc: Richness 75, Peaks 0.55 and 0.45
Lead: Richness 60, Peaks 0.55 and 0.45
Tungsten: Richness 50, Peaks 0.5 and 0.45
Silver: Richness 50, Peaks 0.5 and 0.4
Gold: Richness 40, Peaks 0.5 and 0.4

With these settings, Common ores like Bauxite and Tin can be in fields almost as large as Copper and Iron, but the fields are about half as abundant.
Ores like gold and silver are quite small and rare, in sizes similar to stone, but with only a 5th of the material, but can still have a few thousand units in a patch.
With extreme map generation ore placement settings, these can still give some massive fields, and even the rare ores can be quite big.


V0.4:
* Added Rutile (Titanium ore), can be used in F-Mod.
* Renamed "Bauxite ore" to just "Bauxite"
* Even more spawn tweaks.

Rutile: Richness 50, Peaks 0.55 and 0.45 (Between lead and tungsten)


v0.4.1
* All my ore values were set to stack to 64, this might break DyTech a little, since it stacks to 256. So I added an exception to stack to 256 if DyTech is installed.
* Changed the map overlay colour for Tin, Tungsten and Zinc to make them better match the ore colours.
* Even more spawn tweaks.
* Implemented "Friend or foe" resource spawn relationships, so they're more likely to spawn near some ores, and less likely to spawn near others.
  it won't stop them spawning near a "Foe" resource (Like Iron and Copper still spawn next to each other even though they reduce each others spawn rates in base)
  but will increase the chance of them spawning near a friend, but not guarantee it.


Tin: Richness 250, Peaks 0.65 and 0.55
Zinc: Richness 225, Peaks 0.65 and 0.55

Lead: Richness 200, Peaks 0.6 and 0.5
Bauxite: Richness 175, Peaks 0.6 and 0.5
Tungsten: Richness 150, Peaks 0.6 and 0.5

Silver: Richness 125, Peaks 0.55 and 0.45
Rutile: Richness 100, Peaks 0.55 and 0.45
Gold: Richness 75, Peaks 0.55 and 0.45


v0.4.2
* Added tweaks to stone ore to make the fields larger.
* Changed all peak influence to 0.65 and 0.55.
* Added Exception if F-Mod is installed, but DyTech is not to make Tin Ore drop Cassiterite. (F-Mod's Tin Ore)
* Changed the console command to: remote.call("bobores", "Regenerate")
* Changed spawn priority to: Tin, Zinc, Tungsten, Silver, Gold, Bauxite, Lead, Rutile.


v0.5.0
* Added Quartz
* Changed the graphics and map colour of Tungsten from black to brown
* Changed the graphics and map colour of Zinc from grey to bright turquise
* Changed the graphics and map colour of Lead From blue to black
* Removed the new ores except Tin from being able to apear in the starting area


Tin: Richness 300

Silver: Richness 275
Gold: Richness 250
Quartz: Richness 250
Zinc: Richness 225

Lead: Richness 200
Bauxite: Richness 175
Tungsten: Richness 150
Rutile: Richness 125


v0.5.1
* Renamed Lead Ore Resource to Galena, since mining will yield both Lead and Nickel ore items.
* Added a new catagory for new ores to the intermediates tab.


v0.5.2
* Removed Cassiterite overide, added tin ore -> cassiterite and cassiterite -> tin ore recipies (Due to other mods changing it's just easier this way)
* Added DyTech Metalurgy as optional prerequisite to force overide.
* Instead of the FMod and no DyTech "Tin ore drops Cassiterite" overide, Tin ore will always drop Tin ore now, however there is a new recipe added to convert tin ore into cassiterite and vica verca for F-Mod compatability.


v0.5.3
* Changed ore stacks to be 10 base instead of 2 base.
* Changed Galena to drop Lead 100% of the time and Nickel 75%.
* Added Icon overide
 for Iron ore and Stone to use old icons (Since I made my icons to match that style)


v0.6.0
* Lead(Galena) and Quartz are now available in the starting area in small quantities
* All new ores normally apears in smaller patchs, with retuned figures
* All new ores now have modified hardness and mining times making some more difficult to mine than others. 
* New Optional Nickel ore, Cobalt ore and Sulfur fields added.
* New config file added to control Nickel, Cobalt and Sulfur.
* Removed the Cassiterite recipes, and added a tin overide option in the config file


v0.6.1
* Added infinite ore option to config file.
* Included a check to see if Iron Ore and Stone exist before replacing the icon to prevent a crash if you're using a mod that removes them.


v0.6.2
* Added optional Gem ore (incomplete, do not use)
* Updated for Factorio V0.11


v0.6.3
* Fixed Multiplayer Migration script compatability
* Fixed Quartz starting area values


v0.6.4
* Added new dytech overide.
* Added german translation


v0.6.5
* Adds Russian translation (for content up to V0.6.4)
* Adds T2 to T5 mining drills
* Adds Large area mining drills, T2 to T5
* Adds T2 to T5 Pumpjacks
* Adds Obsidian to the Cobalt drop table if Obsidian exists


v0.6.6
* Added Brass, Titanium and Tungsten mining axes.
* Turned on Gems by default, they will be of use in MCI v0.7.9.


v0.6.7
* Added Cobalt steel mining axe
* Added Diamond mining axe
* Added optional gem ore drops from Coal, Bauxite and Quartz.
* Added multi-ore fix for mining drills

