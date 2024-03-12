# Druid

- Symbiotic Entity, last for 10 minutes (100 turns), bonus damage only applies to melee weapons

Wildshape CR rating:
| Level | Circle of the Moon | Other Circle |
| ----- | ------------------ | ------------ |
|  2    | 1                  | 1/4          |
|  3	| 1                  | 1/4          |
|  4	| 1		     | 1/2          |
|  5	| 1		     | 1/2          |
|  6	| 2		     | 1/2          |
|  7	| 2		     | 1/2          |
|  8	| 2		     | 1            |
|  9	| 3		     | 1            |
|  10	| 3		     | 1            |
|  11	| 3		     | 1            |
|  12	| 4		     | 1            |
|  13	| 4		     | 1            |
|  14	| 4		     | 1            |
|  15	| 5		     | 1            |
|  16	| 5		     | 1            |
|  17	| 5		     | 1            |
|  18	| 6		     | 1            |
|  19	| 6		     | 1            |
|  20	| 6		     | 1            |

Note: Remember that Druids (including Moon Druids) can't take forms with a swim speed until level 4, and can’t take forms with a fly speed until level 8.

Wild Shape Forms by CR:
| CR   | Beasts                                                                        |
| ---- | ----------------------------------------------------------------------------- |
| 0    | Giant Badger, Cat                                                             |
| 1/4  | Giant Wolf Spider, Panther, Velociraptor, Wolf                                |
| 1/2  | Black Bear                                                                    |
| 1    | Brown Bear, Dire Wolf, Giant Hyena, Giant Spider, Giant Eagle, Giant vulture  |
| 2    | Giant Elk, Polar Bear, Quetzalcoatlus, Saber-Toothed Tiger                    | 
| 3    | Ankylosaurus, Spotted Lion                                                    |
| 4    | Stegosaurus                                                                   |
| 5    | Air Elemental, Earth Elemental, Fire elemental, Water Elemental               |

| Lvl | Land and Spore Druid                                                                            |
| --- | ----------------------------------------------------------------------------------------------- |
| 2   | Giant Badger, Cat, Giant Wolf Spider, Panther, Velociraptor, Wolf                               |
| 4   | Black Bear                                                                                      |
| 8   | Brown Bear, Dire Wolf, Giant Hyena, Giant Spider, Giant Eagle, Giant vulture                    |

| Lvl | Moon Druid                                                                                      |
| --- | ----------------------------------------------------------------------------------------------- |
| 2   | Cat, Panther, Velociraptor, Brown Bear, Dire Wolf, Giant Hyena, Giant Spider                    |
| 6   | Polar Bear, Saber-Toothed Tiger, Giant Elk                                                      |
| 8   | Giant vulture, Quetzalcoatlus                                                                   |
| 9   | Ankylosaurus, Spotted Lion                                                                      |
| 10  | Air Elemental, Earth Elemental, Fire elemental, Water Elemental                                 |
| 12  | Stegosaurus                                                                                     |

Some shapes are straight upgrades from lower ones and will be a replacement instead of an addition:
- Black Bear, Brown Bear, Polar Bear
- Wolf, Dire Wolf
- Giant Wolf Spider, Giant Spider
- Panther, Saber-Toothed Tiger, Spotted Lion
- Velociraptor, Ankylosaurus, Stegosaurus

Some shapes have been removed:
- Owlbear. It is a monstruosity, not allowed by druids
- Deep Rothe. I haven't found anything about this monster. Replaces by Giant Elk.
- Elemental Myrmidons. Druid can shape into Elementals at level 10, but not Myrmidons.

**I didn't add any new models or animations. I have used what was available. So there are several shapes that don't have the correct model but everything else is RAW.**

## Shape Stats

Movement Speed is defined in meters.
Wild Shapes will now get hit points between min and max. For example, Dire Wolf has 37 Hit Points (5d10 + 10). Min is 15, Max is 60. Moon Druid can't have 37 at level 2, would be overpowered. And for other subclasses, 37 is rather low at level 8.

Passives:
- Keen Smell. Advantage on Perception checks
- Keen Sight. Advantage on Perception checks
- Feline Fall. Resistance to Fall Damage
- Spider Fall. Resistance to Fall Damage
- Pack Tactics. Has advantage on attack rolls against a creature if at least one of the wolf's allies is within 1.5 meters of the creature and the ally isn't incapacitated.
- Web Walker. Ignores movement restrictions caused by webbing.
- Blindsight. A creature with blindsight can perceive its surroundings without relying on sight, within a specific radius. 
- Rampage. When the attacker reduces a creature to 0 hit points with a melee attack on its turn, it can take a bonus action to move up to half its speed and make a bite attack.
- Flyby. Doesn't provoke opportunity attacks when it flies out of an enemy's reach.

