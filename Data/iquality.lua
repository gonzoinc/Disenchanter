--- mapping of the item quality

function ItemQuality(itemID)
    local eText
    if (itemID == 0) then
        eText = "|cFFFFFFFFPoor"
    elseif (itemID == 1) then
        eText = "|cFFFFFFFFCommon"
    elseif (itemID == 2) then
        eText = "|cFF1EFF00Uncommon"
    elseif (itemID == 3) then
        eText = "|cFF0070DDRare"
    elseif (itemID == 4) then
        eText = "|cFFA335EEEpic"
    elseif (itemID == 5) then
        eText = "|cFFFF8000Legendary"
    elseif (itemID == 6) then
        eText = "|cFFE6CC80Artifact"
    elseif (itemID == 7) then
        eText = "|cFF00CCFFHeirloom"
    elseif (itemID == 8) then
        eText = "|cFF00CCFFWoToken"
    end

    return eText
end