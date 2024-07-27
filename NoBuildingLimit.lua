NoBuildingLimit = {}

function NoBuildingLimit:loadMap(name)
    ProductionChainManager.NUM_MAX_PRODUCTION_POINTS = math.huge
    HusbandrySystem.GAME_LIMIT = math.huge
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