Ability DC: when a wildshape rolls a DC, it adds proficiency bonus to base number.
For example, Panther Pounce rolls DC 10. It will be:
- DC 12 for levels 1-4
- DC 13 for levels 5-8
- DC 14 for levels 9-12
- DC 15 for levels 13-15
- DC 16 for levels 16-20

Some shapes have multi-attacks, typically bite-claws. They will get two attack skills and a multi-attack skill.

The notation "Recharge X- Y" means a monster can use a special ability once and that the ability then has a random chance of recharging during each subsequent round of combat. At the start of each of the monster's turns, roll a d6. If the roll is one of the numbers in the recharge notation, the monster regains the use of the special ability. The ability also recharges when the monster finishes a short or long rest. For the Giant Spider, that means you roll a d6 and if it comes up with 5 or 6, then it can use the web attack again.

*Note*: Recharge doesn't seem to work for players, so these abilities are available every turns.

### Giant Badger

Strength: 13, Dexterity: 10, Constitution: 15, AC: 10, Movement Speed: 9 
Hit Points: 13 (level 2), 16 (level 3), 20 (level 4)
Proficiencies: Perception
Passives: Keen Smell, Darkvision (9m)
Actions (adds *Strength modifier*): 
- bite: 1d6+1 Piercing
- claws: 2d4+1 Slashing
- multi-attack: bite and claws

### Cat

Strength: 3, Dexterity: 15, Constitution: 10, AC: 10, Movement Speed: 12
Hit Points: 2 (level 2), 3 (level 3), 4 (level 4)
Proficiencies: Perception, Stealth
Passives: Keen Smell. **Not RAW ->** Darkvision (9m), Feline Fall
Actions: 
- claws: 1 Slashing

### Panther

Strength: 14, Dexterity: 15, Constitution: 10, AC: 12, Movement Speed: 15
Hit Points: 13 (level 2), 18 (level 3), 20 (level 4)
Proficiencies: Perception, Stealth (Expertise)
Passives: Keen Smell. **Not RAW ->** Darkvision (9m), Feline Fall
Actions (adds *Dexterity modifier*): 
- bite: 1d6+2 Piercing
- claws: 1d4+2 Slashing
- pounce: if the panther moves at least 6m straight toward a target and then hits it with a claw attack on the same turn, that target must succeed on a DC 10 Strength saving throw or be knocked prone. If the target is prone, the panther can make one bite attack against it as a bonus action.
          *Implementation: it can attack any prone target within range as a bonus action, as long as tiger doesn't move.*

### Saber-Toothed Tiger

Strength: 18, Dexterity: 14, Constitution: 15, AC: 12, Movement Speed: 12
Hit Points: 60 (level 6), 70 (level 7), 84 (level 8)
Proficiencies: Perception, Stealth (Expertise)
Passives: Keen Smell **Not RAW ->** Darkvision (9m), Feline Fall
Actions (adds *Strength modifier*): 
- bite: 1d10+5 Piercing
- claws: 2d6+5 Slashing
- pounce: if the tiger moves at least 6m straight toward a target and then hits it with a claw attack on the same turn, that target must succeed on a DC 12 Strength saving throw or be knocked prone. If the target is prone, the tiger can make one bite attack against it as a bonus action.
          *Implementation: it can attack any prone target within range as a bonus action, as long as tiger doesn't move.*

### Spotted Lion

Strength: 23, Dexterity: 14, Constitution: 17, AC: 15 (natural), Movement Speed: 18
Hit Points: 92 (level 9), 105 (level 10)
Proficiencies: Perception, Stealth (Expertise)
Passives: Darkvision (18m), Pack Tactics. **Not RAW ->** Feline Fall
Actions (adds *Strength modifier*): 
- rend: reach 10 feet, 2d8+6 Piercing. if the lion moved at least 6m straight toward the target and then hits it with a claw attack on the same turn, the target must succeed on a DC 14 Strength saving throw or or be knocked prone. If the target is prone, the lion can make another rend attack against it as a bonus action.
        *Implementation: it can attack any prone target within range as a bonus action, as long as tiger doesn't move.*

### Wolf

