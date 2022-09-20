local key = _G.Key
local check = "https://thewunnascript.000webhostapp.com/check.php?key=" .. key
if game:HttpGet(check) == "Whitelisted" then
loadstring(game:HttpGet("https://thewunnascript.000webhostapp.com/script.lua"))()
else
game.Players.LocalPlayer:Kick("Invalid Key! Please Rejoin And Try Again.")
end
