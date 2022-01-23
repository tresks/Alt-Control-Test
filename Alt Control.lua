game.Players[Controller].Chatted:connect(function(Message)
    if Message:sub(1, 10) == "!givecash " then
        for i,Player in pairs(game.Players:GetPlayers()) do
        if string.lower(Player.Name):sub(1, string.len(Message:sub(11))) == string.lower(Message:sub(11)) then
            plr = Player.Name
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace[plr].HumanoidRootPart.CFrame
            wait(.3)
               local args = {
                [1] = "Giving Cash to "..plr,
                    [2] = "All"
                }
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

            game.Players.LocalPlayer.Character.Humanoid.Health = 0
            end
        end
    end
end)
game.Players[Controller].Chatted:connect(function(Message)
    if Message:sub(1, 10) == "!givecash " then
        for i,Player in pairs(game.Players:GetPlayers()) do
        if string.lower(Player.Name):sub(1, string.len(Message:sub(11))) == string.lower(Message:sub(11)) then
            plr = Player.Name
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace[plr].HumanoidRootPart.CFrame
            wait(.3)
               local args = {
                [1] = "Giving Cash to "..plr,
                    [2] = "All"
                }
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

            game.Players.LocalPlayer.Character.Humanoid.Health = 0
            end
        end
    end
end)
getgenv.loopcash() = false
game.Players[Controller].Chatted:connect(function(Message)
    if Message:sub(1, 14) == "!loopgivecash " then
        for i,Player in pairs(game.Players:GetPlayers()) do
        getgenv.loopcash() = true
	    while getgenv.loopcash() == true and wait(5) do
            if string.lower(Player.Name):sub(1, string.len(Message:sub(15))) == string.lower(Message:sub(15)) then
                plr = Player.Name
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace[plr].HumanoidRootPart.CFrame
                wait(.3)
                local args = {
                    [1] = "Giving Cash to "..plr,
                    [2] = "All"
                }
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                end
            end
        end
    end
end)
getgenv.loopcash() = false
game.Players[Controller].Chatted:connect(function(Message)
    if Message:sub(1, 18) == "!stoploopgivecash " then
        for i,Player in pairs(game.Players:GetPlayers()) do
        if string.lower(Player.Name):sub(1, string.len(Message:sub(19))) == string.lower(Message:sub(19)) then
            plr = Player.Name
            wait(.3)
            local args = {
                [1] = "Stopped giving cash to "..plr,
                [2] = "All"
            }
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
            end
        end
    end
end)
