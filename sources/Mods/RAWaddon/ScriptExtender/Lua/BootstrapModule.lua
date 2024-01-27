Ext.Require("RAW_Init.lua")
Ext.Require("RAW_Lib.lua")
Ext.Require("RAW_Config.lua")

RAW_ToggleDebug(true)
RAW_LoadModOptions()

-- local function overrideFiles(list)
--     for _, override in pairs(list) do
--         Ext.Utils.Print("Overriding path from: " .. override.from .. " to: " .. override.to)
--         Ext.IO.AddPathOverride(override.from, override.to)
--     end
-- end

-- Ext.Utils.Print("Starting to override files for enabled mods")
-- for _, attributes in pairs(ModOptions) do
--     local files = attributes.files
--     if attributes.enabled and files.enabled ~= nil then
--         overrideFiles(files.enabled)
--     end
--     if not attributes.enabled and files.disabled ~= nil then
--         overrideFiles(files.disabled)
--     end
-- end