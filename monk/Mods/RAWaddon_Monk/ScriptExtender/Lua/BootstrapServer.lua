local function monkServerChanges()
    local playerGUID
        
    -- Jump spells have different source
    Ext.Osiris.RegisterListener("CastSpell", 5, "after", function(characterGUID, spellID)
        if Osi.HasActiveStatus(characterGUID, "SLOWFALL_PASSIVE_TECHNICAL") == 1 and SpellHasSpellFlag(spellID, "IsJump") == 1 and SpellHasSpellFlag(spellID, "AddFallDamageOnLand") == 1 and GetActionResourceValuePersonal(characterGUID, "ReactionActionPoint", 0) > 0 then
            Osi.ApplyStatus(characterGUID, "SLOWFALL_TECHNICAL", 6.0, 1, characterGUID)
            playerGUID = characterGUID
        end
    end)
  
    -- For everything else
    Ext.Osiris.RegisterListener("ForceMoveStarted", 3, "after", function(sourceGUID, targetGUID)
      if Osi.HasActiveStatus(targetGUID, "SLOWFALL_PASSIVE_TECHNICAL") == 1 and GetActionResourceValuePersonal(targetGUID, "ReactionActionPoint", 0) > 0 then
        Osi.ApplyStatus(targetGUID, "SLOWFALL_TECHNICAL", 6.0, 1, targetGUID)
        playerGUID = targetGUID
      end
    end)
  
    Ext.Osiris.RegisterListener("MovedBy", 2, "before", function(targetGUID, sourceGUID)
      if playerGUID ~= nil and playerGUID == targetGUID and Osi.HasActiveStatus(targetGUID, "SLOWFALL_TECHNICAL") == 1 then
        Osi.RemoveStatus(targetGUID, "SLOWFALL_TECHNICAL")
        playerGUID = nil
      end
    end)    
  end

  
  monkServerChanges()

  