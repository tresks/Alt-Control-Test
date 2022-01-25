local controller = "XxYyxX04"
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
    if Message:sub(1, 14) == "!loopgivecash " then
        for i,Player in pairs(game.Players:GetPlayers()) do
        if string.lower(Player.Name):sub(1, string.len(Message:sub(15))) == string.lower(Message:sub(15)) then
            _G.loopcash = true
            plr = Player.Name
            local args = {
                [1] = "Giving Cash to "..plr,
                [2] = "All"
            }
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	            while wait(3) do
                    if _G.loopcash == true then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace[plr].HumanoidRootPart.CFrame
                        wait(.3)
                        game.Players.LocalPlayer.Character.Humanoid.Health = 0
                    end
                end
            end
        end
    end
end)
game.Players[Controller].Chatted:connect(function(Message)
    if Message:sub(1, 5) == "!stop" then
        local args = {
            [1] = "No longer dropping cash",
            [2] = "All"
        }
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
        _G.loopcash = false
        plr = Player.Name
        wait(.3)
    end
end)
