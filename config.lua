Data = {
    appId = '123456',
    asset = 'logo',
    text = '[%s/200] Players - Queue: %s', -- %s is the player count
    smallText = 'Fusion RP',
    queueExport = function ()
        return exports['n4_queue']:queueSize()
    end,
    actions = {
        { 'Join Our Discord!', 'https://discord.gg/fivemdev' },
        { 'Play Our Server!', 'fivem://connect/' }
    }
}