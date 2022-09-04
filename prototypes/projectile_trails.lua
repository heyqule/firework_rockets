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
--- firework-trail-firework-4-v1-1
--- firework-trail-firework-4-v2-1
--- firework-trail-firework-4-v3-1
--- firework-trail-firework-5-pink-1-5
--- firework-trail-firework-5-purple-1-5
--- firework-trail-firework-5-yellow-1-5
--- firework-trail-firework-6-red-1
--- firework-trail-firework-6-white-1
--- firework-trail-firework-6-yellow-1
--- firework-trail-firework-7-white-1
--- firework-trail-firework-7-red-1
--- firework-trail-firework-7-yellow-1
--- firework-trail-firework-8-purple-1
--- firework-trail-firework-8-orange-1
--- firework-trail-firework-8-yellow-1
--- firework-trail-firework-9-v1-1
--- firework-trail-firework-9-v2-1
--- firework-trail-firework-9-v3-1
--- firework-trail-firework-10-blue-1
--- firework-trail-firework-10-yellow-1
--- firework-trail-firework-10-pink-1

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

----- Version 1 ----
--    width = 30,
--    height = 128,
--    frame_count = 20
-- orange, pink, red
----- Version 2 ----
--    width = 36,
--    height = 185,
--    frame_count = 22,
-- orange, pink, purple
----- Version 3 ----
--    width = 40,
--    height = 159,
--    frame_count = 22,
-- orange, pink, purple, green
---

---- Firework 1
local trails_set1 = {
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
    }
}
for _, projectile in pairs(trails_set1) do
    data:extend({ build_firework_projectiles(projectile) })
end
---- Firework 2
local trails_set2 = {
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
    }
}
for _, projectile in pairs(trails_set2) do
    data:extend({ build_firework_projectiles(projectile) })
end
---- Firework 3
local trails_set3 = {
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
    }
}
for _, projectile in pairs(trails_set3) do
    data:extend({ build_firework_projectiles(projectile) })
end
---- Firework 4
local trails_set4 = {
    {
        version = 1,
        type = "orange",
        width = 30,
        height = 128,
        frame_count = 20,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        firework_explosion = 'firework-4-v1-1'
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
        firework_explosion = 'firework-4-v2-1'
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
        firework_explosion = 'firework-4-v3-1'
    }
}
for _, projectile in pairs(trails_set4) do
    data:extend({ build_firework_projectiles(projectile) })
end

----- version 5
local trails_set5 = {
    {
        version = 2,
        type = "orange",
        width = 36,
        height = 185,
        frame_count = 22,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        firework_explosion = 'firework-5-pink-1-5'
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
        firework_explosion = 'firework-5-purple-1-5'
    },
    {
        version = 2,
        type = "orange",
        width = 36,
        height = 185,
        frame_count = 22,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        firework_explosion = 'firework-5-yellow-1-5'
    },
}
for _, projectile in pairs(trails_set5) do
    data:extend({ build_firework_projectiles(projectile) })
end

----- version 6
local trails_set6 = {
    {
        version = 3,
        type = "pink",
        width = 40,
        height = 159,
        frame_count = 22,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        firework_explosion = 'firework-6-red-1'
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
        firework_explosion = 'firework-6-white-1'
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
        firework_explosion = 'firework-6-yellow-1'
    },
}
for _, projectile in pairs(trails_set6) do
    data:extend({ build_firework_projectiles(projectile) })
end

----- version 7
local trails_set7 = {
    {
        version = 3,
        type = "purple",
        width = 40,
        height = 159,
        frame_count = 22,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        firework_explosion = 'firework-7-white-1'
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
        firework_explosion = 'firework-7-yellow-1'
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
        firework_explosion = 'firework-7-red-1'
    }
}

for _, projectile in pairs(trails_set7) do
    data:extend({ build_firework_projectiles(projectile) })
end


----- version 8
local trails_set8 = {
    {
        version = 3,
        type = "purple",
        width = 40,
        height = 159,
        frame_count = 22,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        firework_explosion = 'firework-8-purple-1'
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
        firework_explosion = 'firework-8-orange-1'
    },
    {
        version = 2,
        type = "orange",
        width = 36,
        height = 185,
        frame_count = 22,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        firework_explosion = 'firework-8-yellow-1'
    }
}

for _, projectile in pairs(trails_set8) do
    data:extend({ build_firework_projectiles(projectile) })
end

---- Firework 9
local trails_set9 = {
    {
        version = 1,
        type = "orange",
        width = 30,
        height = 128,
        frame_count = 20,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        firework_explosion = 'firework-9-v1-1'
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
        firework_explosion = 'firework-9-v2-1'
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
        firework_explosion = 'firework-9-v3-1'
    }
}
for _, projectile in pairs(trails_set9) do
    data:extend({ build_firework_projectiles(projectile) })
end

local trails_set10 = {
    {
        version = 3,
        type = "purple",
        width = 40,
        height = 159,
        frame_count = 22,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 1,
        firework_explosion = 'firework-10-blue-1'
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
        firework_explosion = 'firework-10-yellow-1'
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
        firework_explosion = 'firework-10-pink-1'
    },
}
for _, projectile in pairs(trails_set10) do
    data:extend({ build_firework_projectiles(projectile) })
end