Strength: 12, Dexterity: 15, Constitution: 12, AC: 13 (natural), Movement Speed: 12
Hit Points: 11 (level 2), 14 (level 3), 18 (level 4)
Proficiencies: Perception, Stealth
Passives: Keen Smell, Pack Tactics
Actions (adds *Dexterity modifier*): 
- bite: 2d4+2 Piercing, target must succeed on a DC 9 Strength saving throw or be knocked prone.

### Dire Wolf

Strength: 17, Dexterity: 15, Constitution: 15, AC: 14 (natural), Movement Speed: 15
Hit Points (Moon Druid): 20 (level 2), 30 (level 3), 40 (level 4), 50 (level 5), 60 (level 6)
Hit Points (Other Druid): 60 (level 8)
Proficiencies: Perception, Stealth
Passives: Keen Smell, Pack Tactics
Actions (adds *Strength modifier*): 
- bite: 2d6+3 Piercing, target must succeed on a DC 11 Strength saving throw or be knocked prone.

### Giant Hyena

Strength: 16, Dexterity: 14, Constitution: 14, AC: 12, Movement Speed: 15
Hit Points (Moon Druid): 24 (level 2), 36 (level 3), 48 (level 4), 60 (level 5), 72 (level 6)
Hit Points (Other Druid): 72 (level 8)
Proficiencies: Perception
Passives: Keen Smell, Rampage
Actions (adds *Strength modifier*): 
- bite: 2d6+3 Piercing

### Giant Wolf Spider

Strength: 12, Dexterity: 16, Constitution: 13, AC: 13, Movement Speed: 12
Hit Points: 11 (level 2), 14 (level 3), 18 (level 4)
Proficiencies: Perception, Stealth (Expertise)
Passives: Web Walker, Blindsight, Spider Fall, Darkvision (18m)
Actions (adds *Strength modifier*): 
- bite: 1d6+1 Piercing, target must succeed on a DC 9 Constitution saving throw or take 2d6 poison damage (half on a successful save).

*Not Implemented yet*: If the poison damage reduces the target to 0 hit points, the target is stable but poisoned for 1 hour, even after regaining hit points, and is paralyzed while poisoned in this way.

### Giant Spider

Strength: 14, Dexterity: 16, Constitution: 12, AC: 14 (natural), Movement Speed: 9
Hit Points (Moon Druid): 26 (level 2), 35 (level 3), 44 (level 4)
Hit Points (Other Druid): 44 (level 8)
Proficiencies: Perception, Stealth (Expertise)
Passives: Web Walker, Blindsight, Spider Fall, Darkvision (18m)
Actions (adds *Dexterity modifier*): 
- bite: 1d8+3 Piercing, target must succeed on a DC 9 Constitution saving throw or take 2d8 poison damage (half on a successful save).
- web: (Recharge 5–6) hit one creature with a ranged weapon attack (range 9/18m), target is restrained by webbing for 10 turns. As an action, the restrained target can make a DC 12 Strength check, bursting the webbing on a success.

*Not Implemented yet*: If the poison damage reduces the target to 0 hit points, the target is stable but poisoned for 1 hour, even after regaining hit points, and is paralyzed while poisoned in this way.

### Black Bear

Strength: 15, Dexterity: 10, Constitution: 14, AC: 11 (natural), Movement Speed: 12
Hit Points: 19 (level 4), 24 (level 5), 30 (level 6)
Proficiencies: Perception
Passives: Keen Smell
Actions (adds *Strength modifier*): 
- bite: 1d6+2 Piercing
- claws: 2d4+2 Slashing
- multi-attack: bite and claws

### Brown Bear

Strength: 19, Dexterity: 10, Constitution: 16, AC: 11 (natural), Movement Speed: 12
Hit Points (Moon Druid): 30 (level 2), 40 (level 3), 52 (level 4)
Hit Points (Other Druid): 52 (level 8)
Proficiencies: Perception
Passives: Keen Smell
Actions (adds *Strength modifier*): 
- bite: 1d8+4 Piercing
- claws: 2d6+4 Slashing
- multi-attack: bite and claws

### Polar Bear

Strength: 20, Dexterity: 10, Constitution: 16, AC: 12 (natural), Movement Speed: 12
Hit Points: 63 (level 6)
Proficiencies: Perception
Passives: Keen Smell
Actions (adds *Strength modifier*): 
- bite: 1d8+5 Piercing
- claws: 2d6+5 Slashing
- multi-attack: bite and claws

### Giant Elk

