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
    
if Ext.Mod.IsModLoaded("67fbbd53-7c7d-4cfa-9409-6d737b4d92a9") then
  Ext.Events.StatsLoaded:Subscribe(monkChanges)
end

