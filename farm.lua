local lp = game.Players.LocalPlayer
local character = lp.Character
local farm = game:service"TweenService";
local info = TweenInfo.new(0.2,Enum.EasingStyle.Bounce);

game.RunService.RenderStepped:Connect(function()
       spawn(function()
           if lp.PlayerGui.ScreenGui.UI.Target.Visible then
               local target = lp.PlayerGui.ScreenGui.UI.Target.TargetText.Text  
               game.Players.LocalPlayer.Character.Humanoid.Sit = true
               wait(0.25)
               local autokill = farm:Create(character["HumanoidRootPart"],info,{CFrame= game.Workspace[target].HumanoidRootPart.CFrame});
               while true do
               autokill:Play()
               wait(0.01)
               game.Players.LocalPlayer.Character.Humanoid.Sit = false
               wait(0.1)
               autokill:Stop()
               game.Players.LocalPlayer.Character.Humanoid.Sit = true
               if game.Workspace[target].Humanoid.Health == 0 then
                autokill:Stop()
               wait(0.1)
                else
                wait(0.1)
               end
               end
end
       end)
   end)
