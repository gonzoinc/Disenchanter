--- Mapping of the expansions to the expansionId

function ExpansionText(expId)
    local eText
    if (expId == 0) then
        eText = "|cFFE6CC80Classic"
    elseif (expId == 1) then
        eText = "|cFF1EFF00The Burning Crusades"
    elseif (expId == 2) then
        eText = "|cFF66ccffWraith of the Lich King"
    elseif (expId == 3) then
        eText = "|cFFff3300Cataclysm"
    elseif (expId == 4) then
        eText = "|cFF00FF96Mists of Pandaria"
    elseif (expId == 5) then
        eText = "|cFFff8C1AWarlords of Draenor"
    elseif (expId == 6) then
        eText = "|cFFA335EELegion"
    elseif (expId == 7) then
        eText = "|cFFFF7D0ABattle of Azeroth"
    elseif (expId == 8) then
        eText = "|cFFE6CC80Shadowlands"
    elseif (expId == 9) then
        eText = "|cFFA0A0A0Dragonflight"
    elseif (expId == 10) then
        eText = "|cFFffc045The War Within"
    end

    return eText
end
