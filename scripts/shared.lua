---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 8/31/2022 12:45 AM
---
require 'constant'

---
--- firework-trail-firework-1-green-1
--- firework-trail-firework-1-orange-1
--- firework-trail-firework-1-purple-1
--- firework-trail-firework-2-orange-1
--- firework-trail-firework-2-purple-1
--- firework-trail-firework-2-blue-1
--- firework-trail-firework-3-green-1
--- firework-trail-firework-3-pink-1
--- firework-trail-firework-3-red-1
---

--- for full available list
--- @see prototypes/projectile_trails.lua
local warm_firework = {
    'firework-trail-firework-1-orange-1',
    'firework-trail-firework-2-orange-1',
    'firework-trail-firework-3-red-1',
    'firework-trail-firework-3-pink-1',
    'firework-trail-firework-5-pink-1-5',
    'firework-trail-firework-5-yellow-1-5',
    'firework-trail-firework-6-red-1',
    'firework-trail-firework-6-yellow-1',
    'firework-trail-firework-7-red-1',
    'firework-trail-firework-7-yellow-1',
    'firework-trail-firework-8-orange-1',
    'firework-trail-firework-8-yellow-1',
    'firework-trail-firework-10-pink-1',
    'firework-trail-firework-10-yellow-1',
}

local warm_firework_size = #warm_firework

local cool_firework = {
    'firework-trail-firework-1-purple-1',
    'firework-trail-firework-1-green-1',
    'firework-trail-firework-2-blue-1',
    'firework-trail-firework-2-purple-1',
    'firework-trail-firework-3-green-1',
    'firework-trail-firework-5-purple-1-5',
    'firework-trail-firework-6-white-1',
    'firework-trail-firework-7-white-1',
    'firework-trail-firework-8-purple-1',
    'firework-trail-firework-10-blue-1',
}
local cool_firework_size = #cool_firework

local colorful_firework = {
    'firework-trail-firework-4-v1-1',
    'firework-trail-firework-4-v2-1',
    'firework-trail-firework-4-v3-1',
    'firework-trail-firework-9-v1-1',
    'firework-trail-firework-9-v2-1',
    'firework-trail-firework-9-v3-1',
}
local colorful_firework_size = #colorful_firework

local regular_rocket_firework = {
    'firework-trail-firework-1-orange-1',
    'firework-trail-firework-2-orange-1',
    'firework-trail-firework-8-yellow-1',
}
local regular_rocket_firework_size = #regular_rocket_firework

local small_rocket_firework = {
    'firework-trail-firework-1-green-1',
    'firework-trail-firework-1-orange-1',
    'firework-trail-firework-1-purple-1',
    'firework-trail-firework-2-orange-1',
    'firework-trail-firework-2-purple-1',
    'firework-trail-firework-2-blue-1',
    'firework-trail-firework-3-green-1',
    'firework-trail-firework-3-pink-1',
    'firework-trail-firework-3-red-1',
}
local small_rocket_firework_size = #small_rocket_firework

local large_rocket_firework = {
    'firework-trail-firework-5-pink-1-5',
    'firework-trail-firework-5-yellow-1-5',
    'firework-trail-firework-5-purple-1-5',
    'firework-trail-firework-6-red-1',
    'firework-trail-firework-6-yellow-1',
    'firework-trail-firework-6-white-1',
    'firework-trail-firework-7-red-1',
    'firework-trail-firework-7-yellow-1',
    'firework-trail-firework-7-white-1',
    'firework-trail-firework-10-pink-1',
    'firework-trail-firework-10-yellow-1',
    'firework-trail-firework-10-blue-1',
}
local large_rocket_firework_size = #small_rocket_firework

local flare_rocket_firework = {
    'firework-trail-firework-8-orange-1',
    'firework-trail-firework-8-yellow-1',
    'firework-trail-firework-8-purple-1',
}
local flare_rocket_firework_size = #flare_rocket_firework


local can_spawn = function(chance_value)
    return  math.random(1, 100) > (100 - chance_value)
end

local rocket_firework_spawn_chance = settings.startup['firework-rocket-add-firework-regular-rocket-chance'].value

local pick_firework = {
    [WARM_ROCKET_EFFECT_ID] = function(args)
        return warm_firework[math.random(1, warm_firework_size)]
    end,
    [COOL_ROCKET_EFFECT_ID] = function(args)
        return cool_firework[math.random(1, cool_firework_size)]
    end,
    [COLORFUL_ROCKET_EFFECT_ID] = function(args)
        return colorful_firework[math.random(1, colorful_firework_size)]
    end,
    [RANDOM_ROCKET_EFFECT_ID] = function(args)
        if can_spawn(10) then
            return colorful_firework[math.random(1, colorful_firework_size)]
        elseif can_spawn(60) then
            return warm_firework[math.random(1, warm_firework_size)]
        else
            return cool_firework[math.random(1, colorful_firework_size)]
        end
    end,
    [REGULAR_ROCKET_EFFECT_ID] = function(args)
        if can_spawn(rocket_firework_spawn_chance) then
            return regular_rocket_firework[math.random(1, regular_rocket_firework_size)]
        end

        return nil
    end,
    [SMALL_ROCKET_EFFECT_ID] = function(args)
        return small_rocket_firework[math.random(1, small_rocket_firework_size)]
    end,
    [LARGE_ROCKET_EFFECT_ID] = function(args)
        return large_rocket_firework[math.random(1, large_rocket_firework_size)]
    end,
    [FLARE_ROCKET_EFFECT_ID] = function(args)
        return flare_rocket_firework[math.random(1, flare_rocket_firework_size)]
    end
}

local SharedFunctions = {}

function SharedFunctions.pick_firework(effect_id)
    return pick_firework[effect_id]
end

function SharedFunctions.create_firework(surface_index, source_position, effect_id, mortar, target_position)
    local surface = game.surfaces[surface_index]
    if surface and surface.valid and source_position then
        local name  = pick_firework[effect_id]()
        if name and source_position then
            target_position = target_position or
                    {
                        x = source_position.x + math.random(-12,12),
                        y = source_position.y - math.random(16,32)
                    }
            surface.create_entity({
                name = name,
                position = source_position,
                target = target_position,
                speed = math.random(20, 40) / 100,
                max_range = math.random(global.min_travel_distance, global.max_travel_distance)
            })

            if mortar then
                surface.create_entity({
                    name = "mortar-crate-fire-explosion",
                    position = source_position,
                    target = mortar
                })
            end

            if global.emit_pollution then
                surface.pollute(source_position, global.emit_pollution_value)
            end
        end
    end
end

return SharedFunctions