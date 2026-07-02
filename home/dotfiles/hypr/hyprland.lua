-- Hyprland config
-- @author gablaterreur

----------------------------------------
-- MONITORS --
----------------------------------------
hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = "auto",
})

----------------------------------------
-- PROGRAMS --
----------------------------------------

local terminal = "kitty"
local menu     = "wofi --show drun"


----------------------------------------
-- ENV VARS --
----------------------------------------

hl.env("MOZ_ENABLE_WAYLAND", "1")


----------------------------------------
-- KEYBINDINGS --
----------------------------------------

local mainMod = "SUPER"

hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())

