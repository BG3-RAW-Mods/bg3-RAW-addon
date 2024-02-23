# Druid

- Symbiotic Entity, last for 10 minutes (100 turns), bonus damage only applies to melee weapons

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
| CR   | Beasts                                                                               |
| ---- | ------------------------------------------------------------------------------------ |
| 0    | Giant Badger, Cat, *Eagle*, *Owl*, Raven                                             |
| 1/4  | *Boar*, *Elk*, *Giant Wolf Spider*, Panther, *Velociraptor*, *Wolf*                  |
| 1/2  | *Ape*, *Black Bear*, *Giant Goat*, *Warhorse*                                        |
| 1    | *Brown Bear*, Dire Wolf, *Giant Eagle*, *Giant Hyena*, Giant Spider, *Giant vulture* |
| 2    | *Aurochs*, *Giant Elk*, Polar Bear, *Quetzalcoatlus*, Saber-Toothed Tiger            |
| 3    | *Ankylosaurus*, *Giant Scorpion*, *Spotted Lion*                                     |
| 4    | *Elephant*, *Stegosaurus*                                                            |

| Lvl | Land and Spore Druid                                                                            |
| --- | ----------------------------------------------------------------------------------------------- |
| 2   | Giant Badger, Cat, Giant Wolf Spider, Panther, Velociraptor, Wolf                               |
| 4   | Black Bear                                                                                      |
| 8   | Brown Bear, Dire Wolf, Giant Hyena, Giant Spider, Raven, Owl, Giant Eagle, Giant vulture        |

| Lvl | Moon Druid                                                                                      |
| --- | ----------------------------------------------------------------------------------------------- |
| 2   | Giant Badger, Cat, Panther, Velociraptor, Brown Bear, Dire Wolf, Giant Hyena, Giant Spider      |
| 6   | Polar Bear, Saber-Toothed Tiger, Giant Elk                                                      |
| 8   | Raven, Owl, Giant Eagle, Giant vulture, Quetzalcoatlus                                          |
| 9   | Ankylosaurus, Spotted Lion, Owlbear                                                             |
| 12  | Stegosaurus                                                                                     |

Some shapes are straight upgrades from lower ones and will be a replacement instead of an addition:
- Black Bear, Brown Bear, Polar Bear
- Wolf, Dire Wolf
- Giant Wolf Spider, Giant Spider

(need checks for these ones:)
- Velociraptor, Ankylosaurus, Stegosaurus
- Panther, Spotted Lion

## Shape Stats

Movement Speed is defined in meters.
Wild Shapes will now get hit points between min and max. For example, Dire Wolf has 37 Hit Points (5d10 + 10). Min is 15, Max is 60. Moon Druid can't have 37 at level 2, would be overpowered. And for other subclasses, 37 is rather low at level 8.

Passives:
- Keen Smell: Advantage on Perception rolls
- Feline Fall: Resistance to Fall Damage
- Pack Tactics: Has advantage on attack rolls against a creature if at least one of the wolf's allies is within 1.5 meters of the creature and the ally isn't incapacitated.

Ability DC: when a wildshape rolls a DC, it adds proficiency bonus to base number.
For example, Panther Pounce rolls DC 10. It will be:
- DC 12 for levels 1-4
- DC 13 for levels 5-8
- DC 14 for levels 9-12
- DC 15 for levels 13-15
- DC 16 for levels 16-20

### Giant Badger

Strength: 13, Dexterity: 10, Constitution: 15, AC: 10, Movement Speed: 9 
Hit Points: 13 (level 2), 16 (level 3), 20 (level 4)
Proficiencies: Perception
Passives: Keen Smell, Darkvision (9m)
Attacks (adds *Strength modifier*): 
- bite: 1d6 Piercing
- claws: 2d4 Slashing
- multi-attack: bite and claws

### Cat

Strength: 3, Dexterity: 15, Constitution: 10, AC: 10, Movement Speed: 12
Hit Points: 2 (level 2), 3 (level 3), 4 (level 4)
Proficiencies: Perception, Stealth
Passives: Keen Smell. **Not RAW ->** Darkvision (9m), Feline Fall
Attacks (adds *Dexterity modifier*): 
- claws: 1 Slashing

