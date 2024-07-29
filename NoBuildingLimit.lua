NoBuildingLimit = {}

SlotSystem.NUM_OBJECT_LIMITS = {
    [SlotSystem.LIMITED_OBJECT_BALE] = {
        [PlatformId.WIN] = math.huge,
        [PlatformId.MAC] = math.huge,
        [PlatformId.PS5] = math.huge,
        [PlatformId.PS4] = math.huge,
        [PlatformId.XBOX_SERIES] = math.huge,
        [PlatformId.XBOX_ONE] = math.huge,
        [PlatformId.IOS] = math.huge,
        [PlatformId.ANDROID] = math.huge,
        [PlatformId.SWITCH] = math.huge,
        [PlatformId.GGP] = math.huge
    },
    [SlotSystem.LIMITED_OBJECT_PALLET] = {
        [PlatformId.WIN] = math.huge,
        [PlatformId.MAC] = math.huge,
        [PlatformId.PS5] = math.huge,
        [PlatformId.PS4] = math.huge,
        [PlatformId.XBOX_SERIES] = math.huge,
        [PlatformId.XBOX_ONE] = math.huge,
        [PlatformId.IOS] = math.huge,
        [PlatformId.ANDROID] = math.huge,
        [PlatformId.SWITCH] = math.huge,
        [PlatformId.GGP] = math.huge
    }
}	

function NoBuildingLimit:loadMap(name)
    ProductionChainManager.NUM_MAX_PRODUCTION_POINTS = math.huge
    HusbandrySystem.GAME_LIMIT = math.huge
    FillTypeManager.SEND_NUM_BITS = 16.0 -- max 65.536 | default 8.0
end

function NoBuildingLimit:deleteMap()
end

function NoBuildingLimit:keyEvent(unicode, sym, modifier, isDown)
end

function NoBuildingLimit:mouseEvent(posX, posY, isDown, isUp, button)
end

function NoBuildingLimit:update(dt)
end

function NoBuildingLimit:draw()
end

addModEventListener(NoBuildingLimit)
