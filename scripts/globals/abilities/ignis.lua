-----------------------------------
-- Ability: Ignis
-- Increases resistance against ice and deals fire damage.
-- Obtained: Rune Fencer Level 5
-- Recast Time: 0:05
-- Duration: 5:00
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/job_utils/rune_fencer")
-----------------------------------
local ability_object = {}

ability_object.onAbilityCheck = function(player, target, ability)
    return 0, 0
end

ability_object.onUseAbility = function(player, target, ability, action)
    xi.job_utils.rune_fencer.useRuneEnchantment(player, target, ability, xi.effect.IGNIS)
end

return ability_object
