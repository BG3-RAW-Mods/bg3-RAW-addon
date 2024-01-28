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
end

function RAW_ApplyClientModOptions() 
    RAW_RacialTraits()
    RAW_Classes()
    RAW_Encumbrance()
end