--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: WoTD Team; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function ReanimatedNoble_OnCombat(Unit, Event)
	Unit:RegisterEvent("ReanimatedNoble_SanguineStrike", 8000, 0)
end

function ReanimatedNoble_SanguineStrike(Unit, Event) 
	Unit:FullCastSpellOnTarget(51285, Unit:GetMainTank()) 
end

function ReanimatedNoble_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function ReanimatedNoble_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(27552, 1, "ReanimatedNoble_OnCombat")
RegisterUnitEvent(27552, 2, "ReanimatedNoble_OnLeaveCombat")
RegisterUnitEvent(27552, 4, "ReanimatedNoble_OnDied")