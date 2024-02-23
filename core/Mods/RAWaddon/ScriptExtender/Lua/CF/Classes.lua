  local function bardChanges()
    -- Replace fixed Bardic Inspiration uses with scaling from Charisma bonus
    Mods.SubclassCompatibilityFramework.Api.RemoveStrings(removeString(RAW_Bard_1, "Boosts", { "ActionResource(BardicInspiration,3,0)" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Bard_1, "PassivesAdded", { "BardicInspirationScaling" }))
    Mods.SubclassCompatibilityFramework.Api.RemoveStrings(removeString(RAW_Bard_5, "Boosts", { "ActionResource(BardicInspiration,1,0)" }))
  end

  local function clericChanges()
    -- Light Domain: add Warding Flare scaling from Wisdom bonus
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Cleric_Light_1, "PassivesAdded", { "WardingFlareScaling" }))
  end

  local function sorcererChanges()
    -- Remove MetaMagic selection at level 2 and 3
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Sorcerer_2, "SelectPassives", "49704931-e47b-4ce6-abc6-dfa7ba640752"))
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Sorcerer_3, "SelectPassives", "c3506532-36eb-4d18-823e-497a537a9619"))
    -- Add 2 MetaMagic selection at level 3
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addSelectPassives(RAW_Sorcerer_3, "c3506532-36eb-4d18-823e-497a537a9619", "2", "Metamagic" ))
    -- Add 1 MetaMagic selection at level 10
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addSelectPassives(RAW_Sorcerer_10, "c3506532-36eb-4d18-823e-497a537a9619", "1", "Metamagic" ))
    -- Draconic get fly at level 14, not 11
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Sorcerer_Draconic_11, "AddSpells", "12150e11-267a-4ecc-a3cc-292c9e2a198d"))  
    -- Storm doesn't get free spells at level 6
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Sorcerer_Storm_6, "AddSpells", "1efc151d-f076-4ab9-9886-d8c5625691c9"))  
    -- Storm get Storm Fury at level 14, not 11
    Mods.SubclassCompatibilityFramework.Api.RemoveStrings(removeString(RAW_Sorcerer_Storm_11, "PassivesAdded", { "StormsFury" }))
    -- Wild get Controlled Chaos at level 14, not 11
    Mods.SubclassCompatibilityFramework.Api.RemoveStrings(removeString(RAW_Sorcerer_Wild_11, "PassivesAdded", { "ControlledChaos" }))
  end
  
  local function onStatsLoaded()
    bardChanges()
    clericChanges()
    sorcererChanges()
  end
  
  function RAW_Classes()
    if RAW_CheckModOption(RAW_Globals.features.Classes) and Ext.Mod.IsModLoaded(RAW_ModCompatibilityFramework) then
      Ext.Events.StatsLoaded:Subscribe(onStatsLoaded)
    end
  end
   