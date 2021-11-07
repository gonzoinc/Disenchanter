Disenchanter = LibStub("AceAddon-3.0"):NewAddon("Disenchanter", "AceEvent-3.0", "AceConsole-3.0");
local AceConfig = LibStub("AceConfigDialog-3.0");
local name = "Disenchanter";
local version = "v1.0";
local itemID
local expacID
local iType
local iQuality

function Disenchanter:OnInitialize()
    local f = CreateFrame("Frame")
    f:RegisterEvent("PLAYER_LOGIN")
    f:SetScript("OnEvent", function(_, event)
        if event == "PLAYER_LOGIN" then
            print(name, version, "- loaded")
        end
    end
    )
end

GameTooltip:HookScript("OnTooltipSetItem",
    function(self)
        itemName, itemLink = self:GetItem()
        itemID = tonumber(strmatch(itemLink, "item:(%d+):"))

        iType = select(6, GetItemInfo(tostring(itemID)))
        expacID = select(15, GetItemInfo(tostring(itemID)))
        iQuality = select(3, GetItemInfo(tostring(itemID)))



        if (iType ~= nil) and (expacID ~= nil) and (iType == "Armor" or iType == "Weapon") then
            GameTooltip:AddLine("\n|cFF7FFFD4------ Disenchanter ------", 1, 1, 1, 1)
            GameTooltip:AddLine(
                    "|cFFFFFFFFExpansion: " .. ExpansionText(expacID) ..
                    "\n|cFFFFFFFFQuality: " .. ItemQuality(iQuality),
                    1, 1, 1, 1)
            if iQuality >=2  and iQuality <=4 then
                mats = getExpansionMaterials(expacID,iQuality)
                if mats ~= nil then
                    GameTooltip:AddLine("|cFF7FFFD4Disenchants into: \n", 1, 1, 1, 1)
                    for i, matID in pairs(mats) do
                        if matID ~= nil then

                            iTexture = select(10, GetItemInfo(tostring(matID)))
                            if iTexture == nil then iTexture = "" end

                            matString = select(1,GetItemInfo(tostring(matID)))
                            if matString == nil then matString = "" end

                            iQ = select(3, GetItemInfo(tostring(matID)))
                            if iQ ~= nil then
                                local r, g, b, hex = GetItemQualityColor(iQ)
                            else
                                local r, g, b, hex = {1,1,1,"ffffff"}
                            end

                            GameTooltip:AddLine("   " .. "|T"..iTexture..":0|t " .. matString, r, g, b, 1)
                        end
                    end
                end

                GameTooltip:AddLine(" ", nil, nil, nil, 0)
            end
        end
    end
)
