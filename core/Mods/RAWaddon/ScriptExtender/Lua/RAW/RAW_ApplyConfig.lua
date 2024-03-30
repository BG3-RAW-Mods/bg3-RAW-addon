local function RAW_Encumbrance()
    local disabled = not RAW_CheckModOption(RAW_Globals.features.Encumbrance)
    local value = RAW_Globals.modOptions[RAW_Globals.features.Encumbrance].value
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
    local disabled = not RAW_CheckModOption(RAW_Globals.features.Potion)
    local value = RAW_Globals.modOptions[RAW_Globals.features.Potion].value
    local list = {}
    if disabled then
        table.insert(list, RAW_RootFolder..'RootTemplates/potions.lsf')
    end
    if disabled or (value & 1 ~= 1) then
        table.insert(list, RAW_TxtFolder..'Item_Potion_Action.txt')
    end
    if disabled or (value & 2 ~= 2) then 
        table.insert(list, RAW_TxtFolder..'Item_Potion_Price.txt')
    end
    if disabled or (value & 4 ~= 4) then 
        table.insert(list, RAW_TxtFolder..'Item_Potion_Throw.txt')
    end
    RAW_disableFiles(list)
end

local function RAW_Poison()
    local disabled = not RAW_CheckModOption(RAW_Globals.features.Poison)
    local value = RAW_Globals.modOptions[RAW_Globals.features.Poison].value
    local list = {}
    if disabled or (value & 1 ~= 1) then
        table.insert(list, RAW_TxtFolder..'Item_Poison_Action.txt')
    end
    if disabled or (value & 2 ~= 2) then 
        table.insert(list, RAW_TxtFolder..'Item_Poison_Price.txt')
    end
    if disabled or (value & 4 ~= 4) then 
        table.insert(list, RAW_TxtFolder..'Item_Poison_Throw.txt')
        table.insert(list, RAW_RootFolder..'RootTemplates/poisons.lsf')
    end
    if disabled or (value & 8 ~= 8) then 
        table.insert(list, RAW_TxtFolder..'Item_Poison_Damage.txt')
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
    for _, attributes in pairs(RAW_Globals.modOptions) do
        local files = attributes.files
        if not attributes.enabled and files ~= nil then
            RAW_disableFiles(files)
        end
    end
    RAW_Encumbrance()
    RAW_Potion()
    RAW_Poison()
end

function RAW_ApplyClientModOptions() 
    RAW_RacialTraits()
    RAW_Classes()
end

function RAW_ApplyServerModOptions() 
end