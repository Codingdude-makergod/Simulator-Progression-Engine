# Simulator Progression Engine

A lightweight, open-source Luau module for calculating exponential rebirth scaling, click multipliers, and progression costs in Roblox simulator games. 

## Features
* Dynamic rebirth cost scaling
* Multiplier calculation logic
* Drop-in readiness for standard Roblox DataStores

## Installation
Drop the `ProgressionEngine.lua` module into `ReplicatedStorage` in your Roblox Studio place.

## Usage Example
```lua
local ProgressionEngine = require(game.ReplicatedStorage.ProgressionEngine)

-- Calculate the cost for the 5th rebirth with a base cost of 1000 and a 1.5x scaling rate
local nextCost = ProgressionEngine.getRebirthCost(1000, 1.5, 5)
print("Cost for next rebirth: " .. nextCost)
