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
- Keen Smell. Advantage on Perception rolls
- Feline Fall. Resistance to Fall Damage
- Spider Fall. Resistance to Fall Damage
- Pack Tactics. Has advantage on attack rolls against a creature if at least one of the wolf's allies is within 1.5 meters of the creature and the ally isn't incapacitated.
- Web Walker. Ignores movement restrictions caused by webbing.
- Blindsight. A creature with blindsight can perceive its surroundings without relying on sight, within a specific radius. 
- Rampage. When the attacker reduces a creature to 0 hit points with a melee attack on its turn, it can take a bonus action to move up to half its speed and make a bite attack.

Ability DC: when a wildshape rolls a DC, it adds proficiency bonus to base number.
For example, Panther Pounce rolls DC 10. It will be:
- DC 12 for levels 1-4
- DC 13 for levels 5-8
- DC 14 for levels 9-12
- DC 15 for levels 13-15
- DC 16 for levels 16-20

The notation "Recharge X- Y" means a monster can use a special ability once and that the ability then has a random chance of recharging during each subsequent round of combat. At the start of each of the monster's turns, roll a d6. If the roll is one of the numbers in the recharge notation, the monster regains the use of the special ability. The ability also recharges when the monster finishes a short or long rest. For the Giant Spider, that means you roll a d6 and if it comes up with 5 or 6, then it can use the web attack again.

### Giant Badger

Strength: 13, Dexterity: 10, Constitution: 15, AC: 10, Movement Speed: 9 
Hit Points: 13 (level 2), 16 (level 3), 20 (level 4)
Proficiencies: Perception
Passives: Keen Smell, Darkvision (9m)
Attacks (adds *Strength modifier*): 
- bite: 1d6+1 Piercing
- claws: 2d4+1 Slashing
- multi-attack: bite and claws

### Cat

Strength: 3, Dexterity: 15, Constitution: 10, AC: 10, Movement Speed: 12
Hit Points: 2 (level 2), 3 (level 3), 4 (level 4)
Proficiencies: Perception, Stealth
Passives: Keen Smell. **Not RAW ->** Darkvision (9m), Feline Fall
Attacks (adds *Dexterity modifier*): 
- claws: 1 Slashing

### Panther

Strength: 14, Dexterity: 15, Constitution: 10, AC: 12, Movement Speed: 15
Hit Points: 13 (level 2), 18 (level 3), 20 (level 4)
Proficiencies: Perception, Stealth (Expertise)
Passives: Keen Smell. **Not RAW ->** Darkvision (9m), Feline Fall
Attacks (adds *Dexterity modifier*): 
- bite: 1d6+2 Piercing
- claws: 1d4+2 Slashing
- pounce: jump on a target then hits it with a claw attack on the same turn, that target must succeed on a DC 10 Strength saving throw or be knocked prone. If the target is prone, the panther can make one bite attack against it as a bonus action. *Implementation: it can attack any target within range as a bonus action, as long as panther doesn't move.*

### Wolf

Strength: 12, Dexterity: 15, Constitution: 12, AC: 13 (natural), Movement Speed: 12
Hit Points: 11 (level 2), 14 (level 3), 18 (level 4)
Proficiencies: Perception, Stealth
Passives: Keen Smell, Pack Tactics
Attacks (adds *Dexterity modifier*): 
- bite: 2d4+2 Piercing, target must succeed on a DC 9 Strength saving throw or be knocked prone.

### Dire Wolf

Strength: 17, Dexterity: 15, Constitution: 15, AC: 14 (natural), Movement Speed: 15
Hit Points (Moon Druid): 20 (level 2), 30 (level 3), 40 (level 4), 50 (level 5), 60 (level 6)
Hit Points (Other Druid): 60 (level 8)
Proficiencies: Perception, Stealth
Passives: Keen Smell, Pack Tactics
Attacks (adds *Strength modifier*): 
- bite: 2d6+3 Piercing, target must succeed on a DC 11 Strength saving throw or be knocked prone.

### Giant Hyena

Strength: 16, Dexterity: 14, Constitution: 14, AC: 12, Movement Speed: 15
Hit Points (Moon Druid): 24 (level 2), 36 (level 3), 48 (level 4), 60 (level 5), 72 (level 6)
Hit Points (Other Druid): 72 (level 8)
Proficiencies: Perception
Passives: Keen Smell, Rampage
Attacks (adds *Strength modifier*): 
- bite: 2d6+3 Piercing

### Giant Wolf Spider

Strength: 12, Dexterity: 16, Constitution: 13, AC: 13, Movement Speed: 12
Hit Points: 11 (level 2), 14 (level 3), 18 (level 4)
Proficiencies: Perception, Stealth (Expertise)
Passives: Web Walker, Blindsight, Spider Fall, Darkvision (18m)
Attacks (adds *Strength modifier*): 
- bite: 1d6+1 Piercing, target must succeed on a DC 9 Constitution saving throw or take 2d6 poison damage (half on a successful save).

### Giant Spider

