---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 8/30/2022 5:42 PM
---

data:extend({
    {
        type = "recipe",
        name = 'firework/warm-rocket',
        enabled = false,
        energy_required = 5,
        ingredients =
        {
            {"rocket", 10},
            {"red-wire", 10}
        },
        result = 'firework/warm-rocket',
        result_count = 10,
        order="firework-01"
    },
    {
        type = "recipe",
        name = 'firework/cool-rocket',
        enabled = false,
        energy_required = 5,
        ingredients =
        {
            {"rocket", 10},
            {"green-wire", 10}
        },
        result = 'firework/cool-rocket',
        result_count = 10,
        order="firework-02"
    },
    {
        type = "recipe",
        name = 'firework/colorful-rocket',
        enabled = false,
        energy_required = 5,
        ingredients =
        {
            {"firework/warm-rocket", 5},
            {"firework/cool-rocket", 5},
            {"red-wire", 5},
            {"green-wire", 5}
        },
        result = 'firework/colorful-rocket',
        result_count = 10,
        order="firework-03"
    },
    {
        type = "recipe",
        name = 'firework/random-rocket',
        enabled = false,
        energy_required = 10,
        ingredients =
        {
            {"firework/colorful-rocket",5},
            {"firework/warm-rocket",5},
            {"firework/cool-rocket",5},
            {"decider-combinator",5}
        },
        result = 'firework/random-rocket',
        result_count = 10,
        order="firework-04"
    },
    {
        type = "recipe",
        name = 'firework/small-rocket',
        enabled = false,
        energy_required = 5,
        ingredients =
        {
            {"firework/warm-rocket", 5},
            {"firework/cool-rocket", 5},
        },
        result = 'firework/small-rocket',
        result_count = 10,
        order="firework-05"
    },
    {
        type = "recipe",
        name = 'firework/large-rocket',
        enabled = false,
        energy_required = 5,
        ingredients =
        {
            {"firework/warm-rocket", 5},
            {"firework/cool-rocket", 5},
        },
        result = 'firework/large-rocket',
        result_count = 10,
        order="firework-06"
    },
    {
        type = "recipe",
        name = 'firework/flare-rocket',
        enabled = false,
        energy_required = 5,
        ingredients =
        {
            {"firework/warm-rocket", 5},
            {"firework/cool-rocket", 5},
        },
        result = 'firework/flare-rocket',
        result_count = 10,
        order="firework-07"
    },
    {
        type = "recipe",
        name = 'firework/mortar-crate',
        enabled = false,
        energy_required = 5,
        ingredients =
        {
            {"wood", 10},
            {"plastic-bar", 20},
        },
        result = 'firework/mortar-crate',
        order="firework-10"
    },
})