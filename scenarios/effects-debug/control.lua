require('util')
local scenarios_helper = require('__enemyracemanager__/scenarios/shared.lua')

local Event = require('__stdlib__/stdlib/event/event')

Event.register(defines.events.on_player_created, function(event)
    local surface = game.surfaces[1]
    local player = game.players[1]
    local force = player.force

    --scenarios_helper.spawn_lab_tiles(surface)
    surface.daytime = 0.5
    --surface.daytime = 1
    surface.freeze_daytime = true

    -- Comment out the following to start with godmode
    --if player.character then player.character.destroy() end
    --local character = player.surface.create_entity{name = "character", position = player.surface.find_non_colliding_position("character", player.force.get_spawn_position(player.surface), 10, 2), force = force}
    --player.set_controller{type = defines.controllers.character, character = character}
    --player.teleport({0, 0})
end)

local firework_explosions = function(surface)

    local projectile_types = {
        'firework-trail-firework-1-green-1',
        'firework-trail-firework-1-orange-1',
        'firework-trail-firework-1-purple-1',
        'firework-trail-firework-2-orange-1',
        'firework-trail-firework-2-purple-1',
        'firework-trail-firework-2-blue-1',
        'firework-trail-firework-3-green-1',
        'firework-trail-firework-3-red-1',
        'firework-trail-firework-3-pink-1',
    }

    for key, value in pairs(projectile_types) do
        surface.create_entity({
            name = value,
            position = {-100 + (key * 20), -20},
            target = {-100 + (key * 20), -50},
            create_build_effect_smoke = false,
            speed = 0.1,
            max_range = 48,
        })
    end


    local explosion_types = {
        'firework-1-orange-1',
        'firework-3-green-1'
    }
    for key, value in pairs(explosion_types) do
        surface.create_entity({
            name = value,
            position = {-100 + (key * 20), 20},
        })
    end
end

Event.on_nth_tick(180, function(event)
    local surface = game.surfaces[1]

    firework_explosions(surface)
end)

