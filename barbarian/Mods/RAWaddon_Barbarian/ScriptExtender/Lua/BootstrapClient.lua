local function barbarianChanges()
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(Mods.RAWaddon.addString(Mods.RAWaddon.RAW_Barbarian_1, "PassivesAdded", { "RelentlessRage" }))
    Mods.SubclassCompatibilityFramework.Api.RemoveStrings(Mods.RAWaddon.addString("5ce67263-04f2-4ede-b30a-2eb962d828f2", "PassivesRemoved", { "RageUnlock" }))
end
    
if Ext.Mod.IsModLoaded("67fbbd53-7c7d-4cfa-9409-6d737b4d92a9") then
  Ext.Events.StatsLoaded:Subscribe(barbarianChanges)
end
