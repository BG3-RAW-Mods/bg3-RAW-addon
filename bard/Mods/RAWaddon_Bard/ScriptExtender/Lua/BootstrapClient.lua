local function bardChanges()
  -- Replace fixed Bardic Inspiration uses with scaling from Charisma bonus
  Mods.SubclassCompatibilityFramework.Api.RemoveStrings(Mods.RAWaddon.removeString(Mods.RAWaddon.RAW_Bard_1, "Boosts", { "ActionResource(BardicInspiration,3,0)" }))
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(Mods.RAWaddon.addString(Mods.RAWaddon.RAW_Bard_1, "PassivesAdded", { "BardicInspirationScaling" }))
  Mods.SubclassCompatibilityFramework.Api.RemoveStrings(Mods.RAWaddon.removeString(Mods.RAWaddon.RAW_Bard_5, "Boosts", { "ActionResource(BardicInspiration,1,0)" }))
end

if Ext.Mod.IsModLoaded("67fbbd53-7c7d-4cfa-9409-6d737b4d92a9") then
  Ext.Events.StatsLoaded:Subscribe(bardChanges)
end