### Panther

Strength: 13, Dexterity: 15, Constitution: 10, AC: 12, Movement Speed: 15
Hit Points: 13 (level 2), 18 (level 3), 20 (level 4)
Proficiencies: Perception, Stealth
Passives: Keen Smell. **Not RAW ->** Darkvision (9m), Feline Fall
Attacks (adds *Dexterity modifier*): 
- bite: 1d6 Piercing
- claws: 1d4 Slashing
- pounce: jump on a target then hits it with a claw attack on the same turn, that target must succeed on a DC 10 Strength saving throw or be knocked prone. If the target is prone, the panther can make one bite attack against it as a bonus action. *Implementation: it can attack any target within range as a bonus action, as long as panther doesn't move.*

### Wolf

Strength: 12, Dexterity: 15, Constitution: 12, AC: 11, Movement Speed: 12
Hit Points: 11 (level 2), 14 (level 3), 18 (level 4)
Proficiencies: Perception, Stealth
Passives: Keen Smell, Pack Tactics
Attacks (adds *Strength modifier*): 
- bite: 2d4 Piercing, target must succeed on a DC 9 Strength saving throw or be knocked prone.

### Dire Wolf

Strength: 17, Dexterity: 15, Constitution: 15, AC: 14, Movement Speed: 15
Hit Points (Moon Druid): 20 (level 2), 30 (level 3), 40 (level 4), 50 (level 5), 60 (level 6)
Hit Points (Other Druid): 60 (level 8)
Proficiencies: Perception, Stealth
Passives: Keen Smell, Pack Tactics
Attacks (adds *Strength modifier*): 
- bite: 2d6 Piercing, target must succeed on a DC 11 Strength saving throw or be knocked prone.

### Giant Hyena

Strength: 16, Dexterity: 14, Constitution: 14, AC: 12, Movement Speed: 15
Hit Points (Moon Druid): 24 (level 2), 36 (level 3), 48 (level 4), 60 (level 5), 72 (level 6)
Hit Points (Other Druid): 72 (level 8)
Proficiencies: Perception
Passives: Keen Smell, Darkvision (9m)
Attack: 
- bite: 1d6 Piercing
- claws: 2d4 Slashing
- multi-attack: bite and claws

### Giant Wolf Spider

Strength: 13, Dexterity: 10, Constitution: 15, AC: 10, Movement Speed: 9
Hit Points: 13 - 20
Proficiencies: Perception
Passives: Keen Smell, Darkvision (9m)
Attack: 
- bite: 1d6 Piercing
- claws: 2d4 Slashing
- multi-attack: bite and claws

### Giant Spider

Strength: 13, Dexterity: 10, Constitution: 15, AC: 10, Movement Speed: 9
Hit Points: 13 - 20
Proficiencies: Perception
Passives: Keen Smell, Darkvision (9m)
Attack: 
- bite: 1d6 Piercing
- claws: 2d4 Slashing
- multi-attack: bite and claws

### Black Bear

Strength: 13, Dexterity: 10, Constitution: 15, AC: 10, Movement Speed: 9
Hit Points: 13 - 20
Proficiencies: Perception
Passives: Keen Smell, Darkvision (9m)
Attack: 
- bite: 1d6 Piercing
- claws: 2d4 Slashing
- multi-attack: bite and claws

### Brown Bear

Strength: 13, Dexterity: 10, Constitution: 15, AC: 10, Movement Speed: 9
Hit Points: 13 - 20
Proficiencies: Perception
Passives: Keen Smell, Darkvision (9m)
Attack: 
- bite: 1d6 Piercing
- claws: 2d4 Slashing
- multi-attack: bite and claws

### Polar Bear

Strength: 13, Dexterity: 10, Constitution: 15, AC: 10, Movement Speed: 9
Hit Points: 13 - 20
Proficiencies: Perception
Passives: Keen Smell, Darkvision (9m)
Attack: 
- bite: 1d6 Piercing
- claws: 2d4 Slashing
- multi-attack: bite and claws

