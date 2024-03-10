local function druidChanges()
    -- Removes all Wild Shapes
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(Mods.RAWaddon.removeSelector(Mods.RAWaddon.RAW_Druid_Land_2, "AddSpells", "0f094e35-9675-464d-8cae-8e58c28de955"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(Mods.RAWaddon.removeSelector(Mods.RAWaddon.RAW_Druid_Land_4, "AddSpells", "ef953742-69fa-4730-a289-bf9ce9629b1a"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(Mods.RAWaddon.removeSelector(Mods.RAWaddon.RAW_Druid_Land_6, "AddSpells", "c15f9224-a600-4a10-a5e7-642eed9c4222"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(Mods.RAWaddon.removeSelector(Mods.RAWaddon.RAW_Druid_Land_10, "AddSpells", "e4d81321-c46f-4334-af8b-b6f4f87d811c"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(Mods.RAWaddon.removeSelector(Mods.RAWaddon.RAW_Druid_Moon_2, "AddSpells", "2df1a00f-a66a-4240-a505-6a7835f2f1fa"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(Mods.RAWaddon.removeSelector(Mods.RAWaddon.RAW_Druid_Moon_2, "AddSpells", "db963d3f-e0ba-4aba-a8e2-cf404dc54429"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(Mods.RAWaddon.removeSelector(Mods.RAWaddon.RAW_Druid_Moon_4, "AddSpells", "94081296-f79b-4294-973e-111dabea22ca"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(Mods.RAWaddon.removeSelector(Mods.RAWaddon.RAW_Druid_Moon_6, "AddSpells", "c3221a24-3bf7-4475-a675-1b5d87f650f0"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(Mods.RAWaddon.removeSelector(Mods.RAWaddon.RAW_Druid_Moon_8, "AddSpells", "dcdfdf72-16cd-473a-a15f-31a85381c3aa"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(Mods.RAWaddon.removeSelector(Mods.RAWaddon.RAW_Druid_Moon_10, "AddSpells", "57d542ac-2d17-406c-90bd-b55920c94b95"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(Mods.RAWaddon.removeSelector(Mods.RAWaddon.RAW_Druid_Spore_2, "AddSpells", "0f094e35-9675-464d-8cae-8e58c28de955"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(Mods.RAWaddon.removeSelector(Mods.RAWaddon.RAW_Druid_Spore_4, "AddSpells", "ef953742-69fa-4730-a289-bf9ce9629b1a"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(Mods.RAWaddon.removeSelector(Mods.RAWaddon.RAW_Druid_Spore_6, "AddSpells", "c15f9224-a600-4a10-a5e7-642eed9c4222"))  
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(Mods.RAWaddon.removeSelector(Mods.RAWaddon.RAW_Druid_Spore_10, "AddSpells", "e4d81321-c46f-4334-af8b-b6f4f87d811c"))  
    -- Land/Spore Wild Shapes
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(Mods.RAWaddon.addAddSpells(Mods.RAWaddon.RAW_Druid_Land_2, "cd642852-24d9-4742-b3dd-6993e8273bb3", {}))    
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(Mods.RAWaddon.addAddSpells(Mods.RAWaddon.RAW_Druid_Land_4, "c88217eb-d468-4df4-b9c0-fb837d4b7037", {}))    
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(Mods.RAWaddon.addAddSpells(Mods.RAWaddon.RAW_Druid_Land_8, "33759e59-fa4d-4247-91f2-1e98ae97f285", {}))    
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(Mods.RAWaddon.addAddSpells(Mods.RAWaddon.RAW_Druid_Spore_2, "cd642852-24d9-4742-b3dd-6993e8273bb3", {}))    
    -- CF removed it (bug ?)
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(Mods.RAWaddon.addAddSpells(Mods.RAWaddon.RAW_Druid_Spore_2, "e568eca4-b5e1-4b67-83d6-d831adf05e23", {}))    
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(Mods.RAWaddon.addAddSpells(Mods.RAWaddon.RAW_Druid_Spore_4, "c88217eb-d468-4df4-b9c0-fb837d4b7037", {}))    
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(Mods.RAWaddon.addAddSpells(Mods.RAWaddon.RAW_Druid_Spore_8, "33759e59-fa4d-4247-91f2-1e98ae97f285", {}))    
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(Mods.RAWaddon.addAddSpells(Mods.RAWaddon.RAW_Druid_Moon_2, "51f2ab56-4403-49c0-99e8-582b9069477d", {}))    
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(Mods.RAWaddon.addAddSpells(Mods.RAWaddon.RAW_Druid_Moon_6, "1a66f9f7-9898-4e29-a62b-75fb07581719", {}))    
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(Mods.RAWaddon.addAddSpells(Mods.RAWaddon.RAW_Druid_Moon_8, "015e0546-d3dd-4cc1-8727-dfe8a6875a4f", {}))    
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(Mods.RAWaddon.addAddSpells(Mods.RAWaddon.RAW_Druid_Moon_9, "1ae6fd0e-366c-46ae-932c-d2c745b43a5e", {}))    
    -- Removes Wild Strike and Improved Wild Strike
    Mods.SubclassCompatibilityFramework.Api.RemoveStrings(Mods.RAWaddon.removeString(Mods.RAWaddon.RAW_Druid_5, "PassivesAdded", { "WildStrike" }))
    Mods.SubclassCompatibilityFramework.Api.RemoveStrings(Mods.RAWaddon.removeString(Mods.RAWaddon.RAW_Druid_10, "PassivesAdded", { "WildStrike_2" }))
end

if Ext.Mod.IsModLoaded("67fbbd53-7c7d-4cfa-9409-6d737b4d92a9") then
  Ext.Events.StatsLoaded:Subscribe(druidChanges)
end
