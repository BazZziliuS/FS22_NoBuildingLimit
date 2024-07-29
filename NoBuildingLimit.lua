NoBuildingLimit = {}

function NoBuildingLimit:overwritePalletSpawner()
    if PalletSpawner ~= nil then
        function PalletSpawner:spawnPallet(farmId, fillTypeId, callback, callbackTarget)
            local pallet = self.fillTypeIdToPallet[fillTypeId]
            if pallet ~= nil then
                table.insert(self.spawnQueue, {pallet=pallet, fillType=fillTypeId, farmId=farmId, callback=callback, callbackTarget=callbackTarget})
                g_currentMission:addUpdateable(self)
            else
                Logging.devError("PalletSpawner: no pallet for fillTypeId", fillTypeId)
                callback(callbackTarget, nil, PalletSpawner.NO_PALLET_FOR_FILLTYPE, fillTypeId)
            end
        end
    end
end

function NoBuildingLimit:loadMap(name)
    ProductionChainManager.NUM_MAX_PRODUCTION_POINTS = math.huge
    HusbandrySystem.GAME_LIMIT = math.huge
    NoBuildingLimit:overwritePalletSpawner()
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
