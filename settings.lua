---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 8/31/2022 5:59 PM
---

data:extend {
    --- Startup Tab
    {
        type = "double-setting",
        name = "firework-rocket-lighting-multiplier",
        description = "firework-rocket-lighting-multiplier",
        setting_type = "startup",
        default_value = 1,
        allowed_values = {0, 0.5, 1, 1.5, 2, 2.5, 3},
        order = "firework-001"
    },
    {
        type = "int-setting",
        name = "firework-rocket-mortar-active-interval",
        description = "firework-rocket-mortar-active-interval",
        setting_type = "startup",
        default_value = 51,
        allowed_values = {3, 7, 11, 19, 31, 41, 51, 61, 97, 113},
        order = "firework-100"
    },
    {
        type = "int-setting",
        name = "firework-rocket-mortar-active-batch",
        description = "firework-rocket-mortar-active-batch",
        setting_type = "startup",
        default_value = 24,
        minimum_value = 6,
        maximum_value = 240,
        order = "firework-101"
    },
    {
        type = "int-setting",
        name = "firework-rocket-mortar-inactive-interval",
        description = "firework-rocket-mortar-inactive-interval",
        setting_type = "startup",
        default_value = 181,
        allowed_values = {13, 21, 33, 62, 121, 181, 301},
        order = "firework-102"
    },
    {
        type = "int-setting",
        name = "firework-rocket-mortar-inactive-batch",
        description = "firework-rocket-mortar-inactive-batch",
        setting_type = "startup",
        default_value = 48,
        minimum_value = 12,
        maximum_value = 480,
        order = "firework-103"
    },
    {
        type = "int-setting",
        name = "firework-rocket-mortar-cooldown",
        description = "firework-rocket-mortar-cooldown",
        setting_type = "startup",
        default_value = 181,
        allowed_values = {13, 21, 33, 62, 121, 181, 303, 603},
        order = "firework-104"
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
    {
        type = "bool-setting",
        name = "firework-rocket-structure-death",
        description = "firework-rocket-structure-death",
        setting_type = "startup",
        default_value = false,
        order = "firework-130"
    },
    {
        type = "int-setting",
        name = "firework-rocket-structure-death-chance",
        description = "firework-rocket-structure-death-chance",
        setting_type = "startup",
        default_value = 66,
        allowed_values = {10, 25, 33, 50, 66, 75, 90},
        order = "firework-131"
    },
    {
        type = "bool-setting",
        name = "firework-rocket-unit-death",
        description = "firework-rocket-unit-death",
        setting_type = "startup",
        default_value = false,
        order = "firework-140"
    },
    {
        type = "int-setting",
        name = "firework-rocket-unit-death-chance",
        description = "firework-rocket-unit-death-chance",
        setting_type = "startup",
        default_value = 33,
        allowed_values = {10, 25, 33, 50, 66, 75, 90},
        order = "firework-141"
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
    {
        type = "bool-setting",
        name = "firework-rocket-emit-pollution",
        description = "firework-rocket-emit-pollution",
        setting_type = "runtime-global",
        default_value = true,
        order = "firework-110"
    },
    {
        type = "int-setting",
        name = "firework-rocket-emit-pollution-value",
        description = "firework-rocket-emit-pollution-value",
        setting_type = "runtime-global",
        default_value = 5,
        allowed_values = {1, 2, 5, 10, 20, 50, 100},
        order = "firework-111"
    },
}