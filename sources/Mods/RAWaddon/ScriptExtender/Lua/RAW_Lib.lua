function RAW_ToggleDebug(bool)
    RAW_Globals.debug = bool
end
  
-- Creates a Set from a list
function RAW_Set(list)
    local set = {}
    for _, l in ipairs(list) do
        set[l] = true
    end
    return set
end

-- Adds an element to a Set
function RAW_Set_Add(set, elem)
    if not set[elem] then
        set[elem] = true
    end
end

-- Concatenates the elements of set to a string, using sep as a separator
function RAW_Set_Concat(set, sep)
    local str = ""
    for elem in pairs(set) do
        local prefix = ""
        if str ~= "" then
            prefix = sep
        end
        str = str .. prefix .. tostring(elem)
    end
    return str
end

local ENUM_RAW_PrintTable = RAW_Set {
    RAW_PrintTable_ModOptions,
}

RAW_PrintTypeInfo = "info"
RAW_PrintTypeWarning = "warning"
RAW_PrintTypeError = "error"

function RAW_Print(text, level)
    level = level or RAW_PrintTypeInfo
    if (RAW_Globals.debug == false and level == RAW_PrintTypeInfo) then
        return
    end
    if type(text) == "string" then
        if level == RAW_PrintTypeError then
            Ext.Utils.PrintError(text)
        elseif level == RAW_PrintTypeWarning then
            Ext.Utils.PrintWarning(text)
        else
            Ext.Utils.Print(text)
        end
    else
        _D(text)
    end
end
