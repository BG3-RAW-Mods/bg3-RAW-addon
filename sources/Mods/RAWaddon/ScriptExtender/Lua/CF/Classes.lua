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

  local function monkChanges()
    -- Monk receives 2 ki points at level 2, then 1 per level
    Mods.SubclassCompatibilityFramework.Api.RemoveStrings(removeString(RAW_Monk_1, "Boosts", { "ActionResource(KiPoint,2,0)" }))
    Mods.SubclassCompatibilityFramework.Api.RemoveStrings(removeString(RAW_Monk_Multi_1, "Boosts", { "ActionResource(KiPoint,2,0)" }))
    Mods.SubclassCompatibilityFramework.Api.RemoveStrings(removeString(RAW_Monk_2, "Boosts", { "ActionResource(KiPoint,1,0)" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Monk_2, "Boosts", { "ActionResource(KiPoint,2,0)" }))
    -- Flurry of Blows is unlocked after you take the Attack action on your turn
    Mods.SubclassCompatibilityFramework.Api.RemovePassives(removeString(RAW_Monk_1, "PassivesAdded", { "FlurryOfBlowsUnlock" }))
    Mods.SubclassCompatibilityFramework.Api.RemovePassives(removeString(RAW_Monk_Multi_1, "PassivesAdded", { "FlurryOfBlowsUnlock" }))
    -- Open Hand Technique are interrupts
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Monk_OpenHand_3, "AddSpells", "6566d841-ef96-4e13-ac40-c40f44c5e08b"))  
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Monk_OpenHand_3, "PassivesAdded", { "OpenHandTechnique_Passive" }))
    -- Stunning Strikes are interrupts
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Monk_5, "AddSpells", "3ba6090a-a8be-4938-82ef-40eba0083441"))  
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Monk_5, "PassivesAdded", { "StunningStrike_Passive" }))
    -- Shadow doesn't have access to Hide bonus action
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Monk_Shadow_3, "AddSpells", "e050fe59-a8f0-4c03-a7f4-569ac747c80e"))  
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addAddSpells(RAW_Monk_Shadow_3, "80e8c4ce-1df6-4987-bc69-8f7fc2e5b031", {}))
    -- Open Hand doesn't have Manifestation ability (this is actually an OP variant of Manifest Blow)
    Mods.SubclassCompatibilityFramework.Api.RemoveStrings(removeString(RAW_Monk_OpenHand_6, "PassivesAdded", { "Manifestation_of_Body", "Manifestation_of_Mind", "Manifestation_of_Soul" }))
    -- Stillness Of Mind is an active ability, not passive
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addAddSpells(RAW_Monk_7, "90d61529-d390-4d39-a84a-58dfc94c90aa", {}))
    -- Cloak of Shadows is granted at level 11, not 5
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Monk_Shadow_5, "AddSpells", "e1f0e927-0711-4644-8745-af2b02434cfd"))  
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addAddSpells(RAW_Monk_Shadow_11, "e1f0e927-0711-4644-8745-af2b02434cfd", {}))
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
    monkChanges()
  end
  
  function RAW_Classes()
    if RAW_CheckModOption(RAW_Globals.features.Classes) and Ext.Mod.IsModLoaded(RAW_ModCompatibilityFramework) then
      Ext.Events.StatsLoaded:Subscribe(onStatsLoaded)
    end
  end
   