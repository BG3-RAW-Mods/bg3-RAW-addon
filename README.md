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

## Features

### Racials

I have restored races abilities and traits, pretty much like it was before release.
Wood Half-Elf lost their proficiency in stealth because they already get movement speed bonus. PHB clearly states it is only one trait.

### Jump

I didn't implement Long and High Jump because it would make jumps too complex and high jump would probably be useless in BG3.
Instead, I have updated Jump to match Long Jump Range. On top of that, jump now cost movement instead of bonus action. 

As a result, Jump range is roughly divided by 2, there are many jumps you won't make without a ritual spell like Enhanced Leap.
Even high strength characters won't fly over the battlefield. While Enhanced Leap would allow them to jump about 20 meters, they are still limited by their movement speed. 9 meters by default for most, 18 with dash. It opens a possibility for a 18m jump using dash and enhanced leap.

Please note there are several jumps that now impossible without Enhanced Leap.

Remarkable Athlete has been toned down from 3 to 1.5m, because it is supposely 1 feet per strength modifier, which is more likely to be 4 or 5 feet at this point. Of course, if you play a dexterity champion, this makes no sense.

Athlete feat has been changed. In RAW, you can make a long jump after moving 1.5m instead of 3. Since it is not implemented, it increases jump range by 1.5m.

Barbarian Tiger Jump has been changed from 4.5 to 3m.

### Spell changes

- Mage Hand, 10 turns duration
- Tempestuous Magic, fly range reduced to 3m

Concentration has been added to these spells:
- Flame Blade
- Conjure Minor Elemental
- Conjure Woodland Being
- Conjure Elemental

### Weapon Range

I have made changes to make it closer to RAW:

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

### Carry weight and item weights

BG3 is very far from RAW and I think it was for QoL reason. Still, I was choked to see how easy it is to wear heavy armor, even for a 8 strength mage with one dip into any heavy armor class.
Your party can loot a whole dungeon without any carrying issue so carry weight almost become a non issue.

I have implemented **Variant: Encumbrance** rule:
- if you carry weight in excess of 5 times your Strength score, you are encumbered, which means your speed drops by 10 feet.
- if you carry weight in excess of 10 times your Strength score, up to your maximum carrying capacity, you are instead heavily encumbered, which means your speed drops by 20 feet and you have disadvantage on ability checks, attack rolls, and saving throws that use Strength, Dexterity, or Constitution.

System measurement Metric (in BG3 option) is the most accurate because Imperial conversion is wrong.

| Stength | BG3 | New game value      | Light encumbrance      | Heavy encumbrance      |
| ------- | --- | ------------------- | ---------------------- | ---------------------- |
| 8       | 120 | 54                  | 18                     | 36                     |
| 9       | 130 | 61                  | 20                     | 41                     |
| 10      | 140 | 68                  | 23                     | 45                     |
| 11      | 150 | 75                  | 25                     | 50                     |
| 12      | 160 | 82                  | 27                     | 54                     |
| 13      | 170 | 88                  | 30                     | 59                     |
| 14      | 180 | 95                  | 32                     | 64                     |
| 15      | 190 | 102                 | 34                     | 68                     |
| 16      | 200 | 109                 | 36                     | 73                     |
| 17      | 210 | 116                 | 39                     | 77                     |
| 18      | 220 | 122                 | 41                     | 82                     |
| 19      | 230 | 129                 | 43                     | 86                     |
| 20      | 240 | 136                 | 45                     | 91                     |
| 21      | 250 | 143                 | 48                     | 95                     |
| 22      | 260 | 150                 | 50                     | 100                    |

Changes are huge and characters should regularly be encumbered. However, encumbered status have been updated to RAW:
| Status | BG3 | RAW |
| Lightly encumbered | Movement cost 50% more, Jumping distance halve, Walk | Movement distance reduced by 3m |
| Heavily encumbered* | Movement cost 200% more, Jumping distance reduced to 0, Stroll | Movement distance reduced by 6m |

* already applied by BG3: disadvantage on ability checks, attack rolls, and saving throws that use Strength, Dexterity, or Constitution.

I have also adjusted most items to RAW valuess:
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

Additionally, Flame Blade and Pact weapons will have a normal weight.

### Feats

- Actor gives advantage instead of proficiency with expertise

### Miscellaneous changes

- Warding Flare uses wisdom modifier (instead of unlimited uses)
- Bardic Inspiration uses charisma modifier (instead of a set number)
- Potions now use an action
- Sorcerers gain two Metamagic options of your choice. You gain another one at 10th.

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

## Credits

- BG3 Discord Modding community (lostsoul, Velnir, Athera)