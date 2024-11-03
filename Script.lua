-------------------Script by aravkarthik--------------------
local TeleportService = game:GetService("TeleportService")
local gameID = 18741513424
 
function onTouched(hit)
    local player = game.Players:GetPlayerFromCharacter(hit.Parent)
    if player then
        TeleportService:Teleport(gameID, player)
    end
end
 
script.Parent.Touched:connect(onTouched)
