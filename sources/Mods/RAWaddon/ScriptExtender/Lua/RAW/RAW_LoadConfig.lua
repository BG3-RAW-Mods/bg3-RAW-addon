local modOptionsFile = "modOptions.json"

local function RAW_LoadUserOptions()
    RAW_Print("Searching for User "..modOptionsFile)
    local optionsFile = Ext.IO.LoadFile(modOptionsFile)
    if optionsFile == nil or optionsFile == "" then
        RAW_Print("User RAW_Globals.modOptions.json not found")
        return {}
    end
    local options = Ext.Json.Parse(optionsFile)
    if options[ModuleUUID] == nil then
        RAW_Print("Not found User RAW_Globals.modOptions for: " .. ModuleUUID)
        return {}
    end
    RAW_Print("Found User RAW_Globals.modOptions for: " .. ModuleUUID)
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
            if next(RAW_Globals.modOptions[dep].dependencies) ~= nil then
                checkMissingDependencies(enabledOptions, RAW_Set(RAW_Globals.modOptions[dep].dependencies), missingDependencies)
            end
        end
    end
end

local function RAW_ValidateModOptions()
    local enabledOptions = {}
    local dependencies = {}
    local conflicts = {}
    for optionName, attributes in pairs(RAW_Globals.modOptions) do
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
            RAW_Globals.modOptions[dep].enabled = true
            parseEnabledOption(dep, RAW_Globals.modOptions[dep], enabledOptions, dependencies, conflicts)
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
    for optionName, attributes in pairs(RAW_Globals.modOptions) do
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

    RAW_Globals.modOptions = Ext.Json.Parse(optionsFile)
    for optionName, attributes in pairs(RAW_Globals.modOptions) do
        local userOption = userOptions[optionName] or {}
        if userOption.enabled ~= nil then
            attributes.enabled = userOption.enabled
        end
        if userOption.value ~= nil then
            attributes.value = userOption.value
        end

        local filteredDependencies = {}
        for _, dep in pairs(attributes.dependencies or {}) do
            if RAW_Globals.modOptions[dep] ~= nil then
                table.insert(filteredDependencies, dep)
            else
                RAW_Print("Non-existing dependency on modOptions: " .. dep, RAW_PrintTypeWarning)
            end
        end
        attributes.dependencies = filteredDependencies

        local filteredConflicts = {}
        for _, con in pairs(attributes.conflicts or {}) do
            if RAW_Globals.modOptions[con] ~= nil then
                table.insert(filteredConflicts, con)
            else
                RAW_Print("Non-existing conflict on modOptions: " .. con, RAW_PrintTypeWarning)
            end
        end
        attributes.conflicts = filteredConflicts

        if attributes.enabled and attributes.allowedValues ~= nil and not RAW_IsValueInList(attributes.allowedValues, attributes.value) then
            RAW_Print("Option "..optionName.." has an unknown value "..attributes.value..". It is disabled to prevent erratic behavior", RAW_PrintTypeWarning)
            attributes.enabled = false
        end
    end

    RAW_ValidateModOptions()
    RAW_PrintConfig()

    RAW_Print("====================================================================================================\n")
end
