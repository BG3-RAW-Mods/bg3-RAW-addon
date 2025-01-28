local function RAW_SimpleSetting(id, file)
    local list = {}
    local enabled = RAW_GetModOptionEnabled(id)
    if not enabled then
        table.insert(list, file)
    end
    RAW_disableFiles(list)
end

local function RAW_Encumbrance()
    local disabled = not RAW_GetModOptionEnabled(RAW_Globals.features.Encumbrance)
    local value = RAW_GetModOptionValue(RAW_Globals.features.Encumbrance)
    local list = {}
    if disabled then
      table.insert(list, RAW_TxtFolder..'Encumbrance_Core.txt')
    end
    if disabled or value == "Variant" then
      table.insert(list, RAW_TxtFolder..'Encumbrance_HeavyArmor.txt')
    end
    if disabled or value ~= "Standard" then 
      table.insert(list, RAW_TxtFolder..'Encumbrance_Standard.txt')
    end
    if disabled or value ~= "Variant" then 
      table.insert(list, RAW_TxtFolder..'Encumbrance_Variant.txt')
    end
    if disabled or value ~= "Mix" then 
        table.insert(list, RAW_TxtFolder..'Encumbrance_Mix.txt')
    end
    RAW_disableFiles(list)
end

local function RAW_Potion()
    local list = {}
    if not RAW_GetModOptionEnabled(RAW_Globals.features.ItemPotionAction) then
        table.insert(list, RAW_TxtFolder..'Item_Potion_Action.txt')
    end
    if not RAW_GetModOptionEnabled(RAW_Globals.features.ItemPotionThrow) then 
        table.insert(list, RAW_TxtFolder..'Item_Potion_Throw.txt')
        table.insert(list, RAW_RootFolder..'RootTemplates/potions.lsf')
    end
    if not RAW_GetModOptionEnabled(RAW_Globals.features.ItemPotionPrice) then 
        table.insert(list, RAW_TxtFolder..'Item_Potion_Price.txt')
    end
    RAW_disableFiles(list)
end

local function RAW_Poison()
    local list = {}
    if not RAW_GetModOptionEnabled(RAW_Globals.features.ItemPoisonAction) then
        table.insert(list, RAW_TxtFolder..'Item_Poison_Action.txt')
    end
    if not RAW_GetModOptionEnabled(RAW_Globals.features.ItemPoisonThrow) then 
        table.insert(list, RAW_TxtFolder..'Item_Poison_Throw.txt')
        table.insert(list, RAW_RootFolder..'RootTemplates/poisons.lsf')
    end
    if not RAW_GetModOptionEnabled(RAW_Globals.features.ItemPoisonDamage) then 
        table.insert(list, RAW_TxtFolder..'Item_Poison_Damage.txt')
    end
    if not RAW_GetModOptionEnabled(RAW_Globals.features.ItemPoisonPrice) then 
        table.insert(list, RAW_TxtFolder..'Item_Poison_Price.txt')
    end
    RAW_disableFiles(list)
end

local function RAW_Rest()
    local disabled = not RAW_GetModOptionEnabled(RAW_Globals.features.RestShort)
    local value = RAW_GetModOptionValue(RAW_Globals.features.RestShort)
    local list = {}
    if RAW_GetModOptionEnabled(RAW_Globals.features.RestPartial) then
        Ext.Loca.UpdateTranslatedString("h7e75fd8fgc164g436fgbbf7gc0b993f7fee8", "Story Rest")
        Ext.Loca.UpdateTranslatedString("hae826c89g4f7eg4a64g976fgf6cbebab7564", "You won't recover anything with a story rest. It is only usefull to progress through story because it is tied to resting.")
    else
        table.insert(list, RAW_TxtFolder..'Rest_Partial.txt')
    end
    if not disabled then
        -- Durable Feat
        Ext.Loca.UpdateTranslatedString("h71165ff5g7a9bg4779g8c39g4897776fe026", "Defy Death. You have Advantage on Death Saving Throws.<br><br>Speedy Recovery. As a Bonus Action, you can expend one of your Hit Point Dice.<br><br>Your <LSTag Tooltip='Constitution'>Constitution</LSTag> score is increased by 1, to a maximum of 20.")
        Ext.Loca.UpdateTranslatedString("hba1b3efag40e4g45e6gb775g4523353b4dbb", "Your <LSTag Tooltip='Constitution'>Constitution</LSTag> increases by 1, to a maximum of 20.<br><br>Defy Death. You have Advantage on Death Saving Throws.<br><br>Speedy Recovery. As a Bonus Action, you can expend one of your Hit Point Dice.")
    else
        table.insert(list, RAW_TxtFolder..'Rest_Short.txt')
    end
    RAW_disableFiles(list)
end

function RAW_disableFiles(list)
    for _, file in pairs(list) do
        RAW_Print("Disabling file " .. file)
        Ext.IO.AddPathOverride(file, RAW_TxtFolder..RAW_EmptyFile)
    end
end

function RAW_ApplyModOptions() 
    RAW_SimpleSetting(RAW_Globals.features.Feats, RAW_TxtFolder..'Feats.txt')
    RAW_SimpleSetting(RAW_Globals.features.ItemWeapon, RAW_TxtFolder..'Item_Weapon.txt')
    RAW_SimpleSetting(RAW_Globals.features.Feats, RAW_TxtFolder..'Item_Weight.txt')
    RAW_SimpleSetting(RAW_Globals.features.Jump, RAW_TxtFolder..'Jump.txt')
    RAW_SimpleSetting(RAW_Globals.features.RacialTraits, RAW_TxtFolder..'Race_Core.txt')
    RAW_SimpleSetting(RAW_Globals.features.RestPartial, RAW_TxtFolder..'Rest_Partial.txt')
    RAW_SimpleSetting(RAW_Globals.features.Spells, RAW_TxtFolder..'Spells_Concentration.txt')
    RAW_SimpleSetting(RAW_Globals.features.Spells, RAW_TxtFolder..'Spells_Knowledge.txt')
    RAW_SimpleSetting(RAW_Globals.features.Spells, RAW_TxtFolder..'Spells_Misc.txt')
    RAW_Encumbrance()
    RAW_Potion()
    RAW_Poison()
    RAW_Rest()
end

function RAW_ApplyClientModOptions() 
    RAW_CF_RacialTraits()
    RAW_CF_Rest()
end

function RAW_ApplyServerModOptions() 
end