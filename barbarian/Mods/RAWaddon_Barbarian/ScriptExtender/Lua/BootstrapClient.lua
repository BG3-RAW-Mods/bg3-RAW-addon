local function removeSelector(target, type, uuid) 
  return {
      {
          modGuid = "ba89cd36-1132-4713-9362-a8a2f93b7333",
          FileType = "Progression",
          TargetUUID = target,
          Function = type,
          UUID = uuid
      }
  }
end

local function barbarianChanges()
    Mods.SubclassCompatibilityFramework.Api.RemoveStrings(Mods.RAWaddon.addString("5ce67263-04f2-4ede-b30a-2eb962d828f2", "PassivesRemoved", { "RageUnlock" }))
    Mods.SubclassCompatibilityFramework.Api.RemoveStrings(Mods.RAWaddon.addString("5ce67263-04f2-4ede-b30a-2eb962d828f2", "PassivesRemoved", { "RageUnlock" }))
    local TotemWarriorPassive = "7f7340a0-faf3-4122-bd3f-37a5434dd6cf"
    -- Level 4:
    --Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector("6777c3c3-5f17-4d49-8da7-0f0b8b380d06", "ReplacePassives", TotemWarriorPassive))
    -- Level 5:
    -- Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector("0fe6f4ec-8601-462d-a233-53fc0ad62513", "ReplacePassives", TotemWarriorPassive))
    -- Level 6:
    -- Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector("0b05af61-85e4-4183-8422-6c8ced307d7a", "ReplacePassives", TotemWarriorPassive))
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(Mods.RAWaddon.addSelectPassives("0b05af61-85e4-4183-8422-6c8ced307d7a", "5ac36542-4f17-4e8a-9ac7-5fb40ecb9edd", 2, "AspectOfTheBeast_Tiger_Skills"))
    -- Level 7:
    -- Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector("bbc1564b-4688-484f-84f3-1b3b02173bab", "ReplacePassives", TotemWarriorPassive))
    -- Level 8:
    -- Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector("6de45010-ac1e-420d-ab84-31146c14dada", "ReplacePassives", TotemWarriorPassive))
    Mods.SubclassCompatibilityFramework.Api.RemoveStrings(Mods.RAWaddon.addString("6de45010-ac1e-420d-ab84-31146c14dada", "PassivesAdded", { "LandsStride_DifficultTerrain", "LandsStride_Surfaces", "LandsStride_Advantage" }))
    -- Level 9:
    -- Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector("dfb1038e-9178-475e-abdc-19f0cba244cb", "ReplacePassives", TotemWarriorPassive))
    -- Level 10:
    --Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(Mods.RAWaddon.removeSelector("8013e565-55a5-4847-8ebc-e2971e25151e", "ReplacePassives", "7f7340a0-faf3-4122-bd3f-37a5434dd6cf"))
    --Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(Mods.RAWaddon.removeSelector("8013e565-55a5-4847-8ebc-e2971e25151e", "SelectPassives", "fb9ea4a2-a1ce-4242-a893-84a088ac1145"))
    Mods.SubclassCompatibilityFramework.Api.InsertSelectors(Mods.RAWaddon.addAddSpells("8013e565-55a5-4847-8ebc-e2971e25151e", "f7317f7f-4486-4462-b8e1-4fb4f6e6360d", {}))
    -- Level 11:
    -- Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector("55fd65cf-928d-4ed6-b35e-76422bb0d196", "ReplacePassives", TotemWarriorPassive))
    -- Level 12:
    -- Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector("7521f3eb-efa9-4d40-9f65-e6ff247a9ee8", "ReplacePassives", TotemWarriorPassive))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(Mods.RAWaddon.addString("9026e0b6-52a7-46b9-a318-d85b6a2a81c5", "PassivesAdded", { "MagicAwarenessScaling" }))
    Mods.SubclassCompatibilityFramework.Api.InsertStrings(Mods.RAWaddon.addString("7509026b-0ea3-40cb-a106-95977a40a3b7", "PassivesAdded", { "BolsteringMagicScaling" }))
    Mods.SubclassCompatibilityFramework.Api.RemoveSelectors(removeSelector("c6894048-1489-406d-b601-e3c8c96f4e42", "AddSpells", "4e7b517a-2eca-4463-99a6-a5ffa5036216"))
end

if Ext.Mod.IsModLoaded("67fbbd53-7c7d-4cfa-9409-6d737b4d92a9") then
  Ext.Events.StatsLoaded:Subscribe(barbarianChanges)
end
