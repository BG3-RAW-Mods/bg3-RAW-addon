if Ext.Mod.IsModLoaded(RAW_ModCompatibilityFramework) then
  Ext.Events.StatsLoaded:Subscribe(function(e)
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Barbarian_1, "PassivesAdded", { "RAW_MovementTracking" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Bard_1, "PassivesAdded", { "RAW_MovementTracking" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Cleric_1, "PassivesAdded", { "RAW_MovementTracking" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Druid_1, "PassivesAdded", { "RAW_MovementTracking" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Fighter_1, "PassivesAdded", { "RAW_MovementTracking" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Monk_1, "PassivesAdded", { "RAW_MovementTracking" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Paladin_1, "PassivesAdded", { "RAW_MovementTracking" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Ranger_1, "PassivesAdded", { "RAW_MovementTracking" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Rogue_1, "PassivesAdded", { "RAW_MovementTracking" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Sorcerer_1, "PassivesAdded", { "RAW_MovementTracking" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Warlock_1, "PassivesAdded", { "RAW_MovementTracking" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Wizard_1, "PassivesAdded", { "RAW_MovementTracking" }))
  end)
end

