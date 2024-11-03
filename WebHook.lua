if game.PlaceId == 7449423635 then
    WebHook = "https://discord.com/api/webhooks/1302592737073430611/Ib2t9zZqftLndmppVmEr0DrbRoxjoThyIOLadkTUi22M2yrZU6zneVDBMIaAFQdWsqka"
    local HttpService = game:GetService("HttpService")
    local Data = {
        ["embeds"]= {
            {            
                ["title"]= "**Kirainc Hub Backend**";
                ["color"]= tonumber(0x7269da);
                ["fields"]= {
                    {
                        ["name"]= "Username",
                        ["value"]= "```"..tostring(game.Players.LocalPlayer.Name).."```",
                        ["inline"]= true
                    },
                    {
                        ["name"]= "Hardware Id",
                        ["value"]= "```"..game:GetService("RbxAnalyticsService"):GetClientId.."```",
                        ["inline"]= true
                    },
                    {
                        ["name"]= "Job Id",
                        ["value"]= "```"..game.JobId.."```",
                        ["inline"]= true
                    },
                    {
                        ["name"] = "Players Count",
                        ["value"] = "```"..playerCount.."/12```",
                        ["inline"] = true
                    },
                }              
            }
        }
    }
    local Headers = {["Content-Type"]="application/json"}
    local Encoded = HttpService:JSONEncode(Data)
    
    Request = http_request or request or HttpPost or syn.request
    local Final1 = {Url = WebHook , Body = Encoded, Method = "POST", Headers = Headers}
    
    Request(Final1)
end