Strength: 19, Dexterity: 16, Constitution: 14, AC: 14 (natural), Movement Speed: 18
Hit Points: 50 (level 6), 60 (level 7), 70 (level 8)
Proficiencies: Perception
Actions (adds *Strength modifier*): 
- ram: 2d6+4 Bludgeoning 
- hooves: 4d8+4 Bludgeoning on a Prone creature
- charge: if the elk moves at least 6m straight toward a target and then hits it with a ram attack on the same turn, the target takes an extra 7 (2d6) damage and must succeed on a DC 12 Strength saving throw or be knocked prone.

### Giant Eagle

Strength: 16, Dexterity: 17, Constitution: 13, AC: 13, Movement Speed: 24 (fly)
Hit Points: 44
Proficiencies: Perception
Passives: Keen Sight
Actions (adds *Dexterity modifier*): 
- beak: 1d6+3 Piercing
- talons: 2d6+3 Slashing
- multi-attack: beak and talons

### Giant Vulture

Strength: 15, Dexterity: 10, Constitution: 15, AC: 10, Movement Speed: 18 (fly)
Hit Points: 36
Proficiencies: Perception
Passives: Keen Sight, Pack Tactics
Actions (adds *Strength modifier*): 
- beak: 2d4+2 Piercing
- talons: 2d6+2 Slashing
- multi-attack: beak and talons

### Quetzalcoatlus

Strength: 15, Dexterity: 13, Constitution: 13, AC: 13 (natural), Movement Speed: 24 (fly)
Hit Points: 52
Proficiencies: Perception
Passives: Flyby
Actions (adds *Strength modifier*): 
- bite: 3d6+2 Piercing. If the quetzalcoatlus flew least 9m toward the target immediately before the hit, the target takes an extra 3d6 Piercing.

### Velociraptor

Strength: 6, Dexterity: 14, Constitution: 13, AC: 13 (natural), Movement Speed: 9
Hit Points: 10 (level 2), 12 (level 3), 15 (level 4)
Proficiencies: Perception
Passives: Pack Tactics
Actions (adds *Dexterity modifier*): 
- bite: 1d6+2 Piercing
- claws: 1d4+2 Slashing
- multi-attack: bite and claws (*not implemented due to missing animation*)

### Ankylosaurus
Shout_WildShape_Dilophosaurus fca74933-fb42-45c0-af31-c9f806368453 Dilophosaurus_Wildshape

Strength: 19, Dexterity: 11, Constitution: 15, AC: 15 (natural), Movement Speed: 9
Hit Points: 98 (level 9), 112 (level 10)
Proficiencies: Perception
Actions (adds *Strength modifier*): 
- tail: reach 10 feet, 4d6+4 Bludgeoning. Target must succeed on a DC 12 Strength saving throw or be knocked prone.

### Stegosaurus
Shout_WildShape_Dilophosaurus fca74933-fb42-45c0-af31-c9f806368453 Dilophosaurus_Wildshape

Strength: 20, Dexterity: 9, Constitution: 17, AC: 13 (natural), Movement Speed: 12
Hit Points: 120
Proficiencies: Perception
Actions (adds *Strength modifier*): 
- tail: reach 10 feet, 6d6+5 Piercing. Target must succeed on a DC 13 Strength saving throw or be knocked prone.

### Water Elemental

Strength: 18, Dexterity: 14, Constitution: 18, AC: 14 (natural), Movement Speed: 9
Hit Points: 114 (level 10), 141 (level 11), 168 (level 12)
Damage Resistances: Acid; Bludgeoning, Piercing, and Slashing from Nonmagical Attacks
Damage Immunities: Poison
Condition Immunities: Exhaustion, Grappled, Paralyzed, Petrified, Poisoned, Prone, Restrained, Unconscious
Proficiencies: Perception
Passives: Darkvision (18m)

Water Form: 
- The elemental can enter a hostile creature's space and stop there. *Not Implemented*
- It can move through a space as narrow as 1 inch wide without squeezing.
- Water walk. Ability to move across any liquid surface such as water, mud, snow, quicksand as if it were harmless solid ground.
- Freeze. If the elemental takes cold damage, it partially freezes; its speed is reduced by 20 feet until the end of its next turn. *Not Implemented*

Actions (adds *Strength modifier*): 
- Slam. Melee Weapon Attack: +7 to hit, reach 5 ft., one target. Hit: 13 (2d8 + 4) bludgeoning damage.
- Multiattack. The elemental makes two slam attacks.
- Whelm (Recharge 4–6). Each creature in the elemental's space must make a DC 15 Strength saving throw. On a failure, a target takes 2d8+4 bludgeoning damage. If it is Large or smaller, it is also grappled (escape DC 14). Until this grapple ends, the target is restrained and unable to breathe unless it can breathe water. If the saving throw is successful, the target is pushed out of the elemental's space.

