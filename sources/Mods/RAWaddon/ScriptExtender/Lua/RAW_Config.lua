local modOptionsFile = "ModOptions.json"

local function RAW_LoadUserOptions()
    RAW_Print("Searching for User "..modOptionsFile)
    local optionsFile = Ext.IO.LoadFile(modOptionsFile)
    if optionsFile == nil or optionsFile == "" then
        RAW_Print("User ModOptions.json not found")
        return {}
    end
    local options = Ext.Json.Parse(optionsFile)
    if options[ModuleUUID] == nil then
        RAW_Print("Not found User ModOptions for: " .. ModuleUUID)
        return {}
    end
    RAW_Print("Found User ModOptions for: " .. ModuleUUID)
    return options[ModuleUUID]
end

local function parseEnabledOption(optionName, attributes, enabledOptions, dependencies, conflicts)
    RAW_Set_Add(enabledOptions, optionName)
    for _, dep in pairs(attributes.dependencies) do
        RAW_Set_Add(dependencies, dep)
    end
    for _, con in pairs(attributes.conflicts) do
        RAW_Set_Add(conflicts, con)
    end
end

local function checkMissingDependencies(enabledOptions, dependencies, missingDependencies)
    for dep in pairs(dependencies) do
        if (enabledOptions[dep] == nil or not enabledOptions[dep]) and not missingDependencies[dep] then
            RAW_Set_Add(missingDependencies, dep)
            if next(ModOptions[dep].dependencies) ~= nil then
                checkMissingDependencies(enabledOptions, RAW_Set(ModOptions[dep].dependencies), missingDependencies)
            end
        end
    end
end

local function RAW_ValidateModOptions()
    local enabledOptions = {}
    local dependencies = {}
    local conflicts = {}
    for optionName, attributes in pairs(ModOptions) do
        if attributes.enabled then
            parseEnabledOption(optionName, attributes, enabledOptions, dependencies, conflicts)
        end
    end

    local ok = true
    local missingDependencies = {}
    checkMissingDependencies(enabledOptions, dependencies, missingDependencies)
    if next(missingDependencies) ~= nil then
        ok = false
        RAW_Print("Activate disabled dependencies: " .. RAW_Set_Concat(missingDependencies, ","), RAW_PrintTypeWarning)
        for dep in pairs(missingDependencies) do
            ModOptions[dep].enabled = true
            parseEnabledOption(dep, ModOptions[dep], enabledOptions, dependencies, conflicts)
        end
    end

    local conflictsDetected = {}
    for con in pairs(conflicts) do
        if enabledOptions[con] then
            RAW_Set_Add(conflictsDetected, con)
        end
    end
    if next(conflictsDetected) ~= nil then
        ok = false
        RAW_Print("\n====================================================================================================", RAW_PrintTypeError)
        RAW_Print("Conflicting options: " .. RAW_Set_Concat(conflictsDetected, ","), RAW_PrintTypeError)
        RAW_Print("====================================================================================================\n", RAW_PrintTypeError)
    end

    if ok then
        RAW_Print("---- Mod Validation OK ----")
    end
end

local function RAW_PrintConfig()
    print("\n\27[36mOptions:")
    local options = {}
    for optionName, attributes in pairs(ModOptions) do
        local text = "\27[36m"
        if IsModOptionEnabled(optionName) then
            text = text .. optionName .. ":\27[32m enabled"
            if attributes.value ~= nil then
                text = text .. "\27[36m value:\27[32m " .. attributes.value
            end
        else
            text = text .. optionName .. ":\27[31m disabled"
        end
        table.insert(options, text)
    end
    table.sort(options)
    print(table.concat(options,"\n") .. "\27[0m")
end

function RAW_LoadModOptions()
    RAW_Print("\n====================================================================================================")
    RAW_Print("[RAWaddon:Config.lua] Mod Options" .. "\n")

    local userOptions = RAW_LoadUserOptions()
    local modOptionsPath = "Mods/" .. Ext.Mod.GetMod(ModuleUUID).Info.Directory .. "/ScriptExtender/" .. modOptionsFile

    RAW_Print("Loading mod configuration "..modOptionsPath)
    local optionsFile = Ext.IO.LoadFile(modOptionsPath, "data")
    if optionsFile == nil or optionsFile == "" then
        RAW_Print("Options file not found, mod might not function properly", RAW_PrintTypeError)
        return
    end

    ModOptions = Ext.Json.Parse(optionsFile)
    for optionName, attributes in pairs(ModOptions) do
        local userOption = userOptions[optionName] or {}
        if userOption.enabled ~= nil  then
            attributes.enabled = userOption.enabled
        end
        if userOption.enabled ~= nil  then
            attributes.value = userOption.value
        end

        local filteredDependencies = {}
        for _, dep in pairs(attributes.dependencies or {}) do
            if ModOptions[dep] ~= nil then
                table.insert(filteredDependencies, dep)
            else
                RAW_Print("Non-existing dependency on ModOptions: " .. dep, RAW_PrintTypeWarning)
            end
        end
        attributes.dependencies = filteredDependencies

        local filteredConflicts = {}
        for _, con in pairs(attributes.conflicts or {}) do
            if ModOptions[con] ~= nil then
                table.insert(filteredConflicts, con)
            else
                RAW_Print("Non-existing conflict on ModOptions: " .. con, RAW_PrintTypeWarning)
            end
        end
        attributes.conflicts = filteredConflicts
    end

    RAW_ValidateModOptions()
    RAW_PrintConfig()

    RAW_Print("====================================================================================================\n")
end

function IsModOptionEnabled(modOption)
    return ModOptions[modOption] ~= nil and ModOptions[modOption].enabled
end
