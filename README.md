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

Classes PAKs (monk, druid) should be installed after RAW-addon. Only install them if you want these classes changes.

**Don't install RAW-addon-debug. It is meant for testing purpose. It allows you to reach level 12 by killing a few monsters.**

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
		"ItemWeapon": { "enabled": true },
		"ItemWeight": { "enabled": true },
		"ItemPotion": { "enabled": true, "value": 7 },
		"ItemPoison": { "enabled": true, "value": 15 },
		"Spells": { "enabled": true },
		"Feats": { "enabled": true }
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

### Partial Rest

BG3: Restores 50% of all resources.

RAW: since it doesn't exist, it has been renamed to *Story Rest*. It doesn't restore anymore but it allows to rest to progress through story when necessary.

### Short Rest

BG3: heals 50% of Max HP.

RAW: A character can spend one or more Hit Dice at the end of a short rest, up to the character’s maximum number of Hit Dice, which is equal to the character’s level. For each Hit Die spent in this way, the player rolls the die and adds the character’s Constitution modifier to it. The character regains hit points equal to the total. The player can decide to spend an additional Hit Die after each roll. At the end of a long rest, a character regains spent Hit Dice, up to a number of dice equal to half of the character’s total number of them (minimum of one die). 

Implementation: during short rest (requires Zerd RAW Short Rest), you can cast Tend to your wounds, which heals 25% of Max HP. You can use it twice per long rest. If you have Durable feat, it become 33% of Max HP.
This is as close as possible to RAW. Hit dice implementation is hard for several reasons including multiclass. Durable feat can't be RAW without true hit dice.

### Jump

I didn't implement High Jump because RAW would probably make it useless in BG3. However, this is still something I might consider in a future release. With High Jump "neutralized", it would make Fly and Teleport more powerful. They are already powerful, but BG3 Jump is so powerful that it can almost do the same thing for free.

For now, I have updated Jump to match Long Jump Range. On top of that, Jump now cost movement instead of bonus action. Additionally, a long jump requires to move 3 meters. If not, it will be a simple jump (half distance).
When you land in difficult terrain, you must succeed on a DC 10 Dexterity (Acrobatics) check to land on your feet. Otherwise, you land prone.

As a result, Jump range is roughly divided by 2 and twice more if you didn't move 3 meters, there are many jumps you won't make without a ritual spell like Enhanced Leap.
Even high strength characters won't fly over the battlefield. While Enhanced Leap would allow them to jump about 20 meters, they are still limited by their movement speed. 9 meters by default for most, 18 with dash. It opens a possibility for a 18m jump using dash and enhanced leap.

Remarkable Athlete has been adjusted to 1 foot per strength modifier.

Athlete feat has been changed. you can make a long jump after moving 1m instead of 3m. It is 1.5m in RAW, but I couldn't do it for technical reasons.

Barbarian Tiger Jump has been changed from 4.5m to 3m.

### Spell changes

- Mage Hand, 10 turns duration
- Knowledge of the Ages, proficiency in one skill for 100 turns
- Astral Knowledge, proficiency in one skill until long rest
- Thunderwave push away 3m instead of 8m
- Gust of Wind push away 4.5m instead of 5m (since BG3 seems to round up, it won't make a difference), affected targets double their movement cost. It should be when moving toward the caster, but I don't know how to do that.

Concentration has been added to these spells:
- Flame Blade
- Conjure Minor Elemental
- Conjure Woodland Being
- Conjure Elemental
- Gust of Wind

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

[Bard changes](Bard.md)

#### Rogue

- Second-Story Work, adds an increased jump distance based on dexterity modifier  

#### Monk

[Monk changes](Monk.md)

#### Druid

[Druid changes](Druid.md)

#### Barbarian

[Barbarian changes](Barbarian.md)

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

It is a standalone PAK without any requirement, it makes rules closer to PnP:
- Hide NPC health
- Hide failed perception rolls
- Hide passive rolls in dialogues
- Hide difficulty class during rolls

## Future plans

### Potions

- you can administering a potion to another character with an action

### High level class abilities

Many high level class abilities were introduced in the game, either in their true form, either in a toned down form.
Following RAW, I have removed all of them. But it could be an optional rule. 
Also, it seem to be a random pick, maybe based on class performance. Draconic Sorcerer got his Wings at level 11 instead of 14, but Evocation Wizard didn't get Overchannel which is also a level 14 ability.

## Credits

- BG3 Discord Modding community (lostsoul, Velnir, Athera, ghostboats, hinikuya, JuuM, GabeCamomescro, Headbobbie)
- Zerd for RAW which gave me inspiration and its config system
- Zerd Discord community (dr kekyll, Celes)
- Community Library and Compatibility Framework
- jellytajm for Monk SlowFall damage reduction

## Known bugs

- Variant Human Skilled Expert subrace not working yet
