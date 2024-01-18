
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

function CentralizedString(text, width)
    width = width or 100
    local spaces = (width - string.len(text))//2
    return string.rep(" ", spaces) .. text
end

local ENUM_RAW_PrintTable = RAW_Set {
    RAW_PrintTable_ModOptions,
}

RAW_PrintTypeInfo = "info"
RAW_PrintTypeWarning = "warning"
RAW_PrintTypeError = "error"

function RAW_PrintIfDebug(text, debug, level)
    if (type(debug) == "boolean" and debug) or ENUM_RAW_PrintTable[debug] then
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
end