The elemental can grapple one Large creature or up to two Medium or smaller creatures at one time. At the start of each of the elemental's turns, each target grappled by it takes 2d8+4 bludgeoning damage. A creature within 5 feet of the elemental can pull a creature or object out of it by taking an action to make a DC 14 Strength check and succeeding.

*Implementation*: Can only grapple one target. Grappled target can try to break it each turn, but no one can help it.

### Fire Elemental

Strength: 10, Dexterity: 17, Constitution: 16, AC: 13, Movement Speed: 15
Hit Points: 102 (level 10), 129 (level 11), 156 (level 12)
Damage Resistances: Bludgeoning, Piercing, and Slashing from Nonmagical Attacks
Damage Immunities: Fire, Poison
Condition Immunities: Exhaustion, Grappled, Paralyzed, Petrified, Poisoned, Prone, Restrained, Unconscious
Proficiencies: Perception
Passives: Darkvision (18m)

Fire Form:
- The elemental can move through a space as narrow as 1 inch wide without squeezing.
- A creature that touches the elemental or hits it with a melee attack while within 5 feet of it takes 1d10 fire damage. 
- The elemental can enter a hostile creature's space and stop there. The first time it enters a creature's space on a turn, that creature takes 1d10 fire damage and catches fire; until someone takes an action to douse the fire, the creature takes 1d10 fire damage at the start of each of its turns.
- Water Susceptibility. For every 5 feet the elemental moves in water, or for every gallon of water splashed on it, it takes 1 cold damage. *Partially Implemented*
- Illumination. The elemental sheds bright light in a 30-foot radius and dim light in an additional 30 feet.

Actions (adds *Dexterity modifier*): 
- Touch. 2d6+3 Fire damage. ignites target. Until a creature takes an action to douse the fire, the target takes 1d10 fire damage at the start of each of its turns.
- Multiattack. The elemental makes two touch attacks.

### Air Elemental

Strength: 14, Dexterity: 20, Constitution: 14, AC: 15, Movement Speed: 36
Hit Points: 90 (level 10), 117 (level 11), 144 (level 12)
Damage Resistances: Lightning, Thunder; Bludgeoning, Piercing, and Slashing from Nonmagical Attacks
Damage Immunities: Poison
Condition Immunities: Exhaustion, Grappled, Paralyzed, Petrified, Poisoned, Prone, Restrained, Unconscious
Proficiencies: Perception
Passives: Darkvision (18m)

Air Form:
- The elemental can enter a hostile creature's space and stop there. It can move through a space as narrow as 1 inch wide without squeezing.

Actions (adds *Dexterity modifier*): 
- Multiattack. The elemental makes two slam attacks.
- Slam. 2d8+5 Bludgeoning
- Whirlwind (Recharge 4–6). Each creature in the elemental's space must make a DC 13 Strength saving throw. On a failure, a target takes 3d8+2 Bludgeoning damage and is flung up 20 feet away from the elemental in a random direction and knocked prone. If a thrown target strikes an object, such as a wall or floor, the target takes 1d6 Bludgeoning damage for every 10 feet it was thrown. If the target is thrown at another creature, that creature must succeed on a DC 13 Dexterity saving throw or take the same damage and be knocked prone. If the saving throw is successful, the target takes half the bludgeoning damage and isn't flung away or knocked prone.

### Earth Elemental

Strength: 20, Dexterity: 8, Constitution: 20, AC: 17 (natural), Movement Speed: 9
Hit Points: 126 (level 10), 153 (level 11), 180 (level 12)
Damage Vulnerabilities: Thunder
Damage Resistances: Bludgeoning, Piercing, and Slashing from Nonmagical Attacks
Damage Immunities: Poison
Condition Immunities: Exhaustion, Paralyzed, Petrified, Poisoned, Unconscious
Proficiencies: Perception
Passives: Darkvision (18m)

Earth form:
- Earth Glide. The elemental can burrow through nonmagical, unworked earth and stone. While doing so, the elemental doesn't disturb the material it moves through. *Not Implemented*
- Siege Monster. The elemental deals double damage to objects and structures. *Not Implemented*

Actions (adds *Strength modifier*): 
- Multiattack. The elemental makes two slam attacks.
- Slam. reach 10 feet, 2d8+5 Bludgeoning
