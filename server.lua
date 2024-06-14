GlobalState:set('rpc', {GetNumPlayerIndices(), 0}, true)

CreateThread(function()
    while true do 
        Wait(1000 * 60) 
        GlobalState:set('rpc', {GetNumPlayerIndices(), Data.queueExport()}, true)
    end
end)