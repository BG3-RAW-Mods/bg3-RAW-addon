  local function bardChanges()
  end
  
--   {
--     "Comment": "Replace fixed Bardic Inspiration uses with scaling from Charisma bonus",
--     "UUID": "374c3aae-828b-44d8-b4e3-51ba802977dd",
--     "Strings": [
--         {
--             "Action": "Remove",
--             "Type": "Boosts",
--             "Strings": [
--                 "ActionResource(BardicInspiration,3,0)"
--             ]
--         },
--         {
--             "Action": "Insert",
--             "Type": "PassivesAdded",
--             "Strings": [
--                 "BardicInspirationScaling"
--             ]
--         }
--     ]
--   },
--   {
--     "Comment": "Remove fixed Bardic Inspiration uses from Bard",
--     "UUID": "3ca383a7-d545-4e01-8d00-00c965d3e604",
--     "Strings": [
--         {
--             "Action": "Remove",
--             "Type": "Boosts",
--             "Strings": [
--                 "ActionResource(BardicInspiration,1,0)"
--             ]
--         }
--     ]
--   },
--   {
--     "Comment": "Add Warding Flare scaling from Wisdom bonus for Light Cleric",
--     "UUID": "18b60150-3f77-4f5d-9c67-b25c3b7ce404",
--     "Strings": [
--         {
--             "Action": "Insert",
--             "Type": "PassivesAdded",
--             "Strings": [
--                 "WardingFlareScaling"
--             ]
--         }
--     ]
--   },
--   {
--     "Comment": "Remove Sorcerer MetaMagic selection at level 2 and 3",
--     "UUIDs": [
--         "706a869d-7894-453d-b6ac-9428f617649c",
--         "e60b351e-aa26-4c5e-bbdc-ce5c8af03b5a"
--     ],
--     "Selectors": [
--         {
--             "Action": "Remove",
--             "Function": "SelectPassives",
--             "UUID": "49704931-e47b-4ce6-abc6-dfa7ba640752"
--         },
--         {
--             "Action": "Remove",
--             "Function": "SelectPassives",
--             "UUID": "c3506532-36eb-4d18-823e-497a537a9619"
--         }
--     ]
--   },
--   {
--     "Comment": "Add Sorcerer MetaMagic selection (2) at 3",
--     "UUID": "e60b351e-aa26-4c5e-bbdc-ce5c8af03b5a",
--     "Selectors": [
--         {
--             "Action": "Insert",
--             "Function": "SelectPassives",
--             "Params": {
--                 "Guid": "49704931-e47b-4ce6-abc6-dfa7ba640752",
--                 "Amount": "2",
--                 "Amount2": "Metamagic"
--             }
--         }
--     ]
--   },
--   {
--     "Comment": "Add Sorcerer MetaMagic selection (2) at 10",
--     "UUID": "1c091ba4-d911-4c48-99ed-da58463f2ed3",
--     "Selectors": [
--         {
--             "Action": "Insert",
--             "Function": "SelectPassives",
--             "Params": {
--                 "Guid": "49704931-e47b-4ce6-abc6-dfa7ba640752",
--                 "Amount": "1",
--                 "Amount2": "Metamagic"
--             }
--         }
--     ]
--   },
--   {
--     "Comment": "Draconic Sorcerer get fly at level 14, not 11",
--     "UUID": "94ba4bb9-7335-497a-8ac0-1ec535fb85d6",
--     "Selectors": [
--         {
--             "Action": "Remove",
--             "Function": "AddSpells",
--             "UUID": "12150e11-267a-4ecc-a3cc-292c9e2a198d"
--         }
--     ]
--   },
--   {
--     "Comment": "Storm Sorcerer doesn't get free spells at level 6",
--     "UUID": "daca4d03-f668-4c71-a013-4532cba886f5",
--     "Selectors": [
--         {
--             "Action": "Remove",
--             "Function": "AddSpells",
--             "UUID": "1efc151d-f076-4ab9-9886-d8c5625691c9"
--         }
--     ]
--   },
--   {
--     "Comment": "Storm Sorcerer get Storm Fury at level 14, not 11",
--     "UUID": "18a0cd31-027a-41ab-ae20-0131332a0439",
--     "Strings": [
--         {
--             "Action": "Remove",
--             "Type": "PassivesAdded",
--             "Strings": [
--                 "StormsFury"
--             ]
--         }
--     ]
--   },
--   {
--     "Comment": "Wild Sorcerer get Controlled Chaos at level 14, not 11",
--     "UUID": "466ce7dc-1eec-44c5-a223-d652c7b1a5f2",
--     "Strings": [
--         {
--             "Action": "Remove",
--             "Type": "PassivesAdded",
--             "Strings": [
--                 "ControlledChaos"
--             ]
--         }
--     ]
--   }
--   ]
--   }
  
  local function onStatsLoaded()
    bardChanges()
  end
  
  if Ext.Mod.IsModLoaded(RAW_ModCompatibilityFramework) then
    Ext.Events.StatsLoaded:Subscribe(onStatsLoaded)
  end
  