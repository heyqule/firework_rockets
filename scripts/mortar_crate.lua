---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 8/30/2022 11:12 PM
---
require 'constant'
local ScriptSharedFunctions = require 'shared'

-- Track all deployed crates with rocket in inventory
-- When create don't have rocket, move to inactive list. 50 entity/check
-- { "surface.index-x-y" = {"prev", "next",  "entity", "next_tick"} }
local deployed_active_crates = {
    head = nil,
    tail = nil,
    crates = {},
}

-- Track crates without rocket in inventory, checks every 3s, if it has rockets in inventory, move it back to active list.
-- { "surface.index-x-y" = {"prev", "next",  "entity"}}
local deployed_inactive_crates = {
    head = nil,
    tail = nil,
    crates = {},
}

local MAX_ACTIVE_PER_BATCH = settings.startup['firework-rocket-mortar-active-batch'].value
local MAX_INACTIVE_PER_BATCH = settings.startup['firework-rocket-mortar-inactive-batch'].value
local inactive_processing_id;
local active_processing_id;

local add_crate = function(crateList, crateKey, crate)
    if crateList.crates[crateKey] then
        return
    end
    crateList.crates[crateKey] = {}

    if not crateList.head then
        crateList.head = crateKey
    end

    crateList.crates[crateKey] = crate

    if crateList.tail then
        if crateList.crates[crateList.tail] then
            crateList.crates[crateList.tail].next = crateKey
        end
        crateList.crates[crateKey].prev = crateList.tail
    end

    crateList.tail = crateKey
end

local remove_crate = function(crateList, crateKey)
    if not crateList.crates[crateKey] then
        return
    end

    local crate = crateList.crates[crateKey]

    if crateList.head == crateKey then
        crateList.head = crate.next
        if crateList.crates[crate.next] then
            crateList.crates[crate.next].prev = nil
        end
        crateList.crates[crateKey] = nil
    elseif crateList.tail == crateKey then
        crateList.tail = crate.prev
        crateList.crates[crate.prev].next = nil
        crateList.crates[crateKey] = nil
    else
        crateList.crates[crate.prev].next = crate.next
        crateList.crates[crate.next].prev = crate.prev
        crateList.crates[crateKey] = nil
    end
end

local acceptable_rockets = {
    ['firework/random-rocket'] = RANDOM_ROCKET_EFFECT_ID,
    ['firework/colorful-rocket'] = COLORFUL_ROCKET_EFFECT_ID,
    ['firework/cool-rocket'] = COOL_ROCKET_EFFECT_ID,
    ['firework/warm-rocket'] = WARM_ROCKET_EFFECT_ID,
    ['firework/small-rocket'] = SMALL_ROCKET_EFFECT_ID,
    ['firework/large-rocket'] = LARGE_ROCKET_EFFECT_ID,
    ['firework/flare-rocket'] = FLARE_ROCKET_EFFECT_ID,
}

local statistics = {}

local on_created_entity = function(event)
    local entity = event.created_entity
    if not (entity and entity.valid and entity.name == 'firework/mortar-crate') then return end
    local surface = entity.surface
    local position = entity.position
    local key = surface.index .. '-' .. position.x .. '-' .. position.y
    add_crate(deployed_inactive_crates, key, {
        entity = entity,
    })
end

local on_entity_removed = function(event)
    local entity = event.entity
    if not (entity and entity.valid and entity.name == 'firework/mortar-crate') then return end
    local surface = entity.surface
    local position = entity.position
    local key = surface.index .. '-' .. position.x .. '-' .. position.y
    remove_crate(deployed_inactive_crates, key)
    remove_crate(deployed_active_crates, key)
end

local add_statistic = function(entity, item_name, count)
    local force = entity.force;
    if force then
        if statistics[force.name] == nil then
            statistics[force.name] = force.item_production_statistics
        end
        statistics[force.name].on_flow(item_name, count * -1)
    end
end

local pick_new_active_id = function()
    if not active_processing_id then
        active_processing_id = deployed_active_crates.head
        return
    end

    local turret = deployed_active_crates.crates[active_processing_id]
    if turret and turret.next then
        active_processing_id = turret.next
    elseif deployed_active_crates.head then
        active_processing_id = deployed_active_crates.head
    else
        active_processing_id = nil
    end
end

