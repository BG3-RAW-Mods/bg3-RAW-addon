# Monk

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

## Unarmored Movement (level 9)
RAW: you gain the ability to move along vertical surfaces and across liquids on your turn without falling during the move.
BG3: you gain immunity to all difficult terrains and your jump distance is increased by 6m.

BG3 doesn't allow vertical movement, so I'm not sure how to implement this feature. It should allow Monk to climb wall or cliffs.
It should not give immunity to difficult terrains, only allow you to walk over water surfaces.

## Open Hand
- Open Hand Techniques are now reactions with a passive toggle that can trigger on Flurry of Blows attacks
- Open Hand Technique: push, distance set to 4.5m instead of 5m
- Wholeness of Body: removed everything but Heal part
- Manifestation (Body, Mind, Soul): removed as it doesn't exist in PHB
- Tranquility: lasts until long rest
- Ki Resonation: removed as it doesn't exist in PHB (see below)
 
BG3: Ki Resonation, level 9, 2 Ki Points, 3d6 force damage AOE 5m (DEX saves for none).
RAW: Quivering Palm, level 17, 3 Ki Points, kill target (CON saves for 10d10 necrotic damage).

Suggestion: Lesser Quivering Palm, level 9, 2 Ki Points, 5d10 necrotic damage (CON saves for half).

## Shadow
- Removes Shadow Arts: Hide, doesn't exist in PHB
- Cloak of Shadows is granted at level 11 instead of 5
- Removed Shadow Strike, doesn't exist in PHB

## Way of the Four Elements
- You know 2 elemental discipline of your choice at level 1. You learn one additional elemental discipline of your choice at 6th and 11th level. Whenever you learn a new elemental discipline, you can also replace one elemental discipline that you already know with a different discipline.
- Elemental discipline don't grant Bonus Unarmed Attack, except Fangs of the Fire Snake and Fist Of Unbroken Air.
- Some Elemental disciplines can be upcast at level 5 and 9, this is done using Spell Container so you can choose which one you want.
- Fangs of the Fire Snake. Every unarmed attack will do fire damage with a range of 4.5m. Additionally, every hit will trigger a reaction to apply 1d10 fire damage for 1 Ki Point. This reaction doesn't count toward limit. 
- Fist of Four Thunders, cast Thunderwave as level 1 spell. At level 5, you can use 3 Ki Points to upcast it as level 2 spell. At level 9, you can use 4 Ki Points to upcast it as level 3 spell. Push away is 3m instead of 8m.
- Fist of Unbroken Air, 3d10 bludgeoning damage for 2 Ki Points. 4d10 bludgeoning damage for 3 Ki Points at level 5. 5d10 bludgeoning damage for 4 Ki Points at level 5.
- Rush of the Gale Spirits, cast Gust of Wind as level 2 spell. It benefits from Gust of Wind spell changes (see Spells section).
- Sweeping Cinder Strike, cast Burning Hands as level 1 spell. At level 5, you can use 3 Ki Points to upcast it as level 2 spell. At level 9, you can use 4 Ki Points to upcast it as level 3 spell.
- Water Whip, 3d10 bludgeoning damage for 2 Ki Points. 4d10 bludgeoning damage for 3 Ki Points at level 5. 5d10 bludgeoning damage for 4 Ki Points at level 5. Pull is 7.6m instead of 9m.
- Gong of the Summit, cast Shatter as level 2 spell. At level 9, you can use 4 Ki Points to upcast it as level 3 spell.
- Mist Stance, 600 turns duration
- Ride the Wind, 100 turns duration

Not implemented due to level limit:
- Breath of Winter, 17th Level, 6 Ki Points, cast Cone of Cold.
- Eternal Mountain Defense, 17th Level, 5 Ki Points, cast Stoneskin, targeting yourself.
- River of Hungry Flame, 17th Level, 5 Ki Points, cast Wall of Fire.
- Wave of Rolling Earth, 17th Level, 6 Ki Points, cast Wall of Stone.

