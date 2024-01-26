RAW_ModRawAddon = "a5799115-ef11-457b-92cd-2c927de09b02"
RAW_ModCompatibilityFramework = "67fbbd53-7c7d-4cfa-9409-6d737b4d92a9"

RAW_Human_1 = "dbde4d66-d3e4-4c3f-ae87-fd6e2d1cd276"
RAW_HalfElf_1 = "a1729574-2f7b-4561-91d8-3766cf940420"
RAW_WoodHalfElf_1 = "cb0f84ec-1b1d-4ecc-9ab5-76261e332f5a"
RAW_DrowHalfElf_1 = "58dae581-c25a-4dfb-8a57-589bf4b34f62"
RAW_Elf_1 = "496486a4-b5f2-4f91-90ea-6cad9023952e"
RAW_HighElf_1 = "db13a1fb-7d64-4309-a1c8-e2a5c752ded5"
RAW_WoodElf_1 = "b262db2c-7a80-4c76-a1e8-0efdb9c1db13"
RAW_Drow_1 = "4a634f24-bdcb-4559-b8be-7847133ad1c3"
RAW_Githyanki_1 = "f653d537-bc14-4fea-b7d2-25734ec928a2"
RAW_Dragonborn_1 = "cabc4d46-f08e-4a48-8937-0bd1067ab43d"
RAW_HalfOrc_1 = "816fa8c7-7648-48f7-8309-cb4e7383e45f"
RAW_Dwarf_1 = "3c9a0bd8-bb0f-4a42-b77f-7a9a1cff2e5d"
RAW_MountainDwarf_1 = "3576f8c6-e515-49c5-808c-b68b77154ffd"
RAW_HillDwarf_1 = "207d038e-1add-4335-81d1-b0861f524c19"
RAW_Duergar_1 = "bd012f5b-0a0b-424e-ab7c-186dbd82ab30"
RAW_Tiefling_1 = "56529178-3df2-4067-b1c0-e35fe82fbd37"
RAW_ZarielTiefling_1 = "89d57acd-85ff-4da6-b989-9b82d0241e46"
RAW_AsmodeusTiefling_1 = "a8b18f0c-fe70-4f13-9dbc-23f4dbc3d648"
RAW_MephistophelesTiefling_1 = "bdd1cf22-1b3c-4bc6-8313-898a49fcfe49"
RAW_Halfling_1 = "963edcba-c572-4f51-b447-8810bbb43a8e"
RAW_StoutHalfling_1 = "b7a39730-2820-40c7-be96-2c134fead68a"
RAW_LightfootHalfing_1 = "bc2d257b-a405-4f58-891e-3083c5f71127"
RAW_Gnome_1 = "d48f8fb3-4351-4b5d-a28c-946fd33be726"
RAW_DeepGnome_1 = "938b6f72-18a6-4af0-924b-5292251d32bf"
RAW_ForestGnome_1 = "a63bbb3c-c37c-4578-94e6-7d1c4c063d5c"
RAW_RockGnome_1 = "aa2257a9-1779-4d8b-be65-8a08eede07fa"

RAW_Barbarian_1 = "a2198ee9-ea4c-468e-b6b4-22b32d37806e"
RAW_Bard_1 = "374c3aae-828b-44d8-b4e3-51ba802977dd"
RAW_Cleric_1 = "1dbce574-fff1-49be-b7da-704f9b73cad9"
RAW_Druid_1 = "b499258c-2823-42f1-b8ca-0a5ee8455e11"
RAW_Fighter_1 = "dfb2fd83-9849-4c2d-be84-adedb81a867a"
RAW_Monk_1 = "c091d27e-009b-4841-8bde-5e63e5ca8f4e"
RAW_Paladin_1 = "b60618d1-c262-42b5-9fdd-2c0f7aa5e5af"
RAW_Ranger_1 = "ad1084b1-b99f-6720-cfdd-cf82ad44345b"
RAW_Rogue_1 = "16f00e7f-12f6-4cff-b610-4ee738b02d62"
RAW_Sorcerer_1 = "42af9bda-9ac0-4564-920b-f9ca1588d6ee"
RAW_Warlock_1 = "a7767dc5-e6ab-4e05-96fd-f0424256121c"
RAW_Wizard_1 = "c201c736-3717-4c3c-9e36-2ae7387597a3"

RAW_Abilities_Bonus = "b9149c8e-52c8-46e5-9cb6-fc39301c05fe"

-- Strings
function addString(target, type, strings) 
    return {
        {
            modGuid = RAW_ModRawAddon,
            FileType = "Progression",
            Target = target,
            Type = type,
            Strings = strings
        }
    }
end

function removeString(target, type, strings) 
    return {
        {
            modGuid = RAW_ModRawAddon,
            FileType = "Progression",
            Target = target,
            Type = type,
            Strings = strings
        }
    }
end
  
-- Selectors
function removeSelector(target, type, uuid) 
    return {
        {
            modGuid = RAW_ModRawAddon,
            FileType = "Progression",
            TargetUUID = target,
            Function = type,
            ListUUID = uuid
        }
    }
end

function addSelectSpells(target, uuid, amount, payload) 
    return {
        {
            modGuid = RAW_ModRawAddon,
            FileType = "Progression",
            TargetUUID = target,
            Function = "SelectSpells",
            Params = {
                Guid = uuid,
                Amount = amount,
                SwapAmount = payload.SwapAmount,
                SelectorId = payload.SelectorId,
                CastingAbility = payload.CastingAbility,
                ActionResource = payload.ActionResource,
                PrepareType = payload.PrepareType,
                CooldownType = payload.CooldownType
            }
        }
    }
end

function addAddSpells(target, uuid, payload) 
    return {
        {
            modGuid = RAW_ModRawAddon,
            FileType = "Progression",
            Target = target,
            Function = "AddSpells",
            Params = {
                Guid = uuid,
                SelectorId = payload.SelectorId,
                CastingAbility = payload.CastingAbility,
                ActionResource = payload.ActionResource,
                PrepareType = payload.PrepareType,
                CooldownType = payload.CooldownType
            }
        }
    }
end

function addSelectPassives(target, uuid, amount, selector) 
    return {
        {
            modGuid = RAW_ModRawAddon,
            FileType = "Progression",
            Target = target,
            Function = "SelectPassives",
            Params = {
                Guid = uuid,
                Amount = amount,
                SelectorId = selector
            }            
        }
    }
end

function addSelectAbilityBonus(target, uuid, amounts) 
    return {
        {
            modGuid = RAW_ModRawAddon,
            FileType = "Progression",
            Target = target,
            Function = "SelectAbilityBonus",
            Params = {
                Guid = uuid,
                BonusType = "AbilityBonus",
                Amounts = amounts
            }
        }
    }
end