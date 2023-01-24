---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 8/30/2022 6:40 PM
---
require ("util")
local sounds = require("__base__.prototypes.entity.sounds")
local hit_effects = require ("__base__.prototypes.entity.hit-effects")

data:extend({
    {
        type = "ammo-turret",
        name = "firework/mortar-crate",
        icon = "__firework_rockets_assets__/graphics/icons/mortar_crate.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 0.5, result = "firework/mortar-crate"},
        max_health = 400,
        corpse = "small-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-0.9, -0.9 }, {0.9, 0.9}},
        selection_box = {{-1, -1 }, {1, 1}},
        damaged_trigger_effect = hit_effects.entity(),
        rotation_speed = 0.015,
        preparing_speed = 0.08,
        folding_speed = 0.08,
        inventory_size = 1,
        automated_ammo_count = 10,
        attacking_speed = 0.5,
        alert_when_attacking = false,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        folded_animation =
        {
            layers = {
                {
                    filename = "__firework_rockets_assets__/graphics/mortar_crate.png",
                    priority = "high",
                    width = 152,
                    height = 152,
                    direction_count = 1,
                    frame_count = 1,
                    scale = 0.5
                },
                {
                    filename = "__firework_rockets_assets__/graphics/mortar_crate_mask.png",
                    priority = "high",
                    width = 152,
                    height = 152,
                    direction_count = 1,
                    frame_count = 1,
                    apply_runtime_tint = true,
                    scale = 0.5
                },
                {
                    filename = "__firework_rockets_assets__/graphics/mortar_crate_shadow.png",
                    width = 152,
                    height = 152,
                    direction_count = 1,
                    frame_count = 1,
                    scale = 0.5,
                    shift = {1.25, 0},
                    draw_as_shadow = true
                }
            },
        },
        base_picture =
        {
            layers = {
                {
                    filename = "__firework_rockets_assets__/graphics/mortar_crate.png",
                    priority = "high",
                    width = 152,
                    height = 152,
                    direction_count = 1,
                    frame_count = 1,
                    scale = 0.5
                }
            },
        },
        vehicle_impact_sound = sounds.generic_impact,

        attack_parameters =
        {
            type = "projectile",
            ammo_category = "rocket",
            cooldown = 600,
            projectile_creation_distance = 1.39375,
            projectile_center = {0, -0.0875}, -- same as gun_turret_attack shift
            range = 1,
            sound = nil,
        },

        call_for_help_radius = 0,
    },
    {
        type="explosion",
        name="mortar-crate-fire-explosion",
        localised_name = {"entity-name.mortar-crate-fire-explosion"},
        flags = {"not-on-map", "hidden"},
        subgroup = "explosions",
        animations =   {
            {
                filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
                draw_as_glow = true,
                priority = "extra-high",
                width = 34,
                height = 38,
                frame_count = 2,
                animation_speed = 0.5,
                shift = {0, 0},
                scale = 1.5
            },
            {
                filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
                draw_as_glow = true,
                priority = "extra-high",
                width = 34,
                height = 38,
                x = 34 * 2,
                frame_count = 2,
                animation_speed = 0.5,
                shift = {0, 0},
                scale = 1.5
            },
            {
                filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
                draw_as_glow = true,
                priority = "extra-high",
                width = 34,
                height = 38,
                x = 34 * 4,
                frame_count = 3,
                animation_speed = 0.5,
                shift = {0, 0},
                scale = 1.5
            },
            {
                filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
                draw_as_glow = true,
                priority = "extra-high",
                width = 34,
                height = 38,
                x = 34 * 7,
                frame_count = 3,
                animation_speed = 0.5,
                shift = {0, 0},
                scale = 1.5
            },
            {
                filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
                draw_as_glow = true,
                priority = "extra-high",
                width = 34,
                height = 38,
                x = 34 * 10,
                frame_count = 3,
                animation_speed = 0.5,
                shift = {0, 0},
                scale = 1.5
            }
        },
        rotate = false,
        --light = {intensity = 1, size = 10, color = {r=1.0, g=1.0, b=1.0}},
        smoke = "smoke-fast",
        smoke_count = 2,
        smoke_slow_down_factor = 1
    }
})