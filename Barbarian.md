# Barbarian

- Rage: only provides a bonus damage to melee strength weapons
- Reckless Attack: only provide advantage for melee attacks. Strength attack is not checked on first attack (interrupt or skill) but will be correctly be checked on further attacks.
- Relentless Rage: if you drop to 0 hit points while you're raging, you can make a DC 10 Constitution saving throw. If you succeed, you drop to 1 hit point instead. Each time you use this feature after the first, the DC increases by 5. When you finish a short or long rest, the DC resets to 10.
- Several rage fixes (there were many inconsistencies)

## Exhaustion

Exhaustion is measured in six levels. If an already exhausted creature suffers another effect that causes exhaustion, its current level of exhaustion increases by the amount specified in the effect’s description. A creature suffers the effect of its current level of exhaustion as well as all lower levels. For example, a creature suffering level 2 exhaustion has its speed halved and has disadvantage on ability checks.

RAW: Finishing a long rest reduces a creature’s exhaustion level by 1.
Implementation:
- Finishing a short rest reduces a creature’s exhaustion level by 1.
- Finishing a long rest removes all exhaustion levels.

Frenzy would be almost unusable with RAW, you could use it 1 or 2 times per long rest at best.

| Level | Effects                                           |
| 1     | Disadvantage on ability checks                    |
| 2	    | Speed halved                                      |
| 3     | Disadvantage on attack rolls and saving throws    |
| 4     | Hit point maximum halved                          |
| 5     | Speed reduced to 0                                |
| 6     | Death                                             |

## Berserker

- Can choose to use Rage or Frenzy
- Frenzy: you can go into a frenzy when you rage. If you do so, for the duration of your rage you can make a single melee weapon attack as a bonus action on each of your turns. When your rage ends, you suffer one level of exhaustion.
- Removes Enraged Throw (does not exist in RAW)
- Removes Throw Improvised Weapon Bonus Action (does not exist in RAW)
- Intimidating Presence: adds missing Charisma modifier to Saving Throws

## Totem Warrior

- Removes all totem animal skills (don't exist in RAW)
- Tiger Totem can jump 3m instead of 4.5m
- Wolf aura is left at 2m instead of 1.5 because decimals are not handled by game
- Most Totem Animals won't work when wearing heavy armor (I know it is not entirely RAW but it is more consistent and logical).
- Removes Land's Stride: Difficult Terrain (level 8 passive)
- Adds Commune With Nature at level 10 (requires 5e Spells Mod)

### Aspect Of The Bear

RAW: Your carrying capacity is doubled, and you have advantage on Strength checks.
BG3: RAW implementation.

### Aspect Of The Tiger

RAW: Gains proficiency in two skills from the following list: Athletics, Acrobatics, Stealth, and Survival.
BG3: You add an additional Strength Modifier to Attack Rolls against Bleeding or Poisoned targets, and gain Proficiency Survival.

Implementation: RAW

### Aspect Of The Eagle

RAW: You gain the eyesight of an eagle. You can see up to 1 mile away with no difficulty, able to discern even fine details as though looking at something no more than 100 feet away from you. Additionally, dim light doesn't impose disadvantage on your Wisdom (Perception) checks.
BG3: You can see in the dark up to 12m, and gain Advantage on Perception Checks.

Implementation: gain Advantage on Perception Checks. It does not provide Darkvision.

### Aspect Of The Elk

RAW: Whether mounted or on foot, your travel pace is doubled, as is the travel pace of up to ten companions while they're within 60 feet of you and you're not incapacitated.
BG3: You can use Aspect of the Elk, giving yourself and nearby allies extra 1.5m movement speed.

Implementation: BG3 (unchanged). RAW is already near as useless. BG3 implementation follows the spirit of pace. Although it does provide something in combat, it seems fairly balanced.

### Aspect Of The Wolf

RAW: You gain the hunting sensibilities of a wolf. You can track other creatures while traveling at a fast pace, and you can move stealthily while traveling at a normal pace.
BG3: You gain proficiency in Stealth, you and nearby allies can add dexterity modifier as a bonus to Stealth Checks.

Implementation: BG3 (unchanged). RAW is already near as useless. Proficiency in Stealth fits RAW spirit, but bonus stealth check for allies seems wrong. Maybe, it could provide expertise in stealth and nothing else.

## Wild Magic

### Magic Awareness

RAW: As an action and until the end of your next turn, you know the location of any spell or magic item within 60 feet of you that isn’t behind total cover. When you sense a spell, you learn which school of magic it belongs to. You can use this feature a number of times equal to your proficiency bonus, and you regain all expended uses when you finish a long rest.

BG3: Anyone within range adds their Proficiency Bonus to Saving Throws against spells (in game description). In fact, it adds 1d4 to all saving throws for caster and allies within 3 meters until the end of turn. It costs bonus action and recharge on long rest.

Implementation: As an action and until the end of your next turn, any ally within range adds their Proficiency Bonus to Saving Throws. You can use this feature a number of times equal to your proficiency bonus, and you regain all expended uses when you finish a long rest.

### Wild Surge

If the effect requires a saving throw, the DC equals 8 + your proficiency bonus + your Constitution modifier.

- Shadowy Tendrils. Fix DC as above (was 12).
- Teleport. Up to 9m (instead of 18m). Can be used right after using Rage (no cost).
- Exploding Flumph. Can be used right after using Rage (no cost).
- Magic infusion. Main Weapon deals force damage (instead of +1d6 force damage).
- Vine Growth. Affects only enemies (instead of everyone but barbarian).
- Bolt of Light. Fix DC as above (was 12). Can be used right after using Rage (no cost).

### Bolstering Magic

RAW: Beginning at 6th level, you can harness your wild magic to bolster yourself or a companion. As an action, you can touch one creature (which can be yourself) and confer one of the following benefits of your choice to that creature:
- For 10 minutes, the creature can roll a d3 whenever making an attack roll or an ability check and add the number rolled to the d20 roll.
- Roll a d3. The creature regains one expended spell slot, the level of which equals the number rolled or lower (the creature’s choice). Once a creature receives this benefit, that creature can’t receive it again until after a long rest.
You can take this action a number of times equal to your proficiency bonus, and you regain all expended uses when you finish a long rest.

BG3: 
- Boon. 1d4 bonus to attack roll and ability check. Once per long rest.
- Regain level 1 spell slot. Once per long rest.
- Regain level 2 spell slot. Once per long rest.
- Regain level 3 spell slot. Once per long rest. (requires level 9)

Implementation: As RAW.

## Known bugs

- Bolstering Magic Spell Slot: sometimes, it doesn't work for whatever reason.
- Exploding Flumph: when used right after rage, it can be cast indefinitly on the same turn.
- Totem Warrior is not supposed to be able to change Totem or Aspect. I have an issue with Compatibility Framework that can't remove these replace options.