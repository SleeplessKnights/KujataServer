-----------------------------------
-- func: godmode
-- desc: Toggles god mode on the player, granting them several special abilities.
-- Pass variable of 1 to command to enable a "soft" god mode.
-----------------------------------

cmdprops =
{
    permission = 1,
    parameters = "i"
}

function onTrigger(player, arg1)
    if (not arg1 or arg1 == 0) and player:getCharVar("GodMode") == 0 then
        -- Toggle GodMode on..
        player:setCharVar("GodMode", 1)

        -- Add bonus effects to the player..
        player:addStatusEffect(xi.effect.MAX_HP_BOOST, 1000, 0, 0)
        player:addStatusEffect(xi.effect.MAX_MP_BOOST, 1000, 0, 0)
        player:addStatusEffect(xi.effect.MIGHTY_STRIKES, 1, 0, 0)
        player:addStatusEffect(xi.effect.HUNDRED_FISTS, 1, 0, 0)
        player:addStatusEffect(xi.effect.CHAINSPELL, 1, 0, 0)
        player:addStatusEffect(xi.effect.PERFECT_DODGE, 1, 0, 0)
        player:addStatusEffect(xi.effect.INVINCIBLE, 1, 0, 0)
        player:addStatusEffect(xi.effect.ELEMENTAL_SFORZO, 1, 0, 0)
        player:addStatusEffect(xi.effect.MANAFONT, 1, 0, 0)
        player:addStatusEffect(xi.effect.REGAIN, 300, 0, 0)
        player:addStatusEffect(xi.effect.REFRESH, 99, 0, 0)
        player:addStatusEffect(xi.effect.REGEN, 99, 0, 0)

        -- Add bonus mods to the player..
        player:addMod(xi.mod.RACC, 2500)
        player:addMod(xi.mod.RATT, 2500)
        player:addMod(xi.mod.ACC, 2500)
        player:addMod(xi.mod.ATT, 2500)
        player:addMod(xi.mod.MATT, 2500)
        player:addMod(xi.mod.MACC, 2500)
        player:addMod(xi.mod.RDEF, 2500)
        player:addMod(xi.mod.DEF, 2500)
        player:addMod(xi.mod.MDEF, 2500)

        -- Heal the player from the new buffs..
        player:addHP( 50000 )
        player:setMP( 50000 )
        player:PrintToPlayer("God Mode enabled.")
    elseif (not arg1 or arg1 == 0) and player:getCharVar("GodMode") == 1 then
        -- Toggle GodMode off..
        player:setCharVar("GodMode", 0)

        -- Remove bonus effects..
        player:delStatusEffect(xi.effect.MAX_HP_BOOST)
        player:delStatusEffect(xi.effect.MAX_MP_BOOST)
        player:delStatusEffect(xi.effect.MIGHTY_STRIKES)
        player:delStatusEffect(xi.effect.HUNDRED_FISTS)
        player:delStatusEffect(xi.effect.CHAINSPELL)
        player:delStatusEffect(xi.effect.PERFECT_DODGE)
        player:delStatusEffect(xi.effect.INVINCIBLE)
        player:delStatusEffect(xi.effect.ELEMENTAL_SFORZO)
        player:delStatusEffect(xi.effect.MANAFONT)
        player:delStatusEffect(xi.effect.REGAIN)
        player:delStatusEffect(xi.effect.REFRESH)
        player:delStatusEffect(xi.effect.REGEN)

        -- Remove bonus mods..
        player:delMod(xi.mod.RACC, 2500)
        player:delMod(xi.mod.RATT, 2500)
        player:delMod(xi.mod.ACC, 2500)
        player:delMod(xi.mod.ATT, 2500)
        player:delMod(xi.mod.MATT, 2500)
        player:delMod(xi.mod.MACC, 2500)
        player:delMod(xi.mod.RDEF, 2500)
        player:delMod(xi.mod.DEF, 2500)
        player:delMod(xi.mod.MDEF, 2500)

        player:PrintToPlayer("God Mode disabled.")
    end

    -- Enables a toned down version of god mode
    if arg1 == 1 and player:getCharVar("GodMode") == 0 then
        -- Toggle Soft GodMode on..
        player:setCharVar("GodMode", 2)

        -- Add bonus effects to the player..
        player:addStatusEffect(xi.effect.MAX_HP_BOOST,200,0,0)
        player:addStatusEffect(xi.effect.REGAIN,50,0,0)
        player:addStatusEffect(xi.effect.REFRESH,999,0,0)
        player:addStatusEffect(xi.effect.REGEN,999,0,0)
        player:addStatusEffect(xi.effect.CHAINSPELL, 1, 0, 0)
        player:addStatusEffect(xi.effect.MANAFONT, 1, 0, 0)

        -- Heal the player from the new buffs..
        player:addHP( 50000 )
        player:setMP( 50000 )

        player:PrintToPlayer("Soft God Mode enabled.")
    elseif (not arg1 or arg1 == 1) and player:getCharVar("GodMode") == 2 then
        -- Toggle Soft GodMode off..
        player:setCharVar("GodMode", 0)

        -- Remove bonus effects..
        player:delStatusEffect(xi.effect.MAX_HP_BOOST)
        player:delStatusEffect(xi.effect.REGAIN)
        player:delStatusEffect(xi.effect.REFRESH)
        player:delStatusEffect(xi.effect.REGEN)
        player:delStatusEffect(xi.effect.CHAINSPELL)
        player:delStatusEffect(xi.effect.MANAFONT)

        player:PrintToPlayer("Soft God Mode disabled.")
    end
end
