local function clericChanges()
  -- Light Domain: add Warding Flare scaling from Wisdom bonus
  Mods.SubclassCompatibilityFramework.Api.InsertStrings(Mods.RAWaddon.addString(Mods.RAWaddon.RAW_Cleric_Light_1, "PassivesAdded", { "WardingFlareScaling" }))
end

if Ext.Mod.IsModLoaded("67fbbd53-7c7d-4cfa-9409-6d737b4d92a9") then
  Ext.Events.StatsLoaded:Subscribe(clericChanges)
end
