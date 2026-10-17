local ProgressionEngine = {}

-- Calculates the cost of the next rebirth based on an exponential growth curve
function ProgressionEngine.getRebirthCost(baseCost, growthRate, currentRebirths)
    return math.floor(baseCost * math.pow(growthRate, currentRebirths))
end

-- Calculates the current click multiplier based on total rebirths
function ProgressionEngine.getMultiplier(baseMultiplier, rebirths)
    return 1 + (baseMultiplier * rebirths)
end

-- Validates if a player has enough currency to upgrade
function ProgressionEngine.canAfford(currentCurrency, cost)
    return currentCurrency >= cost
end

return ProgressionEngine
