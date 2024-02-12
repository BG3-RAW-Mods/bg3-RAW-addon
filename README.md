# BG3 RAW addon

This mod is an addon to [Zerd's Rules As Written](https://github.com/ZerdBG3/RAW) for Baldur's Gate 3.
Every changes will be proposed as a pull request to Zerd's repository. If accepted, they will be removed from this addon.

It follows the same principles than Zerd's RAW and tries to be as close as possible to D&D 5th edition ruleset.
While it can be used without the former, it is highly encouraged to use it.

## Requirement

- [Norbyte's Baldur's Gate 3 Script Extender](https://www.nexusmods.com/baldursgate3/mods/2172)
- [Community Library](https://www.nexusmods.com/baldursgate3/mods/1333)
- [Compatibility Framework](https://www.nexusmods.com/baldursgate3/mods/1933)

I'm doing my best to improve compatibility with other mods. CF is a fantastic way to prevent mod conflicts.

## Installation

I recommend using [BG3ModManager](https://github.com/LaughingLeader/BG3ModManager).
I would put RAW mods on the bottom of order list, just before CompatibilityFramework.

## User-config

You can create this file if it doesn't exist: `%localappdata%\Larian Studios\Baldur's Gate 3\Script Extender\ModOptions.json`.

Each UUID is a mod configuration and its value is mod configuration. You can copy and paste the following block:
```json
{
	"a5799115-ef11-457b-92cd-2c927de09b02": {
		"RacialTraits": { "enabled": true, "value": "PHB" },
		"Classes": { "enabled": true },
		"Encumbrance": { "enabled": true, "value": "Mix" },
		"Jump": { "enabled": true },
		"Monsters": { "enabled": true },
		"ItemWeapon": { "enabled": true },
		"ItemWeight": { "enabled": true },
		"ItemPotion": { "enabled": true, "value": 7 },
		"ItemPoison": { "enabled": true, "value": 15 },
		"Spells": { "enabled": true },
		"Feats": { "enabled": true },
		"CustomRules": { "enabled": true }		
	}
}
```

## Features

### Racials

I have restored races abilities and traits. There are 2 possible values (config value in parenthesis):
- PHB *(PHB)*
- Tasha's Cauldron *(Tasha)*

BG3 was initially using PHB then switched to Tasha's Cauldron. However, it didn't respect the new rule and gave every races +2/+1. I have implemented the exact rule which gives the same increase in numbers but you chan choose attributes now:
- Human and Variant Human don't have any change.
- Shield Dward get +2/+2
- Half-Elf get +2/+1/+1
- All others get +2/+1

#### Half-Elf

Half-Elf subraces are a shortcut to PHB, which results in missing choices. I have added Half-Elf Versatility with subraces. Not the best implementation, but the most user-friendly considering the limitations of character creation:
- Skill Versatility (General). You gain proficiency in two skills of your choice.
- Elf Weapon Training (High or Wood Elf Heritage). You have proficiency with the longsword, shortsword, shortbow, and longbow.
- Cantrip (High Elf Heritage). You know one cantrip of your choice from the wizard spell list. Intelligence is your spellcasting ability for it.
- Fleet of Foot (Wood Elf Heritage). Your base walking speed increases to 35 feet (10.5m).
- Drow Magic (Dark Elf Heritage). You know the Dancing Lights cantrip. When you reach 3rd level, you can cast Faerie Fire once, and it recharges after a long rest. When you reach 5th level, you can cast Darkness once, and it recharges after a long rest. Charisma is your spellcasting ability for these spells.

#### Variant Human

Variant Human has been added as human's subrace. Most feats are available. For half-feat, I have chosen the most relevant ability score increase. It may not fit everyone and it is possible to create 2 versions. For example, Athlete Strength, Athlete Dexterity.

Please note that these requirements are not listed in description. I might add them in a future release:

| Feat                      | Requirement                       |
| ------------------------- | --------------------------------- |
| Defensive Duelist         | Dexterity: 13+                    |
| Moderately Armored        | Light Armor proficiency           |
| Heavily Armored           | Medium Armor proficiency          |
| Heavy Armor Master        | Heavy Armor proficiency           |
| Medium Armor Master       | Medium Armor proficiency          |

Human racials have been transfered to standard human's subrace. However, this created an issue for all other humans that would loose their racials.
As Human only get +1 to all ability scores, I have put this in Human race. Then, Variant Human get -1 to all ability scores. I think it is easier this way, instead of changing every race references by standard human subrace.

### Jump

I didn't implement Long and High Jump because it would make jumps too complex and high jump would probably be useless in BG3. However, this is still something I might consider in a future release. With High Jump "neutralized", it would make Fly and Teleport more powerful. They were already powerful, but Jump was so powerful that it could almost do the same thing for free.

For now, I have updated Jump to match Long Jump Range. On top of that, Jump now cost movement instead of bonus action. 

As a result, Jump range is roughly divided by 2, there are many jumps you won't make without a ritual spell like Enhanced Leap.
Even high strength characters won't fly over the battlefield. While Enhanced Leap would allow them to jump about 20 meters, they are still limited by their movement speed. 9 meters by default for most, 18 with dash. It opens a possibility for a 18m jump using dash and enhanced leap.

Please note there are several jumps that now impossible without Enhanced Leap.

Remarkable Athlete has been adjusted to 1 foot per strength modifier.

Athlete feat has been changed. In RAW, you can make a long jump after moving 1.5m instead of 3. Since it is not implemented, it increases jump range by 1.5m.

Barbarian Tiger Jump has been changed from 4.5 to 3m.

### Spell changes

- Mage Hand, 10 turns duration
- Knowledge of the Ages, proficiency in one skill for 100 turns
- Astral Knowledge, proficiency in one skill until long rest

Concentration has been added to these spells:
- Flame Blade
- Conjure Minor Elemental
- Conjure Woodland Being
- Conjure Elemental

### Class adjustements

#### Sorcerer

- Sorcerers gain two Metamagic options of your choice at level 3. You gain another one at 10th.
- Tempestuous Magic, fly range reduced to 3m
- Dragon Wings, distance is based on movement speed, without armor, and at level 14 (so removed from game)
- Draconic Blood, ancestry's spell removed
- Storm Sorcerey, level 6 free spells removed

#### Warlock

- Repelling Blast, distance is 3m, not 4.5m

#### Cleric

- Warding Flare uses wisdom modifier (instead of unlimited uses)

#### Bard

- Bardic Inspiration uses charisma modifier (instead of a set number)

#### Druid

- Symbiotic Entity, last for 10 minutes (100 turns), bonus damage only applies to melee weapons

#### Rogue

- Second-Story Work, adds an increased jump distance based on dexterity modifier  

### Weapon fixes

- Torch is not a weapon, it only deals 1 fire damage (no ability modifier).

I have updated range weapons to make them closer to RAW:

| Weapon         | WR BG3 | DR BG3 | WR RAW | DR RAW | WR Diff | WR Mod | DR Mod |
| -------------- | ------ | ------ | ------ | ------ | ------- | ------ | ------ |
| Throw weapon   | 18     |        | 6      |        |  12     | 6      |        |
| Dart           | 12     | 30     | 6      | 18     |   6     | 6      | 18     |
| Sling          | 14     | 30     | 9      | 36     |   5     | 9      | 30     |
| Hand Crossbow  | 14     | 30     | 9      | 36     |   5     | 9      | 30     |
| Light Crossbow | 18     | 30     | 24     | 97     |  -6     | 18     | 30     |
| ShortBow       | 18     | 30     | 24     | 97     |  -6     | 18     | 30     |
| Heavy Crossbow | 22     | 30     | 30     | 121    |  -8     | 22     | 30     |
| LongBow        | 25     | 30     | 45     | 182    | -20     | 30     | 30     |

WR: Weapon Range, DR: Damage Range (max range with disadvantage)
Last columns show chosen values.

Maximum range will be kept at 30 to prevent AI issue.

### Item weights

I have adjusted most items to RAW valuess:

| Item             | Game | RAW (kg) | Diff |
| ---------------- | ---- | -------- | ---- |
| Plate            | 20   | 29,48    | 9,48 |
| Scale mail       | 12   | 20,41    | 8,41 |
| Splint           | 19   | 27,21    | 8,21 |
| Chain mail       | 18   | 24,94    | 6,94 |
| Half plate       | 12   | 18,14    | 6,14 |
| Silver metal bar | 1    | 4,54     | 3,54 |
| Ring mail        | 17   | 18,14    | 1,14 |
| Bronze metal bar | 1    | 1,81     | 0,81 |
| Shield           | 2    | 2,72     | 0,72 |
| Crossbow hand    | 0,9  | 1,36     | 0,46 |
| Thieves Tool     | 0,2  | 0,45     | 0,25 |
| Trap Disarm      | 0,2  | 0,45     | 0,25 |
| Arrow            | 0,1  | 0,23     | 0,13 |
| Grenade          | 0,1  | 0,23     | 0,13 |
| Potion           | 0,1  | 0,23     | 0,13 |

Additionally, Flame Blade and Pact weapons will their corresponding item weights.

### Encumbrance

BG3 is very far from RAW and I think it was for QoL reason. Still, I was choked to see how easy it is to wear heavy armor, even for a 8 strength mage with one dip into any heavy armor class. Also, your party can loot a whole dungeon without any carrying issue, so carry weight almost become a non issue.

System measurement Metric (in BG3 option) is the most accurate because Imperial conversion rate is rounded and so wrong. Fortunately, game's data use metric.
Every measure are in kg and all values come from RAW (there, it is imperial measure).

**First change**: your carrying capacity is your Strength score multiplied by 6.8. Compared to vanilla, this is roughly 50% less in carry weight.

BG3 partially use Variant: Encumbrance optional rule but it is far less strict than PHB.

**Encumbered status have been updated to RAW**:
| Status              | BG3                                                            | RAW                                        |
| ------------------- | -------------------------------------------------------------- | ------------------------------------------ |
| Lightly encumbered  | Movement cost 50% more, Jumping distance halve, Walk           | Movement distance reduced by 3m            |
| Heavily encumbered* | Movement cost 200% more, Jumping distance reduced to 0, Stroll | Movement distance reduced by 6m, Walk**    |

 * already applied by BG3: disadvantage on ability checks, attack rolls, and saving throws that use Strength, Dexterity, or Constitution.

 ** RAW doesn't specify that you can't run while beeing heavily encumbered, but I think it should be obvious.

There are 3 options here, numbers are relative to carry weight:

| Config value | Lightly enc. | Heavily enc. | Str HA | Comment                                                     |
| ------------ | ------------ | ------------ | ------ | ----------------------------------------------------------- |
| Standard     | 81%          | 93%          | Yes    | Encumbrance ratio are identical to vanilla, easiest setting |
| Variant      | 33%          | 66%          | No     | Hardest setting, I don't recommend it                       |
| Mix          | 51%          | 81%          | Yes    | A mix of both rules, medium and default setting             | 

- Str HA is Strength requirement for Heavy Armor 
- Standard is RAW for Strength requirement for Heavy Armor. I have kept BG3 encumbrance ratio with RAW carry weight.
- RAW Variant: Encumbrance rule is very difficult to play. You have been warned !
- Mix is an alleviated Variant rule with added Heavy Armor requirement. I think it is the best compromise.

### Feats

- Actor gives advantage instead of proficiency plus expertise

### Potions

Core changes:
- set PHB durations
- healing potion doesn't remove Burning

You can enable optional rules with config value:

| Config value | Action | Price | Throw |
| ------------ | ------ | ----- | ----- |
| 1            |    X   |       |       |
| 2            |        |   X   |       |
| 3            |    X   |   X   |       |
| 4            |        |       |   X   |
| 5            |    X   |       |   X   |
| 6            |        |   X   |   X   |
| 7            |    X   |   X   |   X   |

- Action: potions now use an action
- Price: set PHB Prices, may break economy since expensive loots are very abundant
- Throw: throwing a potion doesn't apply its effect. PHB clearly says "When you drink this potion..."

### Poisons

Core changes:
- set PHB durations
- you can administering a potion to another character with an action

You can enable optional rules with config value:

| Config value | Action | Price | Throw | Damage |
| ------------ | ------ | ----- | ----- | ------ |
| 1            |    X   |       |       |        |
| 2            |        |   X   |       |        |
| 3            |    X   |   X   |       |        |
| 4            |        |       |   X   |        |
| 5            |    X   |       |   X   |        |
| 6            |        |   X   |   X   |        |
| 7            |    X   |   X   |   X   |        |
| 8            |        |       |       |   X    |
| 9            |    X   |       |       |   X    |
| 10           |        |   X   |       |   X    |
| 11           |    X   |   X   |       |   X    |
| 12           |        |       |   X   |   X    |
| 13           |    X   |       |   X   |   X    |
| 14           |        |   X   |   X   |   X    |
| 15           |    X   |   X   |   X   |   X    |

- Action: poisons now use an action
- Price: set PHB Prices, may break economy since expensive loots are very abundant
- Throw: throwing a poison doesn't apply its effect. Most poisons are apply by injury (a creature that takes piercing or slashing damage from an object coated with the poison is exposed to its effects)
- Damage: set PHB damage for all poisons. It might be overpowered because it is easy to get powerful poisons and a poison lasts 10 turns

| Poison              | BG3  | RAW  |
| ------------------- | ---- | ---- |
| Serpent Venom Toxin | 1d6  | 3d6  |
| Wyvern Toxin        | 1d8  | 7d6  |
| Purple Worm Toxin   | 1d10 | 12d6 |

### Monsters

Restored PHB abilities and stats. I also made my own version of weak monsters in Nautiloid, which will prove to be much more challenging. As an example, Imp regained most of their dexterity and all resistances. So they are harder to hit, more difficult to kill and damage you a lot more:
- Imp
- Intellect Devourer
- Hell Boar

### Custom Ruleset defaults

RAW changes:
- Hide NPC health
- Hide failed perception rolls
- Hide passive rolls in dialogues
- Hide difficulty class during rolls

Other changes:
- Enemy aggression: Tactician
- Camp cost multiplier: 1.5
- Trader price multiplier: 3

## Future plans

### Potions

- you can administering a potion to another character with an action

### High level class abilities

Many high level class abilities were introduced in the game, either in their true form, either in a toned down form.
Following RAW, I have removed all of them. But it could be an optional rule. 
Also, it seem to be a random pick, maybe based on class performance. Draconic Sorcerer got his Wings at level 11 instead of 14, but Evocation Wizard didn't get Overchannel which is also a level 14 ability.

### Monk

Adjusted Ki and Unarmed damage table:
| Level | BG3 Ki | RAW Ki | BG3 DMG | RAW DMG |
| ----- | ------ | ------ | ------- | ------- |
|  1    |  2     |  0     | 1d4     | 1d4     |
|  2    |  3     |  2     | 1d4     | 1d4     |
|  3    |  4     |  3     | 1d6     | 1d4     |
|  4    |  5     |  4     | 1d6     | 1d4     |
|  5    |  6     |  5     | 1d6     | 1d6     |
|  6    |  7     |  6     | 1d6     | 1d6     |
|  7    |  8     |  7     | 1d6     | 1d6     |
|  8    |  9     |  8     | 1d6     | 1d6     |
|  9    | 10     |  9     | 1d8     | 1d6     |
| 10    | 11     | 10     | 1d8     | 1d6     |
| 11    | 12     | 11     | 1d8     | 1d8     |
| 12    | 13     | 12     | 1d8     | 1d8     |

- All Ki ability source DC uses Wisdom instead of Strength/Dexterity
- Bonus Unarmed Attack is unlocked if you still have your bonus action
- Flurry of Blows: immediately after you take the Attack action on your turn, you can spend 1 ki point to make two unarmed strikes as a bonus action. It is now a temporary ability, hidden if you don't have any Ki Point or Bonus Action. RAW implementation: allows you to make 2 unarmed attacks.
- Step of the Wind: you can spend 1 ki point to take the Disengage or Dash action as a bonus action on your turn and your jump distance is doubled for the turn.
- Patient Defense: *immobilized* will remove Dodge status (used by this ability). 
- Deflect Missiles: Clarify names and tooltips for better understanding between the 2 parts: deflect and throw back
- Deflect Missiles: Throwing back is now impossible if target is above 18m
- Deflect Missiles: Throwing back has disadvantage if target is above 6m
- Slow Fall: you can use your reaction when you fall to reduce any falling damage you take by an amount equal to five times your monk level. Additionally, you land prone unless you avoid taking damage from the fall (this last part is not implemented yet).
- Stunning Strike is now a reaction with a passive toggle
- Stillness of Mind (passive): triggers automatically if you are charmed but not frightened. So you can still choose to attack even if frightened.
- Stillness of Mind: added as an action to allow manual use to remove frightened

#### Unarmored Movement (level 9)
RAW: you gain the ability to move along vertical surfaces and across liquids on your turn without falling during the move.
BG3: you gain immunity to all difficult terrains and your jump distance is increased by 6m.

BG3 doesn't allow vertical movement, so I'm not sure how to implement this feature. It should allow Monk to climb wall or cliffs.
It should not give immunity to difficult terrains, only allow you to walk over water surfaces.

#### Open Hand
- Open Hand Techniques are now reactions with a passive toggle that can trigger on Flurry of Blows attacks
- Open Hand Technique: push, distance set to 4.5m instead of 5m
- Wholeness of Body: removed everything but Heal part
- Manifestation (Body, Mind, Soul): removed as it doesn't exist in PHB
- Tranquility: lasts until long rest
- Ki Resonation: removed as it doesn't exist in PHB (see below)
 
BG3: Ki Resonation, level 9, 2 Ki Points, 3d6 force damage AOE 5m (DEX saves for none).
RAW: Quivering Palm, level 17, 3 Ki Points, kill target (CON saves for 10d10 necrotic damage).

Suggestion: Lesser Quivering Palm, level 9, 2 Ki Points, 5d10 necrotic damage (CON saves for half).

#### Shadow
- Removes Shadow Arts: Hide, doesn't exist in PHB
- Cloak of Shadows is granted at level 11 instead of 5
- Removed Shadow Strike, doesn't exist in PHB

#### Way of the Four Elements
- You know the Elemental Attunement discipline and one other elemental discipline of your choice. You learn one additional elemental discipline of your choice at 6th and 11th level. Whenever you learn a new elemental discipline, you can also replace one elemental discipline that you already know with a different discipline.

- Fangs of the Fire Snake, 1 KP, when you use the Attack action on your turn, you can spend 1 ki point to cause tendrils of flame to stretch out from your fists and feet. Your reach with your unarmed strikes increases by 10 feet for that action, as well as the rest of the turn. A hit with such an attack deals fire damage instead of bludgeoning damage, and if you spend 1 ki point when the attack hits, it also deals an extra 1d10 fire damage.
- Fist of Four Thunders, 2 KP, cast Thunderwave.
- Fist of Unbroken Air, 2 KP, you can create a blast of compressed air that strikes like a mighty fist. As an action, you can spend 2 ki points and choose a creature within 30 feet of you. That creature must make a Strength saving throw. On a failed save, the creature takes 3d10 bludgeoning damage, plus an extra 1d10 bludgeoning damage for each additional ki point you spend, and you can push the creature up to 20 feet away from you and knock it prone. On a successful save, the creature takes half as much damage, and you don't push it or knock it prone.
- Rush of the Gale Spirits, 2 KP, cast Gust of Wind.
- Shape the Flowing River, 1 KP, as an action, you can spend 1 ki point to choose an area of ice or water no larger than 30 feet on a side within 120 feet of you. You can change water to ice within the area and vice versa, and you can reshape ice in the area in any manner you choose. You can raise or lower the ice's elevation, create or fill in a trench, erect or flatten a wall, or form a pillar. The extent of any such changes can't exceed half the area's largest dimension. For example, if you affect a 30-foot square, you can create a pillar up to 15 feet high, raise or lower the square's elevation by up to 15 feet, dig a trench up to 15 feet deep, and so on. You can't shape the ice to trap or injure a creature in the area.
- Sweeping Cinder Strike, 2 KP, cast Burning Hands.
- Water Whip, 2 KP: you can spend 2 ki points as an action to create a whip of water that shoves and pulls a creature to unbalance it. A creature that you can see that is within 30 feet of you must make a Dexterity saving throw. On a failed save, the creature takes 3d10 bludgeoning damage, plus an extra 1d10 bludgeoning damage for each additional ki point you spend, and you can either knock it prone or pull it up to 25 feet closer to you. On a successful save, the creature takes half as much damage, and you don't pull it or knock it prone.

- Clench of the North Wind, 6th Level, 3 KP, Hold Person
- Gong of the Summit, 6th Level, 3 KP, cast Shatter.

- Flames of the Phoenix, 11th Level, 4 KP, cast Fireball.
- Mist Stance, 11th Level, 4 KP, cast Gaseous Form, targeting yourself.
- Ride the Wind, 11th Level, 4 KP, cast Fly, targeting yourself.

- Breath of Winter, 17th Level, 6 KP, cast Cone of Cold.
- Eternal Mountain Defense, 17th Level, 5 KP, cast Stoneskin, targeting yourself.
- River of Hungry Flame, 17th Level, 5 KP, cast Wall of Fire.
- Wave of Rolling Earth, 17th Level, 6 KP, cast Wall of Stone.

### Druid

Wildshape CR rating:
| Level | Circle of the Moon | Other Circle |
| ----- | ------------------ | ------------ |
|  2    | 1                  | 1/4          |
|  3	| 1                  | 1/4          |
|  4	| 1					 | 1/2          |
|  5	| 1					 | 1/2          |
|  6	| 2					 | 1/2          |
|  7	| 2					 | 1/2          |
|  8	| 2					 | 1            |
|  9	| 3					 | 1            |
|  10	| 3					 | 1            |
|  11	| 3					 | 1            |
|  12	| 4					 | 1            |

Note: Remember that Druids (including Moon Druids) can't take forms with a swim speed until level 4, and can’t take forms with a fly speed until level 8.

Wild Shape Forms by CR:
| CR   | Beasts                                                                       |
| ---- | ---------------------------------------------------------------------------- |
| 0    | Badger, Cat, Eagle, Owl, Raven                                               |
| 1/4  | Boar, Elk, Giant Wolf Spider, Panther, Velociraptor, Wolf                    |
| 1/2  | Ape, Black Bear, Giant Goat, Warhorse                                        |
| 1    | Brown Bear, Dire Wolf, Giant Eagle, Giant Hyena, Giant Spider, Giant vulture |
| 2    | Aurochs, Giant Elk, Polar Bear, Quetzalcoatlus, Saber-Toothed Tiger          |
| 3    | Ankylosaurus, Giant Scorpion, Spotted Lion                                   |
| 4    | Elephant, Stegosaurus                                                        |

## Credits

- BG3 Discord Modding community (lostsoul, Velnir, Athera, ghostboats, hinikuya, JuuM)
- Zerd for RAW which gave me inspiration and its config system
- Community Library and Compatibility Framework
- jellytajm for Monk SlowFall damage reduction

## Known bugs

- Throwing Wyvern Poison still works when disabled, can't find a way to fix this
- Variant Human Skilled Expert subrace not working yet
- Administering a potion is not implemented yet. It is something I want to replace throwing but changing RootTemplate is sensible.