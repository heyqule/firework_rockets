local SharedFunctions = require 'prototypes.shared'
require '__firework_rockets__/constant'


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

local build_firework_projectiles = function(data)
    local projectile =
        {
            type = "projectile",
            name = "firework-trail-"..data['firework_explosion'],
            flags = {"not-on-map"},
            acceleration = 0.005,
            turn_speed = 0,
            turning_speed_increases_exponentially_with_projectile_speed = false,
            direction_only = true,
            final_action =
            {
                type = "direct",
                action_delivery =
                {
                    type = "instant",
                    target_effects =
                    {
                        {
                            type = "create-entity",
                            entity_name = data['firework_explosion']
                        },
                    }
                }
            },
            animation =
            {
                filename = "__firework_rockets__/graphics/trails/trail" .. data['version'] .. "_" .. data['type'] .. ".png",
                frame_count = data['frame_count'],
                width = data['width'],
                height = data['height'],
                animation_speed = data['animation_speed'],
                draw_as_glow = data['draw_as_glow']
            },
            working_sound = {
                sound = {
                    variations = {
                        {
                            filename = '__firework_rockets__/sound/scream1.ogg',
                            volumea = 0.3
                        },
                        {
                            filename = '__firework_rockets__/sound/scream2.ogg',
                            volume = 0.3
                        },
                    }
                },
                category = "game-effect",
                audible_distance_modifier = 0.3
            }
        }


    return projectile
end

local old_trails = {
    ----- Version 1 ----
    {
        version = 1,
        type = "orange",
        width = 30,
        height = 128,
        frame_count = 20,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        script_id = COLORFUL_ROCKET_EFFECT_ID
    },
    {
        version = 1,
        type = "pink",
        width = 38,
        height = 141,
        frame_count = 20,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        script_id = COLORFUL_ROCKET_EFFECT_ID
    },
    {
        version = 1,
        type = "red",
        width = 30,
        height = 131,
        frame_count = 20,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        script_id = COLORFUL_ROCKET_EFFECT_ID
    },
    ----- Version 2 ----
    {
        version = 2,
        type = "orange",
        width = 36,
        height = 185,
        frame_count = 22,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        script_id = WARM_ROCKET_EFFECT_ID
    },
    {
        version = 2,
        type = "pink",
        width = 36,
        height = 185,
        frame_count = 22,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        script_id = WARM_ROCKET_EFFECT_ID
    },
    {
        version = 2,
        type = "purple",
        width = 36,
        height = 185,
        frame_count = 22,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        script_id = COOL_ROCKET_EFFECT_ID
    },
    ----- Version 3 ----
    {
        version = 3,
        type = "orange",
        width = 40,
        height = 159,
        frame_count = 22,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        script_id = WARM_ROCKET_EFFECT_ID
    },
    {
        version = 3,
        type = "pink",
        width = 40,
        height = 159,
        frame_count = 22,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        script_id = WARM_ROCKET_EFFECT_ID
    },
    {
        version = 3,
        type = "purple",
        width = 40,
        height = 159,
        frame_count = 22,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        script_id = COOL_ROCKET_EFFECT_ID
    },
    {
        version = 3,
        type = "green",
        width = 40,
        height = 159,
        frame_count = 22,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        script_id = COOL_ROCKET_EFFECT_ID
    },
}


local trails = {
    ---- Firework V1
    {
        version = 3,
        type = "green",
        width = 40,
        height = 159,
        frame_count = 22,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        firework_explosion = 'firework-1-green-1'
    },
    {
        version = 3,
        type = "orange",
        width = 40,
        height = 159,
        frame_count = 22,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        firework_explosion = 'firework-1-orange-1'
    },
    {
        version = 3,
        type = "purple",
        width = 40,
        height = 159,
        frame_count = 22,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        firework_explosion = 'firework-1-purple-1'
    },
    ---- Firework V2
    {
        version = 2,
        type = "orange",
        width = 36,
        height = 185,
        frame_count = 22,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        firework_explosion = 'firework-2-orange-1'
    },
    {
        version = 2,
        type = "purple",
        width = 36,
        height = 185,
        frame_count = 22,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        firework_explosion = 'firework-2-purple-1'
    },
    {
        version = 2,
        type = "purple",
        width = 36,
        height = 185,
        frame_count = 22,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        firework_explosion = 'firework-2-blue-1'
    },
    ---- Firework V3
    {
        version = 3,
        type = "green",
        width = 40,
        height = 159,
        frame_count = 22,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        firework_explosion = 'firework-3-green-1'
    },
    {
        version = 3,
        type = "pink",
        width = 40,
        height = 159,
        frame_count = 22,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        firework_explosion = 'firework-3-pink-1'
    },
    {
        version = 3,
        type = "orange",
        width = 40,
        height = 159,
        frame_count = 22,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        firework_explosion = 'firework-3-red-1'
    },
}

for _, projectile in pairs(trails) do
    data:extend({ build_firework_projectiles(projectile) })
end