### Saber-Toothed Tiger

Strength: 13, Dexterity: 10, Constitution: 15, AC: 10, Movement Speed: 9
Hit Points: 13 - 20
Proficiencies: Perception
Passives: Keen Smell, Darkvision (9m)
Attack: 
- bite: 1d6 Piercing
- claws: 2d4 Slashing
- multi-attack: bite and claws

### Giant Elk

Strength: 13, Dexterity: 10, Constitution: 15, AC: 10, Movement Speed: 9
Hit Points: 13 - 20
Proficiencies: Perception
Passives: Keen Smell, Darkvision (9m)
Attack: 
- bite: 1d6 Piercing
- claws: 2d4 Slashing
- multi-attack: bite and claws

### Raven

Strength: 13, Dexterity: 10, Constitution: 15, AC: 10, Movement Speed: 9
Hit Points: 13 - 20
Proficiencies: Perception
Passives: Keen Smell, Darkvision (9m)
Attack: 
- bite: 1d6 Piercing
- claws: 2d4 Slashing
- multi-attack: bite and claws

### Owl

Strength: 13, Dexterity: 10, Constitution: 15, AC: 10, Movement Speed: 9
Hit Points: 13 - 20
Proficiencies: Perception
Passives: Keen Smell, Darkvision (9m)
Attack: 
- bite: 1d6 Piercing
- claws: 2d4 Slashing
- multi-attack: bite and claws

### Giant Eagle

Strength: 13, Dexterity: 10, Constitution: 15, AC: 10, Movement Speed: 9
Hit Points: 13 - 20
Proficiencies: Perception
Passives: Keen Smell, Darkvision (9m)
Attack: 
- bite: 1d6 Piercing
- claws: 2d4 Slashing
- multi-attack: bite and claws

### Giant vulture

Strength: 13, Dexterity: 10, Constitution: 15, AC: 10, Movement Speed: 9
Hit Points: 13 - 20
Proficiencies: Perception
Passives: Keen Smell, Darkvision (9m)
Attack: 
- bite: 1d6 Piercing
- claws: 2d4 Slashing
- multi-attack: bite and claws

### Quetzalcoatlus

Strength: 13, Dexterity: 10, Constitution: 15, AC: 10, Movement Speed: 9
Hit Points: 13 - 20
Proficiencies: Perception
Passives: Keen Smell, Darkvision (9m)
Attack: 
- bite: 1d6 Piercing
- claws: 2d4 Slashing
- multi-attack: bite and claws

### Spotted Lion

Strength: 13, Dexterity: 10, Constitution: 15, AC: 10, Movement Speed: 9
Hit Points: 13 - 20
Proficiencies: Perception
Passives: Keen Smell, Darkvision (9m)
Attack: 
- bite: 1d6 Piercing
- claws: 2d4 Slashing
- multi-attack: bite and claws

### Owlbear

Strength: 13, Dexterity: 10, Constitution: 15, AC: 10, Movement Speed: 9
Hit Points: 13 - 20
Proficiencies: Perception
Passives: Keen Smell, Darkvision (9m)
Attack: 
- bite: 1d6 Piercing
- claws: 2d4 Slashing
- multi-attack: bite and claws

### Velociraptor

Strength: 13, Dexterity: 10, Constitution: 15, AC: 10, Movement Speed: 9
Hit Points: 13 - 20
Proficiencies: Perception
Passives: Keen Smell, Darkvision (9m)
Attack: 
- bite: 1d6 Piercing
- claws: 2d4 Slashing
- multi-attack: bite and claws

### Ankylosaurus

Strength: 13, Dexterity: 10, Constitution: 15, AC: 10, Movement Speed: 9
Hit Points: 13 - 20
Proficiencies: Perception
Passives: Keen Smell, Darkvision (9m)
Attack: 
- bite: 1d6 Piercing
- claws: 2d4 Slashing
- multi-attack: bite and claws

### Stegosaurus

