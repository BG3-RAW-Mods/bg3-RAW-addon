local function applyRaceCoreChanges()
  Mods.SubclassCompatibilityFramework.Api.RemovePassives(removeString(RAW_Human_1, "PassivesAdded", { "HumanVersatility", "HumanMilitia" }))
  Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Human_1, "SelectSkills", "f974ebd6-3725-4b90-bb5c-2b647d41615d"))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Human_1, "Boosts", { 
    "Ability(Strength,1)",
    "Ability(Dexterity,1)",
    "Ability(Constitution,1)",
    "Ability(Intelligence,1)",
    "Ability(Wisdom,1)",
    "Ability(Charisma,1)"    
  }))

  -- Replace 10.5 speed by Fleet of Foot passive
  Mods.SubclassCompatibilityFramework.Api.RemoveStrings(removeString(RAW_Elf_Wood_1, "Boosts", { "ActionResource(Movement, 10.5, 0)", "ActionResource(Movement,1.5,0)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Elf_Wood_1, "PassivesAdded", { "FleetOfFoot" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_HalfElf_Wood_1, "PassivesAdded", { "FleetOfFoot" }))

  -- Replace 7.5 speed by Slower Race passive
  Mods.SubclassCompatibilityFramework.Api.RemoveStrings(removeString(RAW_Dwarf_1, "Boosts", { "ActionResource(Movement, 7.5, 0)", "ActionResource(Movement,7.5,0)" }))
  Mods.SubclassCompatibilityFramework.Api.RemoveStrings(removeString(RAW_Dwarf_Hill_1, "Boosts", { "ActionResource(Movement, 7.5, 0)", "ActionResource(Movement,7.5,0)" }))
  Mods.SubclassCompatibilityFramework.Api.RemoveStrings(removeString(RAW_Dwarf_Mountain_1, "Boosts", { "ActionResource(Movement, 7.5, 0)", "ActionResource(Movement,7.5,0)" }))
  Mods.SubclassCompatibilityFramework.Api.RemoveStrings(removeString(RAW_Dwarf_Duergar_1, "Boosts", { "ActionResource(Movement, 7.5, 0)", "ActionResource(Movement,7.5,0)" }))
  Mods.SubclassCompatibilityFramework.Api.RemoveStrings(removeString(RAW_Gnome_1, "Boosts", { "ActionResource(Movement, 7.5, 0)", "ActionResource(Movement,7.5,0)" }))
  Mods.SubclassCompatibilityFramework.Api.RemoveStrings(removeString(RAW_Halfling_1, "Boosts", { "ActionResource(Movement, 7.5, 0)", "ActionResource(Movement,7.5,0)" }))
  Mods.SubclassCompatibilityFramework.Api.RemoveStrings(removeString(RAW_Halfling_Lightfoot_1, "Boosts", { "ActionResource(Movement, 7.5, 0)", "ActionResource(Movement,7.5,0)" }))
  Mods.SubclassCompatibilityFramework.Api.RemoveStrings(removeString(RAW_Halfling_Stout_1, "Boosts", { "ActionResource(Movement, 7.5, 0)", "ActionResource(Movement,7.5,0)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Dwarf_1, "Boosts", { "ActionResource(Movement,9,0)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Gnome_1, "Boosts", { "ActionResource(Movement,9,0)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Halfling_1, "Boosts", { "ActionResource(Movement,9,0)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Dwarf_1, "PassivesAdded", { "SlowerRace" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Gnome_1, "PassivesAdded", { "SlowerRace" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Halfling_1, "PassivesAdded", { "SlowerRace" }))

  Mods.SubclassCompatibilityFramework.Api.RemoveStrings(removeString(RAW_HalfElf_1, "PassivesAdded", { "HumanMilitia" }))
  Mods.SubclassCompatibilityFramework.Api.RemoveStrings(removeString(RAW_HalfElf_Wood_1, "Boosts", { "ProficiencyBonus(Skill,Stealth)", "ActionResource(Movement, 10.5, 0)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_HalfElf_Drow_1, "PassivesAdded", { "DarkElfHeritageDrowMagic" }))
  Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Tiefling_Asmodeus_1, "AddSpells", "a3366430-2f63-495c-be14-408d9facfd3b"))  
  Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addAddSpells(RAW_Tiefling_Asmodeus_1, "5eada6b7-d9a2-4ef2-8872-0dce047e458c", { CastingAbility = "Charisma", PrepareType = "AlwaysPrepared" }))
  -- Remove from all classes +2/+1 to Ability Scores
  Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Barbarian_1, "SelectAbilityBonus", RAW_Abilities_Bonus))
  Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Bard_1, "SelectAbilityBonus", RAW_Abilities_Bonus))
  Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Cleric_1, "SelectAbilityBonus", RAW_Abilities_Bonus))
  Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Druid_1, "SelectAbilityBonus", RAW_Abilities_Bonus))
  Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Fighter_1, "SelectAbilityBonus", RAW_Abilities_Bonus))
  Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Monk_1, "SelectAbilityBonus", RAW_Abilities_Bonus))
  Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Paladin_1, "SelectAbilityBonus", RAW_Abilities_Bonus))
  Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Ranger_1, "SelectAbilityBonus", RAW_Abilities_Bonus))
  Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Rogue_1, "SelectAbilityBonus", RAW_Abilities_Bonus))
  Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Sorcerer_1, "SelectAbilityBonus", RAW_Abilities_Bonus))
  Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Warlock_1, "SelectAbilityBonus", RAW_Abilities_Bonus))
  Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Wizard_1, "SelectAbilityBonus", RAW_Abilities_Bonus))
