---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 8/30/2022 6:17 PM
---

data:extend({
    {
        type = "item",
        name = 'firework-mortar_crate',
        icons = {
            {
                icon = "__firework_rockets_assets__/graphics/icons/mortar_crate.png",
                icon_size = 64,
            },
        },
        subgroup = "firework-rockets",
        place_result = 'firework-mortar_crate',
        stack_size = 50,
        weight = 20*kg,
    },
    {
        type = "ammo",
        name = "firework-random_rocket",
        flags = {'hide-from-bonus-gui'},
        icons = {
            {
                icon = "__base__/graphics/icons/rocket.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_R.png",
                icon_size = 64,
                scale = 0.2,
                shift = {-9,-9}
            },
        },
        ammo_category = "rocket",
        ammo_type =
        {
            category = "rocket",
            action =
            {
                type = "direct",
                ignore_collision_condition = true,
                action_delivery =
                {
                    type = "projectile",
                    projectile = "firework-random_rocket",
                    starting_speed = 0.1,
                    max_range = 20,
                    min_range = 10,
                    range_deviation = 2,
                    source_effects =
                    {
                        type = "create-entity",
                        entity_name = "explosion-hit"
                    }
                }
            },
            clamp_position = true,
            target_type = "position"
        },
        subgroup = "firework-rockets",
        stack_size = 200,
        weight = 5*kg,
    },
    {
        type = "ammo",
        name = "firework-colorful_rocket",
        flags = {'hide-from-bonus-gui'},
        icons = {
            {
                icon = "__base__/graphics/icons/rocket.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_everything.png",
                icon_size = 64,
                scale = 0.2,
                shift = {-9,-9}
            },
        },
        ammo_category = "rocket",
        ammo_type =
        {
            category = "rocket",
            action =
            {
                type = "direct",
                ignore_collision_condition = true,
                action_delivery =
                {
                    type = "projectile",
                    projectile = "firework-colorful_rocket",
                    starting_speed = 0.1,
                    max_range = 20,
                    min_range = 10,
                    range_deviation = 2,
                    source_effects =
                    {
                        type = "create-entity",
                        entity_name = "explosion-hit"
                    }
                }
            },
            clamp_position = true,
            target_type = "position"
        },
        subgroup = "firework-rockets",
        stack_size = 200,
        weight = 5*kg,
    },
    {
        type = "ammo",
        name = "firework-warm_rocket",
        flags = {'hide-from-bonus-gui'},
        icons = {
            {
                icon = "__base__/graphics/icons/rocket.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_red.png",
                icon_size = 64,
                scale = 0.2,
                shift = {-9,-9}
            },
        },
        ammo_category = "rocket",
        ammo_type =
        {
            category = "rocket",
            action =
            {
                type = "direct",
                ignore_collision_condition = true,
                action_delivery =
                {
                    type = "projectile",
                    projectile = "firework-warm_rocket",
                    starting_speed = 0.1,
                    max_range = 20,
                    min_range = 10,
                    range_deviation = 2,
                    source_effects =
                    {
                        type = "create-entity",
                        entity_name = "explosion-hit"
                    }
                }
            },
            clamp_position = true,
            target_type = "position"
        },
        subgroup = "firework-rockets",
        stack_size = 200,
        weight = 5*kg,
    },
    {
        type = "ammo",
        name = "firework-cool_rocket",
        flags = {'hide-from-bonus-gui'},
        icons = {
            {
                icon = "__base__/graphics/icons/rocket.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_blue.png",
                icon_size = 64,
                scale = 0.2,
                shift = {-9,-9}
            },
        },
        ammo_category = "rocket",
        ammo_type =
        {
            category = "rocket",
            action =
            {
                type = "direct",
                ignore_collision_condition = true,
                action_delivery =
                {
                    type = "projectile",
                    projectile = "firework-cool_rocket",
                    starting_speed = 0.1,
                    max_range = 20,
                    min_range = 10,
                    range_deviation = 2,
                    source_effects =
                    {
                        type = "create-entity",
                        entity_name = "explosion-hit"
                    }
                }
            },
            clamp_position = true,
            target_type = "position"
        },
        subgroup = "firework-rockets",
        stack_size = 200,
        weight = 5*kg,
    },
    {
        type = "ammo",
        name = "firework-small_rocket",
        flags = {'hide-from-bonus-gui'},
        icons = {
            {
                icon = "__base__/graphics/icons/rocket.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_S.png",
                icon_size = 64,
                scale = 0.2,
                shift = {-9,-9}
            },
        },
        ammo_category = "rocket",
        ammo_type =
        {
            category = "rocket",
            action =
            {
                type = "direct",
                ignore_collision_condition = true,
                action_delivery =
                {
                    type = "projectile",
                    projectile = "firework-small_rocket",
                    starting_speed = 0.1,
                    max_range = 20,
                    min_range = 10,
                    range_deviation = 2,
                    source_effects =
                    {
                        type = "create-entity",
                        entity_name = "explosion-hit"
                    }
                }
            },
            clamp_position = true,
            target_type = "position"
        },
        subgroup = "firework-rockets",
        stack_size = 200,
        weight = 5*kg,
    },
    {
        type = "ammo",
        name = "firework-large_rocket",
        flags = {'hide-from-bonus-gui'},
        icons = {
            {
                icon = "__base__/graphics/icons/rocket.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_L.png",
                icon_size = 64,
                scale = 0.2,
                shift = {-9,-9}
            },
        },
        ammo_category = "rocket",
        ammo_type =
        {
            category = "rocket",
            action =
            {
                type = "direct",
                ignore_collision_condition = true,
                action_delivery =
                {
                    type = "projectile",
                    projectile = "firework-large_rocket",
                    starting_speed = 0.1,
                    max_range = 20,
                    min_range = 10,
                    range_deviation = 2,
                    source_effects =
                    {
                        type = "create-entity",
                        entity_name = "explosion-hit"
                    }
                }
            },
            clamp_position = true,
            target_type = "position"
        },
        subgroup = "firework-rockets",
        stack_size = 200,
        weight = 5*kg,
    },
    {
        type = "ammo",
        name = "firework-flare_rocket",
        flags = {'hide-from-bonus-gui'},
        icons = {
            {
                icon = "__base__/graphics/icons/rocket.png",
                icon_size = 64,
            },
            {
                icon = "__base__/graphics/icons/signal/signal_F.png",
                icon_size = 64,
                scale = 0.2,
                shift = {-9,-9}
            },
        },
        ammo_category = "rocket",
        ammo_type =
        {
            category = "rocket",
            action =
            {
                type = "direct",
                ignore_collision_condition = true,
                action_delivery =
                {
                    type = "projectile",
                    projectile = "firework-flare_rocket",
                    starting_speed = 0.1,
                    max_range = 20,
                    min_range = 10,
                    range_deviation = 2,
                    source_effects =
                    {
                        type = "create-entity",
                        entity_name = "explosion-hit"
                    }
                }
            },
            clamp_position = true,
            target_type = "position"
        },
        subgroup = "firework-rockets",
        stack_size = 200,
        weight = 5*kg,
    },
})