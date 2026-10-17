-- QuantumScaling.luau
local QuantumScaling = {}

-- Calculates the cost of the next rebirth tier
function QuantumScaling.getRebirthCost(currentRebirths: number, baseCost: number, scalingFactor: number): number
    return math.floor(baseCost * (currentRebirths ^ scalingFactor))
end

-- Calculates the player's current click multiplier bonus
function QuantumScaling.getClickMultiplier(currentRebirths: number, quantumBonus: number): number
    return 1 + (currentRebirths * quantumBonus)
end

return QuantumScaling
