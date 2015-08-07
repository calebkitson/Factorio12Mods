require "defines"
require "value_sensors.day_time"
require "value_sensors.evolution_factor"
require "value_sensors.play_time"
require "settingsGUI"

if not evogui then evogui = {} end
if not evogui.on_click then evogui.on_click = {} end

evogui.update_delay = 60 -- ticks to wait between each GUI update
local EXPECTED_VERSION = "0.3.0"


function evogui.create_player_globals(player)
    if not global.evogui then global.evogui = {} end
    if not global.evogui[player.name] then global.evogui[player.name] = {} end
    local player_settings = global.evogui[player.name]

    if not player_settings.version then player_settings.version = "" end
    if not player_settings.always_visible then
        player_settings.always_visible = {
            ["evolution_factor"] = true,
            ["play_time"] = true,
        }
    end
    if not player_settings.in_popup then
        player_settings.in_popup = {
            ["day_time"] = true,
        }
    end
    if not player_settings.popup_open then player_settings.popup_open = false end
end


function evogui.create_sensor_display(player)
    local root = player.gui.top.evoGUI
    local destroyed = false
    if root and global.evogui[player.name].version ~= EXPECTED_VERSION then
        player.gui.top.evoGUI.destroy()
        destroyed = true
    end

    if not root or destroyed then
        local root = player.gui.top.add{type="frame", name="evoGUI", direction = "horizontal", style="outer_frame_style"}

        local action_buttons = root.add{type="flow", name="action_buttons", direction = "vertical", style="description_flow_style"}
        action_buttons.add{type="button", name="evoGUI_popup", caption="+", style="evoGUI_small_button_style"}
        action_buttons.add{type="button", name="evoGUI_settings", caption="s", style="evoGUI_small_button_style"}

        local sensor_flow = root.add{type="flow", name="sensor_flow", direction = "vertical", style="description_flow_style"}
        sensor_flow.add{type="flow", name="always_visible", direction = "vertical", style="description_flow_style"}
        sensor_flow.add{type="flow", name="in_popup", direction = "vertical", style="description_flow_style"}

        global.evogui[player.name].version = EXPECTED_VERSION
    end
end


function evogui.update_gui()
    if (game.tick % evogui.update_delay) == 0 then
        for i, player in ipairs(game.players) do
            evogui.create_player_globals(player)
            evogui.create_sensor_display(player)

            local player_settings = global.evogui[player.name]

            local sensor_flow = player.gui.top.evoGUI.sensor_flow
            evogui.update_av(player, sensor_flow.always_visible)
            if player_settings.popup_open then
                evogui.update_ip(player, sensor_flow.in_popup)
            end
        end
    end
end


function evogui.update_av(player, element)
    local av_settings = global.evogui[player.name].always_visible

    for _, sensor in ipairs(evogui.value_sensors) do
        -- should we show it?
        if av_settings[sensor.name] ~= nil then
            -- is it not showing yet?
            if element[sensor.name] == nil then
                element.add{type="label", name=sensor.name}
            end
            -- and update its display
            element[sensor.name].caption = sensor:get_line()
        else
            -- is it showing?
            if element[sensor.name] ~= nil then
                element[sensor.name].destroy()
            end
        end
    end
end


function evogui.update_ip(player, element)
    if not global.evogui[player.name].popup_open then return end

    local ip_settings = global.evogui[player.name].in_popup

    for _, sensor in ipairs(evogui.value_sensors) do
        -- should we show it?
        if ip_settings[sensor.name] ~= nil then
            -- is it not showing yet?
            if element[sensor.name] == nil then
                element.add{type="label", name=sensor.name}
            end
            -- and update its display
            element[sensor.name].caption = sensor:get_line()
        else
            -- is it showing?
            if element[sensor.name] ~= nil then
                element[sensor.name].destroy()
            end
        end
    end
end


function evogui.on_click.evoGUI_popup(event)
    local player = game.get_player(event.player_index)
    local player_settings = global.evogui[player.name]

    local root = player.gui.top.evoGUI

    if player_settings.popup_open then
        -- close it
        player_settings.popup_open = false

        for _, childname in ipairs(root.sensor_flow.in_popup.children_names) do
            root.sensor_flow.in_popup[childname].destroy()
        end

        root.action_buttons.evoGUI_popup.caption = "+"
    else
        -- open it
        player_settings.popup_open = true

        evogui.update_ip(player, root.sensor_flow.in_popup)
        root.action_buttons.evoGUI_popup.caption = "-"
    end
end
