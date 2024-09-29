local function sorcererChanges()
  -- Remove MetaMagic selection at level 2 and 3
  Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(Mods.RAWaddon.removeSelector(Mods.RAWaddon.RAW_Sorcerer_2, "SelectPassives", "49704931-e47b-4ce6-abc6-dfa7ba640752"))
  Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(Mods.RAWaddon.removeSelector(Mods.RAWaddon.RAW_Sorcerer_3, "SelectPassives", "c3506532-36eb-4d18-823e-497a537a9619"))
  -- Add 2 MetaMagic selection at level 3
  Mods.SubclassCompatibilityFramework.Api.InsertSelectors(Mods.RAWaddon.addSelectPassives(Mods.RAWaddon.RAW_Sorcerer_3, "c3506532-36eb-4d18-823e-497a537a9619", "2", "Metamagic" ))
  -- Draconic get fly at level 14, not 11
  Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(Mods.RAWaddon.removeSelector(Mods.RAWaddon.RAW_Sorcerer_Draconic_11, "AddSpells", "12150e11-267a-4ecc-a3cc-292c9e2a198d"))  
  -- Storm doesn't get free spells at level 6
  Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(Mods.RAWaddon.removeSelector(Mods.RAWaddon.RAW_Sorcerer_Storm_6, "AddSpells", "1efc151d-f076-4ab9-9886-d8c5625691c9"))  
  -- Storm get Storm Fury at level 14, not 11
  Mods.SubclassCompatibilityFramework.Api.RemoveStrings(Mods.RAWaddon.removeString(Mods.RAWaddon.RAW_Sorcerer_Storm_11, "PassivesAdded", { "StormsFury" }))
  -- Wild get Controlled Chaos at level 14, not 11
  Mods.SubclassCompatibilityFramework.Api.RemoveStrings(Mods.RAWaddon.removeString(Mods.RAWaddon.RAW_Sorcerer_Wild_11, "PassivesAdded", { "ControlledChaos" }))
end

if Ext.Mod.IsModLoaded("67fbbd53-7c7d-4cfa-9409-6d737b4d92a9") then
  Ext.Events.StatsLoaded:Subscribe(sorcererChanges)
end
