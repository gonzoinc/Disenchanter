Disenchanter = LibStub("AceAddon-3.0"):NewAddon("Disenchanter", "AceEvent-3.0");

local name = "Disenchanter";
local version = "v1.0.4";
local itemID
local expacID
local iType
local itemLink
local iQuality
local iCosmetic = false

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
        
            if itemLink ~= nil then
                itemID = tonumber(strmatch(itemLink, "item:(%d+):"))

                iType = select(6, GetItemInfo(tostring(itemLink)))
                expacID = select(15, GetItemInfo(tostring(itemLink)))
                iQuality = select(3, GetItemInfo(tostring(itemLink)))

                if (iType ~= nil) and (expacID ~= nil) then

                    -- check it item is a cosmetic
                    local iSubType = select(7, GetItemInfo(tostring(itemLink)))

                    -- split it out since API returns a damn string instead of a table....
                    if (strsplit(" " , iSubType, 1 ) == "Cosmetic") then
                        iCosmetic = true
                    end

                    GameTooltip:AddLine("|cFFFFFFFFExpansion: " .. ExpansionText(expacID), 1, 1, 1, 1)
                    if ((iType == "Armor" or iType == "Weapon") and not iCosmetic) then
                        GameTooltip:AddLine("\n|cFF7FFFD4------ Disenchanter ------", 1, 1, 1, 1)
                        GameTooltip:AddLine("|cFFFFFFFFQuality: " .. ItemQuality(iQuality), 1, 1, 1, 1)
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
                        end
                        GameTooltip:AddLine(" ", nil, nil, nil, 0)
                    end
                end
            end
        end
)
