local script = game:HttpGet("https://raw.githubusercontent.com/static825/Shift/refs/heads/main/games/" .. game.GameId .. ".luau")

if script ~= "404: Not Found" and script ~= "" then
    loadstring(script)() -- Runs the code we already downloaded
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Error";
        Text = "Game not supported!";
        Duration = 5;
        Button1 = "OK"
    })
end
