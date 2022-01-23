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