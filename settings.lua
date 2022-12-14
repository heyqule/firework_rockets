---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 8/31/2022 5:59 PM
---

data:extend {
    --- Startup Tab
    {
        type = "int-setting",
        name = "firework-rocket-mortar-active-interval",
        description = "firework-rocket-mortar-active-interval",
        setting_type = "startup",
        default_value = 51,
        allowed_values = {19, 31, 41, 51, 61, 97, 113},
        order = "firework-100"
    },
    {
        type = "int-setting",
        name = "firework-rocket-mortar-active-batch",
        description = "firework-rocket-mortar-active-batch",
        setting_type = "startup",
        default_value = 12,
        minimum_value = 6,
        maximum_value = 240,
        order = "firework-101"
    },
    {
        type = "int-setting",
        name = "firework-rocket-mortar-inactive-batch",
        description = "firework-rocket-mortar-inactive-batch",
        setting_type = "startup",
        default_value = 24,
        minimum_value = 12,
        maximum_value = 480,
        order = "firework-103"
    },
    {
        type = "bool-setting",
        name = "firework-rocket-add-firework-regular-rocket",
        description = "firework-rocket-add-firework-regular-rocket",
        setting_type = "startup",
        default_value = false,
        order = "firework-110"
    },
    {
        type = "int-setting",
        name = "firework-rocket-add-firework-regular-rocket-chance",
        description = "firework-rocket-add-firework-regular-rocket-chance",
        setting_type = "startup",
        default_value = 10,
        allowed_values = {10, 20, 33, 50, 66, 75, 100},
        order = "firework-111"
    },
    {
        type = "bool-setting",
        name = "firework-rocket-fire-hazard",
        description = "firework-rocket-fire-hazard",
        setting_type = "startup",
        default_value = false,
        order = "firework-120"
    },
    {
        type = "int-setting",
        name = "firework-rocket-fire-hazard-chance",
        description = "firework-rocket-fire-hazard-chance",
        setting_type = "startup",
        default_value = 1,
        allowed_values = {1, 2, 3, 5, 10, 20, 33, 50},
        order = "firework-121"
    },
    --- Global Tab
    {
        type = "string-setting",
        name = "firework-rocket-travel-range",
        description = "firework-rocket-travel-range",
        setting_type = "runtime-global",
        default_value = '16-48',
        allowed_values = {'8-40','10-42','16-48','32-64','48-80','60-90','72-104'},
        order = "firework-100"
    },
}