local process_active_crates = function(event)
    for i = 0, MAX_ACTIVE_PER_BATCH do
        pick_new_active_id()

        local turret = deployed_active_crates.crates[active_processing_id]
        if not turret then
            break;
        end
        if event.tick < turret.next_tick then
            goto process_active_crates_for_continue
        end

        local entity = turret.entity
        if not (entity and entity.valid) then
            remove_crate(deployed_active_crates, active_processing_id)
            goto process_active_crates_for_continue
        end

        local inventory = entity.get_inventory(defines.inventory.turret_ammo)
        local contents = inventory.get_contents()
        local fired = false
        for invkey, value in pairs(contents) do
            if acceptable_rockets[invkey] and value > 0
            then
                ScriptSharedFunctions.create_firework(
                        entity.surface.index,
                        entity.position,
                        acceptable_rockets[invkey]
                )
                inventory.remove({name=invkey,count=1})
                add_statistic(entity, invkey, 1)
                turret.next_tick = event.tick + math.random(3,10) * 61
                fired = true
            end
        end

        if not fired then
            add_crate(deployed_inactive_crates, active_processing_id, {
                entity = turret.entity
            })
            remove_crate(deployed_active_crates, active_processing_id)
        end
        ::process_active_crates_for_continue::
    end
end

local pick_new_inactive_id = function()
    if not inactive_processing_id then
        inactive_processing_id = deployed_inactive_crates.head
        return
    end

    local turret = deployed_inactive_crates.crates[inactive_processing_id]
    if turret and turret.next then
        inactive_processing_id = turret.next
    elseif deployed_inactive_crates.head then
        inactive_processing_id = deployed_inactive_crates.head
    else
        inactive_processing_id = nil
    end
end

local process_inactive_crates = function(event)
    for i = 0, MAX_INACTIVE_PER_BATCH do
        pick_new_inactive_id()
        local turret = deployed_inactive_crates.crates[inactive_processing_id]
        if not turret then
            break;
        end

        local entity = turret.entity
        if not (entity and entity.valid) then
            remove_crate(deployed_inactive_crates, inactive_processing_id)
            goto process_inactive_crates_for_continue
        end

        local inventory = entity.get_inventory(defines.inventory.turret_ammo)
        local contents = inventory.get_contents()
        for invkey, value in pairs(contents) do
            if acceptable_rockets[invkey] and value > 0
            then
                add_crate(deployed_active_crates, inactive_processing_id, {
                    entity = turret.entity,
                    next_tick = event.tick + math.random(3,6) * 61
                })
                remove_crate(deployed_inactive_crates, inactive_processing_id)
            end
        end

        ::process_inactive_crates_for_continue::
    end
end

-- 1.0 to 1.1 migration
local deployed_crate_migration = function()
    if global.deployed_crates then
        for _, turret in pairs(global.deployed_crates) do
            local surface = turret.entity.surface
            local position = turret.entity.position
            local key = surface.index .. '-' .. position.x .. '-' .. position.y
            add_crate(deployed_inactive_crates, key, {
                entity = turret.entity,
            })
        end
    end
end


local mortar_crate = {}

mortar_crate.events =
{
    [defines.events.on_built_entity] = on_created_entity,
    [defines.events.on_robot_built_entity] = on_created_entity,
    [defines.events.script_raised_built] = on_created_entity,
    [defines.events.script_raised_revive] = on_created_entity,
    [defines.events.on_entity_cloned] = on_created_entity,

    [defines.events.on_entity_died] = on_entity_removed,
    [defines.events.script_raised_destroy] = on_entity_removed,
    [defines.events.on_player_mined_entity] = on_entity_removed,
    [defines.events.on_robot_mined_entity] = on_entity_removed,
}

mortar_crate.on_nth_tick = {
    [settings.startup['firework-rocket-mortar-active-interval'].value] = process_active_crates,
    [181] = process_inactive_crates
}
mortar_crate.on_init = function()
    global.deployed_active_crates = global.deployed_active_crates or deployed_active_crates
    global.deployed_inactive_crates = global.deployed_inactive_crates or deployed_inactive_crates
end

mortar_crate.on_load = function()
    deployed_active_crates = global.deployed_active_crates or deployed_active_crates
    deployed_inactive_crates = global.deployed_inactive_crates or deployed_inactive_crates
end

mortar_crate.on_configuration_changed = function(configuration_changed_data)
    deployed_crate_migration()
end

mortar_crate.get_debug_data = function()
    print('Processing ID')
    print(tostring(inactive_processing_id) .. '/' .. tostring(active_processing_id))
    print('deployed_active_crates')
    print(tostring(deployed_active_crates.head) .. '/'.. tostring(deployed_active_crates.tail))
    print(table_size(deployed_active_crates.crates))
    print('deployed_inactive_crates')
    print(tostring(deployed_inactive_crates.head) .. '/'.. tostring(deployed_inactive_crates.tail))
    print(table_size(deployed_inactive_crates.crates))
end

return mortar_crate