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

  local function druidChanges()
    -- Removes all Wild Shapes
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Druid_Land_2, "AddSpells", "0f094e35-9675-464d-8cae-8e58c28de955"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Druid_Land_4, "AddSpells", "ef953742-69fa-4730-a289-bf9ce9629b1a"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Druid_Land_6, "AddSpells", "c15f9224-a600-4a10-a5e7-642eed9c4222"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Druid_Land_10, "AddSpells", "e4d81321-c46f-4334-af8b-b6f4f87d811c"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Druid_Moon_2, "AddSpells", "2df1a00f-a66a-4240-a505-6a7835f2f1fa"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Druid_Moon_4, "AddSpells", "94081296-f79b-4294-973e-111dabea22ca"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Druid_Moon_6, "AddSpells", "c3221a24-3bf7-4475-a675-1b5d87f650f0"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Druid_Moon_8, "AddSpells", "dcdfdf72-16cd-473a-a15f-31a85381c3aa"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Druid_Moon_10, "AddSpells", "57d542ac-2d17-406c-90bd-b55920c94b95"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Druid_Spore_2, "AddSpells", "0f094e35-9675-464d-8cae-8e58c28de955"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Druid_Spore_4, "AddSpells", "ef953742-69fa-4730-a289-bf9ce9629b1a"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Druid_Spore_6, "AddSpells", "c15f9224-a600-4a10-a5e7-642eed9c4222"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Druid_Spore_10, "AddSpells", "e4d81321-c46f-4334-af8b-b6f4f87d811c"))  
    -- Land/Spore Wild Shapes
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addAddSpells(RAW_Druid_Land_2, "cd642852-24d9-4742-b3dd-6993e8273bb3", {}))    
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addAddSpells(RAW_Druid_Land_4, "c88217eb-d468-4df4-b9c0-fb837d4b7037", {}))    
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addAddSpells(RAW_Druid_Land_8, "33759e59-fa4d-4247-91f2-1e98ae97f285", {}))    
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addAddSpells(RAW_Druid_Spore_2, "cd642852-24d9-4742-b3dd-6993e8273bb3", {}))    
    -- CF removed it (bug ?)
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addAddSpells(RAW_Druid_Spore_2, "e568eca4-b5e1-4b67-83d6-d831adf05e23", {}))    
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addAddSpells(RAW_Druid_Spore_4, "c88217eb-d468-4df4-b9c0-fb837d4b7037", {}))    
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addAddSpells(RAW_Druid_Spore_8, "33759e59-fa4d-4247-91f2-1e98ae97f285", {}))    
    -- Removes Wild Strike and Improved Wild Strike
    Mods.SubclassCompatibilityFramework.Api.RemoveStrings(removeString(RAW_Druid_5, "PassivesAdded", { "WildStrike" }))
    Mods.SubclassCompatibilityFramework.Api.RemoveStrings(removeString(RAW_Druid_10, "PassivesAdded", { "WildStrike_2" }))
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
    -- Add Stillness Of Mind ability because it won't autocast if frightened
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addAddSpells(RAW_Monk_7, "90d61529-d390-4d39-a84a-58dfc94c90aa", {}))
    -- Cloak of Shadows is granted at level 11, not 5
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Monk_Shadow_5, "AddSpells", "e1f0e927-0711-4644-8745-af2b02434cfd"))  
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addAddSpells(RAW_Monk_Shadow_11, "e1f0e927-0711-4644-8745-af2b02434cfd", {}))
    -- Shadow doesn't have Shadow Strike ability
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Monk_Shadow_11, "AddSpells", "6c0c93e7-d43a-43ca-8f36-43eff7a5ccdb"))  
    -- Open Hand doesn't get Ki Resonation at level 9
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Monk_OpenHand_9, "AddSpells", "0ffe7be9-d826-42d7-b59e-d1924ad28ffc"))  
    -- Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Monk_OpenHand_9, "PassivesAdded", { "KiResonation_Passive" }))
    -- Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addAddSpells(RAW_Monk_OpenHand_9, "f4d4e906-0c7e-4459-ab49-f135bdb7a961", {}))
    -- Four Element only select 2 spells at level 3
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(addString(RAW_Monk_FourElements_3, "PassivesAdded", { "FourElementsDisciplines" }))
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Monk_FourElements_3, "AddSpells", "de3d347b-69f4-43ac-915d-26e7cbb912bc"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Monk_FourElements_3, "SelectSpells", "9da8ef4f-676b-46f1-81e4-f7c3cfd1c34c"))  
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addSelectSpells(RAW_Monk_FourElements_3, "50072bc3-d182-4ea6-9f7a-0eb021ce6c86", 2, { SelectorId = "FourElements"}))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Monk_FourElements_4, "SelectSpells", "9da8ef4f-676b-46f1-81e4-f7c3cfd1c34c"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Monk_FourElements_5, "SelectSpells", "9da8ef4f-676b-46f1-81e4-f7c3cfd1c34c"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Monk_FourElements_6, "SelectSpells", "c841dfad-9d3b-486d-ad6b-ac3eaebc2db4"))  
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addSelectSpells(RAW_Monk_FourElements_6, "65897e6b-7863-4a0c-9c99-753a793df498", 1, { SelectorId = "FourElements", SwapAmount = 1 }))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Monk_FourElements_7, "SelectSpells", "c841dfad-9d3b-486d-ad6b-ac3eaebc2db4"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Monk_FourElements_8, "SelectSpells", "c841dfad-9d3b-486d-ad6b-ac3eaebc2db4"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Monk_FourElements_9, "SelectSpells", "c841dfad-9d3b-486d-ad6b-ac3eaebc2db4"))  
    Mods.SubclassCompatibilityFramework.Api.RemovePassives(removeString(RAW_Monk_FourElements_9, "PassivesAdded", { "ImprovedElementalCasting" }))
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Monk_FourElements_10, "SelectSpells", "c841dfad-9d3b-486d-ad6b-ac3eaebc2db4"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Monk_FourElements_11, "SelectSpells", "cf014f77-4d0a-4322-a2bf-95e38b89435b"))  
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(addSelectSpells(RAW_Monk_FourElements_11, "a279acb9-88f8-4246-83c6-146d8fc77c8a", 1, { SelectorId = "FourElements", SwapAmount = 1 }))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector(RAW_Monk_FourElements_12, "SelectSpells", "cf014f77-4d0a-4322-a2bf-95e38b89435b"))  
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
    druidChanges()
    sorcererChanges()
    monkChanges()
  end
  
  function RAW_Classes()
    if RAW_CheckModOption(RAW_Globals.features.Classes) and Ext.Mod.IsModLoaded(RAW_ModCompatibilityFramework) then
      Ext.Events.StatsLoaded:Subscribe(onStatsLoaded)
    end
  end
   