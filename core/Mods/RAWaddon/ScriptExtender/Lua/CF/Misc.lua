if Ext.Mod.IsModLoaded(RAW_ModCompatibilityFramework) then
  Ext.Events.StatsLoaded:Subscribe(function(e)
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Barbarian_1, "Boosts", { "ActionResource(HitDie,2,0)" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Bard_1, "Boosts", { "ActionResource(HitDie,2,0)" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Cleric_1, "Boosts", { "ActionResource(HitDie,2,0)" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Druid_1, "Boosts", { "ActionResource(HitDie,2,0)" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Fighter_1, "Boosts", { "ActionResource(HitDie,2,0)" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Monk_1, "Boosts", { "ActionResource(HitDie,2,0)" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Paladin_1, "Boosts", { "ActionResource(HitDie,2,0)" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Ranger_1, "Boosts", { "ActionResource(HitDie,2,0)" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Rogue_1, "Boosts", { "ActionResource(HitDie,2,0)" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Sorcerer_1, "Boosts", { "ActionResource(HitDie,2,0)" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Warlock_1, "Boosts", { "ActionResource(HitDie,2,0)" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Wizard_1, "Boosts", { "ActionResource(HitDie,2,0)" }))
  end)
end

