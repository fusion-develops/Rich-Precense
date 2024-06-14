local SetDiscordRichPresenceAction = SetDiscordRichPresenceAction
local playerCount

local Id = PlayerId()
local ServerId = GetPlayerServerId(Id)
local Name = GetPlayerName(Id)

local function Update(_,_, playerCount)
   
    if not playerCount then 
        playerCount = GlobalState.playerCount

        for i = 1, #Data.actions do 
            local action = Data.actions[i]
            SetDiscordRichPresenceAction(i-1, action[1], action[2])
        end       

        SetDiscordAppId(Data.appId)
        SetDiscordRichPresenceAsset(Data.asset)
        SetDiscordRichPresenceAssetSmallText(Data.smallText)
    end 

    SetDiscordRichPresenceAssetText('[ID: ' .. ServerId .. '] ' .. Name)
    SetRichPresence(Data.text:format(playerCount[1], playerCount[2]))
end 

CreateThread(Update)
AddStateBagChangeHandler('rpc', 'global', Update)