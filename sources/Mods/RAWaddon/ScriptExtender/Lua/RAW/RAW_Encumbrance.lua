function RAW_Encumbrance()
    local disabled = not RAW_CheckModOption(RAW_Globals.features.Encumbrance)
    local value = RAW_Globals.modOptions[RAW_Globals.features.Encumbrance].value
    local coreFile = 'Encumbrance_Core.txt';
    local heavyArmorFile = 'Encumbrance_HeavyArmor.txt';
    local standardFile = 'Encumbrance_Standard.txt';
    local variantFile = 'Encumbrance_Variant.txt';
    local mixFile = 'Encumbrance_Mix.txt';
    local list = {}
    if disabled then
      table.insert(list, coreFile)
    end
    if disabled or value == "Variant" then
      table.insert(list, heavyArmorFile)
    end
    if disabled or value ~= "Standard" then 
      table.insert(list, standardFile)
    end
    if disabled or value ~= "Variant" then 
      table.insert(list, variantFile)
    end
    if disabled or value ~= "Mix" then 
        table.insert(list, mixFile)
    end
    RAW_disableFiles(list)
end
  