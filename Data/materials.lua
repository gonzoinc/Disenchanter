local mats

-- Enchanting reagents
-- Classic
--- uncommon
local LMAGIC = 10938
local GMAGIC = 10939
local STRANGE = 10940 --
--- rare
local LETERNAL = 16202
local SBRILLIANT = 14343
local ILLUSION = 16204
--- epic
local RILLUSION = 156930
local LBRILLIANT = 14344
local GETERNAL = 16203


-- Burning Crusade
--- uncommon
local ARCANE = 22445
local LPLANAR = 22447
--- rare
local GPLANAR = 22446
local SPRISMATIC = 22448
--- epic
local LPRISMATIC = 22449
local VOID = 22450


-- Wrath
--- uncommon
local INFINITE = 34054
local LCOSMIC = 34056
--- rare
local SDREAM_SHARD = 34053
local GCOSMIC = 34055
--- epic
local DREAM_SHARD = 34052
local ABYSS = 34057


-- Cata
--- uncommon
local HYPNOTIC = 52555
local LCELESTIAL = 52718
--- rare
local GCELESTIAL = 52719 -- And Uncommon
local SHEAVENLY_SHARD = 52720
--- epic
local HEAVENLY_SHARD = 52721
local MAELSTROM = 52722

-- Mists
--- uncommon
local ETHERAL = 74247
local SETHERAL = 74252
--- rare
local SPIRIT = 74249
local MYSTERIOUS = 74250
--- epic
local SHA_CRYSTAL = 74248

-- Warlords
--- uncommon
local DRAENIC = 109693
--- rare
local SLUMINOUS = 115502
local LUMINOUS = 111245
--- epic
local TEMPORAL = 113588
local FRACTEMPORAL = 115504

-- Legion
--- uncommon
local ARKHANA	= 124440
--- rare
local LEYLIGHT_SHARD = 124441
--- epic
local CHAOS_CRYSTAL = 124442

-- Battle
--- uncommon
local GLOOMDUST = 152875
--- rare
local UMBRASHARD = 152876
--- epic
local VEILEDCRYSTAL = 152877

-- Shadowlands
--- uncommon
local SOULDUSTNEW = 172230
--- rare
local SACREDSHARD = 172231
--- epic
local ETERNALCRYS = 172232

-- Dragonflight
--- uncommon
local CHROMATICDUST = 194123
--- rare
local VIBRANTSHARD = 19424
--- epic
local RESONANTCRY = 200113



--- No Longer In Game
--local NEXUS = 20725
--local LRADIANT = 11178
--local LGLOWING = 11139
--local LGLIMMERING = 11084
--local SRADIANT = 11177
--local SGLOWING = 11138
--local SGLIMMERING = 10978
--local GNETHER = 11175
--local GMYSTIC = 11135
--local GASTRAL = 11082
--local LNETHER = 11174
--local LMYSTIC = 11134
--local LASTRAL = 10998
--local DREAM = 11176
--local VISION = 11137
--local SOUL = 11083
--local SHA_FRAGMENT = 105718
--local BLOOD_SARGERAS = 124124
--local EXPULSOM = 152668

function getExpansionMaterials(expID, iQuality)

    if (expID == nil) or (iQuality == nil) then
        return mats{};
    end

    -- Classic Mats
    if (expID == 0) then
        if (iQuality == 2 ) then --Uncommon
            mats = { LMAGIC, GMAGIC, STRANGE }
        elseif (iQuality == 3 ) then --rare
            mats = { LETERNAL, SBRILLIANT, ILLUSION }
        elseif (iQuality == 4 ) then --epic
            mats = { RILLUSION, LBRILLIANT, GETERNAL }
        end
        return mats
    end

    -- TBC Mats
    if (expID == 1) then
        if (iQuality == 2 ) then --Uncommon
            mats = { ARCANE, LPLANAR, GPLANAR }
        elseif (iQuality == 3 ) then --rare
            mats = { SPRISMATIC, LPRISMATIC }
        elseif (iQuality == 4 ) then --epic
            mats = { VOID }
        end
        return mats
    end

    -- WOTLK Mats
    if (expID == 2) then
        if (iQuality == 2 ) then --Uncommon
            mats = { INFINITE, LCOSMIC, GCOSMIC }
        elseif (iQuality == 3 ) then --rare
            mats = { SDREAM_SHARD, DREAM_SHARD }
        elseif (iQuality == 4 ) then --epic
            mats = { ABYSS }
        end
        return mats
    end

    -- CATA Mats
    if (expID == 3) then
        if (iQuality == 2 ) then --Uncommon
            mats = { HYPNOTIC, LCELESTIAL, GCELESTIAL }
        elseif (iQuality == 3 ) then --rare
            mats = { SHEAVENLY_SHARD, HEAVENLY_SHARD }
        elseif (iQuality == 4 ) then --epic
            mats = { MAELSTROM }
        end
        return mats
    end

    -- MISTS Mats
    if (expID == 4) then
        if (iQuality == 2 ) then --Uncommon
            mats = { SPIRIT, MYSTERIOUS }
        elseif (iQuality == 3 ) then --rare
            mats = { ETHERAL, SETHERAL }
        elseif (iQuality == 4 ) then --epic
            mats = { SHA_CRYSTAL }
        end
        return mats
    end

    -- WOD Mats
    if (expID == 5) then
        if (iQuality == 2 ) then --Uncommon
            mats = { DRAENIC }
        elseif (iQuality == 3 ) then --rare
            mats = { SLUMINOUS, LUMINOUS }
        elseif (iQuality == 4 ) then --epic
            mats = { TEMPORAL, FRACTEMPORAL }
        end
        return mats
    end

    -- Legion Mats
    if (expID == 6) then
        if (iQuality == 2 ) then --Uncommon
            mats = { ARKHANA }
        elseif (iQuality == 3 ) then --rare
            mats = { LEYLIGHT_SHARD }
        elseif (iQuality == 4 ) then --epic
            mats = { CHAOS_CRYSTAL }
        end
        return mats
    end

    -- BOA Mats
    if (expID == 7) then
        if (iQuality == 2 ) then --Uncommon
            mats = { GLOOMDUST }
        elseif (iQuality == 3 ) then --rare
            mats = { UMBRASHARD }
        elseif (iQuality == 4 ) then --epic
            mats = { VEILEDCRYSTAL }
        end
        return mats
    end

    --Shadowlands Mats
    if (expID == 8) then
        if (iQuality == 2 ) then --Uncommon
            mats = { SOULDUSTNEW }
        elseif (iQuality == 3 ) then --rare
            mats = { SACREDSHARD }
        elseif (iQuality == 4 ) then --epic
            mats = { ETERNALCRYS }
        end
        return mats
    end

    --Dragonflight Mats
    if (expID == 9) then
        if (iQuality == 2 ) then --Uncommon
            mats = { CHROMATICDUST }
        elseif (iQuality == 3 ) then --rare
            mats = { VIBRANTSHARD }
        elseif (iQuality == 4 ) then --epic
            mats = { RESONANTCRY }
        end
        return mats
    end

end