Strength: 14, Dexterity: 16, Constitution: 12, AC: 14 (natural), Movement Speed: 9
Hit Points (Moon Druid): 26 (level 2), 35 (level 3), 44 (level 4)
Hit Points (Other Druid): 44 (level 8)
Proficiencies: Perception, Stealth (Expertise)
Passives: Web Walker, Blindsight, Spider Fall, Darkvision (18m)
Attacks (adds *Dexterity modifier*): 
- bite: 1d8+3 Piercing, target must succeed on a DC 9 Constitution saving throw or take 2d8 poison damage (half on a successful save).
- web: (Recharge 5–6) hit one creature with a ranged weapon attack (range 9/18m), target is restrained by webbing for 10 turns. As an action, the restrained target can make a DC 12 Strength check, bursting the webbing on a success.

### Black Bear

Strength: 15, Dexterity: 10, Constitution: 14, AC: 11 (natural), Movement Speed: 12
Hit Points: 19 (level 4), 24 (level 5), 30 (level 6)
Proficiencies: Perception
Passives: Keen Smell
Attacks (adds *Strength modifier*): 
- bite: 1d6+2 Piercing
- claws: 2d4+2 Slashing
- multi-attack: bite and claws

### Brown Bear

Strength: 19, Dexterity: 10, Constitution: 16, AC: 11 (natural), Movement Speed: 12
Hit Points (Moon Druid): 30 (level 2), 40 (level 3), 52 (level 4)
Hit Points (Other Druid): 52 (level 8)
Proficiencies: Perception
Passives: Keen Smell
Attacks (adds *Strength modifier*): 
- bite: 1d8+4 Piercing
- claws: 2d6+4 Slashing
- multi-attack: bite and claws

### Polar Bear

Strength: 20, Dexterity: 10, Constitution: 16, AC: 12 (natural), Movement Speed: 12
Hit Points: 63 (level 6)
Proficiencies: Perception
Passives: Keen Smell
Attacks (adds *Strength modifier*): 
- bite: 1d8+5 Piercing
- claws: 2d6+5 Slashing
- multi-attack: bite and claws

### Saber-Toothed Tiger

Strength: 18, Dexterity: 14, Constitution: 15, AC: 12, Movement Speed: 12
Hit Points: 60 (level 6), 70 (level 7), 84 (level 8)
Proficiencies: Perception, Stealth (Expertise)
Passives: Keen Smell
Attacks (adds *Strength modifier*): 
- bite: 1d10+5 Piercing
- claws: 2d6+5 Slashing
- pounce: jump on a target then hits it with a claw attack on the same turn, that target must succeed on a DC 12 Strength saving throw or be knocked prone. If the target is prone, the tiger can make one bite attack against it as a bonus action. *Implementation: it can attack any target within range as a bonus action, as long as tiger doesn't move.*

### Giant Elk

Giant Elk -> replace Deep Rothe
Shout_WildShape_DeepRothe 201de8c4-a88a-45b8-abb4-1ee67df8bf81 Deep_Rothe_WildShape

Strength: 19, Dexterity: 16, Constitution: 14, AC: 14 (natural), Movement Speed: 18
Hit Points: 50 (level 6), 60 (level 7), 70 (level 8)
Proficiencies: Perception
Attack: 
- ram: 2d6+4 Bludgeoning 
- hooves: 4d8+4 Bludgeoning on a Prone creature
- charge: if the elk moves at least 6m straight toward a target and then hits it with a ram attack on the same turn, the target takes an extra 7 (2d6) damage and must succeed on a DC 12 Strength saving throw or be knocked prone.

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

Strength: 6, Dexterity: 14, Constitution: 13, AC: 13 (natural), Movement Speed: 9
Hit Points: 10 (level 2), 12 (level 3), 15 (level 4)
Proficiencies: Perception
Passives: Pack Tactics
Attacks (adds *Dexterity modifier*): 
- bite: 1d6+2 Piercing
- claws: 1d4+2 Slashing
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

## Technical data

Shout_WildShape_Raven 6c2fc745-20b3-44c0-9032-97e97a5368eb Companion_Raven
Shout_WildShape_Owlbear 92467fe9-2452-47f4-8c19-59883cca6dc5 Wildshape_Owlbear
Shout_WildShape_Dilophosaurus fca74933-fb42-45c0-af31-c9f806368453 Dilophosaurus_Wildshape
Shout_WildShape_Myrmidon_Air 3feb7490-c75e-446a-b8af-d459a164a0a6 Air_Myrmidon_Wildshape
Shout_WildShape_Myrmidon_Earth 86b5ed60-c0a8-41d0-88a5-ed77985820eb Earth_Myrmidon_WIldshape
Shout_WildShape_Myrmidon_Fire 9c5e77bc-0e65-4c11-865a-46d892cc06fe Fire_Myrmidon_Wildshape
Shout_WildShape_Myrmidon_Water 6c9ea298-14dd-4485-ac3c-fdf818f6b110 Water_Myrmidon_Wildshape

Eagle -> new entry "Eagle"
Giant Eagle -> new entry "GiantEagle"
Giant vulture -> new entry "Vulture_Giant"
Ankylosaurus -> replace "Dilophosaurus"
Stegosaurus -> maybe based on: new entry "Dilophosaurus"
Spotted Lion -> based on: Panther or SaberTooth_Tiger