end

local function applyRacePHBChanges()
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_HalfElf_1, "Boosts", { "Ability(Charisma,2)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addSelectAbilityBonus(RAW_HalfElf_1, RAW_Abilities_Bonus, { "1", "1" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Elf_1, "Boosts", { "Ability(Dexterity,2)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Elf_High_1, "Boosts", { "Ability(Intelligence,1)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Elf_Wood_1, "Boosts", { "Ability(Wisdom,1)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Drow_1, "Boosts", { "Ability(Dexterity,2)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Drow_1, "Boosts", { "Ability(Charisma,1)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Githyanki_1, "Boosts", { "Ability(Strength,2)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Githyanki_1, "Boosts", { "Ability(Intelligence,1)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Dragonborn_1, "Boosts", { "Ability(Strength,2)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Dragonborn_1, "Boosts", { "Ability(Charisma,1)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_HalfOrc_1, "Boosts", { "Ability(Strength,2)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_HalfOrc_1, "Boosts", { "Ability(Constitution,1)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Tiefling_1, "Boosts", { "Ability(Charisma,2)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Tiefling_Zariel_1, "Boosts", { "Ability(Strength,1)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Tiefling_Asmodeus_1, "Boosts", { "Ability(Intelligence,1)" }))
  Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Tiefling_Asmodeus_1, "AddSpells", "a3366430-2f63-495c-be14-408d9facfd3b"))  
  Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addAddSpells(RAW_Tiefling_Asmodeus_1, "5eada6b7-d9a2-4ef2-8872-0dce047e458c", { CastingAbility = "Charisma", PrepareType = "AlwaysPrepared" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Tiefling_Mephistopheles_1, "Boosts", { "Ability(Intelligence,1)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Dwarf_1, "Boosts", { "Ability(Constitution,2)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Dwarf_Mountain_1, "Boosts", { "Ability(Strength,2)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Dwarf_Hill_1, "Boosts", { "Ability(Wisdom,1)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Dwarf_Duergar_1, "Boosts", { "Ability(Strength,1)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Halfling_1, "Boosts", { "Ability(Dexterity,2)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Halfling_Lightfoot_1, "Boosts", { "Ability(Charisma,1)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Halfling_Stout_1, "Boosts", { "Ability(Constitution,1)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Gnome_1, "Boosts", { "Ability(Intelligence,2)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Gnome_Deep_1, "Boosts", { "Ability(Dexterity,1)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Gnome_Forest_1, "Boosts", { "Ability(Dexterity,1)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Gnome_Rock_1, "Boosts", { "Ability(Constitution,1)" }))
end

local function applyRaceTashaChanges()
  Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addSelectAbilityBonus(RAW_HalfElf_1, RAW_Abilities_Bonus, { "2", "1", "1" }))
  Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addSelectAbilityBonus(RAW_Elf_1, RAW_Abilities_Bonus, { "2", "1" }))
  Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addSelectAbilityBonus(RAW_Drow_1, RAW_Abilities_Bonus, { "2", "1" }))
  Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addSelectAbilityBonus(RAW_Githyanki_1, RAW_Abilities_Bonus, { "2", "1" }))
  Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addSelectAbilityBonus(RAW_Dragonborn_1, RAW_Abilities_Bonus, { "2", "1" }))
  Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addSelectAbilityBonus(RAW_HalfOrc_1, RAW_Abilities_Bonus, { "2", "1" }))
  Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addSelectAbilityBonus(RAW_Tiefling_1, RAW_Abilities_Bonus, { "2", "1" }))
  Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addSelectAbilityBonus(RAW_Dwarf_Mountain_1, RAW_Abilities_Bonus, { "2", "2" }))
  Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addSelectAbilityBonus(RAW_Dwarf_Hill_1, RAW_Abilities_Bonus, { "2", "1" }))
  Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addSelectAbilityBonus(RAW_Dwarf_Duergar_1, RAW_Abilities_Bonus, { "2", "1" }))
  Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addSelectAbilityBonus(RAW_Halfling_1, RAW_Abilities_Bonus, { "2", "1" }))
  Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addSelectAbilityBonus(RAW_Gnome_1, RAW_Abilities_Bonus, { "2", "1" }))
end

local function onStatsLoaded()
  local value = RAW_Globals.modOptions[RAW_Globals.features.RacialTraits].value
  applyRaceCoreChanges()
  if value == "Tasha" then
    applyRaceTashaChanges()
  else
    applyRacePHBChanges()
  end
end

function RAW_RacialTraits()
  if RAW_CheckModOption(RAW_Globals.features.RacialTraits) and Ext.Mod.IsModLoaded(RAW_ModCompatibilityFramework) then
    Ext.Events.StatsLoaded:Subscribe(onStatsLoaded)
  end
end