Strength: 13, Dexterity: 10, Constitution: 15, AC: 10, Movement Speed: 9
Hit Points: 13 - 20
Proficiencies: Perception
Passives: Keen Smell, Darkvision (9m)
Attack: 
- bite: 1d6 Piercing
- claws: 2d4 Slashing
- multi-attack: bite and claws

## Shape Hit Points

PHB have HP dices and an average number.
Wild Shapes will now get hit points between min and max.

| Shape                    | HP      | Min | L1 | L2 | Max |
| ------------------------ | ------- | --- | -- | -- | --- |
| Badger                   | 2d8+4   |  6  | 13 | 16 | 20  |
| Cat                      | 1d4     |  1  | 2  | 4  |     |
| Giant Wolf Spider        | 2d8+2   |  4  | 11 | 14 | 18  |
| Velociraptor             | 3d4+3   |  6  | 10 | 12 | 15  |
| Panther                  | 3d8     |  3  | 13 | 18 | 24  |
| Black Bear               | 3d8+6   |  9  | 19 | 24 | 30  |
| Brown Bear               | 4d10+12 | 16  | 34 | 45 | 52  |
| Polar Bear               | 5d10+15 | 20  | 42 | 53 | 65  |
| Wolf                     | 2d8+2   |  4  | 11 | 14 | 18  |
| Dire Wolf                | 5d10+10 | 15  | 37 | 48 | 60  |



Shout_WildShape_Badger 47263893-8aab-48f1-96ad-13907d1e23e8 Badger_Giant_Wildshape
Shout_WildShape_Bear_Polar 960a6318-3fc0-4b85-8b70-887e99ff248f Bear_Polar_Wildshape
Shout_WildShape_Cat 398887ea-5013-4c9b-8f89-37f44efef8dc Familiar_Cat
Shout_WildShape_Spider e0e6f504-8114-46c8-834a-186466edbd87 Spider_Giant_Wildshape
Shout_WildShape_Wolf_Dire 71e2c062-fdf8-40c7-88d7-05ef57cdff41 Wolf_Dire_Wildshape
Shout_WildShape_Raven 6c2fc745-20b3-44c0-9032-97e97a5368eb Companion_Raven
Shout_WildShape_DeepRothe 201de8c4-a88a-45b8-abb4-1ee67df8bf81 Deep_Rothe_WildShape
Shout_Wildshape_Panther e7780038-d09c-48e1-8bb8-db86538a3cb9 Wildshape_Panther
Shout_WildShape_Owlbear 92467fe9-2452-47f4-8c19-59883cca6dc5 Wildshape_Owlbear
Shout_Wildshape_SaberTooth_Tiger 007a0a64-d763-4daf-9697-21765a4c2d4d Wildshape_SaberTooth_Tiger
Shout_WildShape_Dilophosaurus fca74933-fb42-45c0-af31-c9f806368453 Dilophosaurus_Wildshape
Shout_WildShape_Myrmidon_Air 3feb7490-c75e-446a-b8af-d459a164a0a6 Air_Myrmidon_Wildshape
Shout_WildShape_Myrmidon_Earth 86b5ed60-c0a8-41d0-88a5-ed77985820eb Earth_Myrmidon_WIldshape
Shout_WildShape_Myrmidon_Fire 9c5e77bc-0e65-4c11-865a-46d892cc06fe Fire_Myrmidon_Wildshape
Shout_WildShape_Myrmidon_Water 6c9ea298-14dd-4485-ac3c-fdf818f6b110 Water_Myrmidon_Wildshape

Boar -> new entry "Boar"
Black Bear -> new entry "Bear_Black"
Brown Bear -> new entry "Bear_Brown"
Eagle -> new entry "Eagle"
Giant Eagle -> new entry "GiantEagle"
Giant Hyena -> based on: new entry "Hyena"
Giant Wolf -> new entry "Spider_GiantWolf"
Giant vulture -> new entry "Vulture_Giant"
Giant Elk -> replace Deep Rothe
Wolf -> new entry "Wolf"
Ankylosaurus -> replace "Dilophosaurus"
Stegosaurus -> maybe based on: new entry "Dilophosaurus"
Spotted Lion -> based on: Panther or SaberTooth_Tiger

