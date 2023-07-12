--[[
  Code was written for Nord - Discord Bot. 
  Date: 12.07.2023
--]]

local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
    print('[Nord] ' .. client.user.username)
end)

client:on('messageCreate', function(message)
    if message.content == '!ping' then
        message.channel:send('Pong!')
    end
end)

client:run('TOKEN')
