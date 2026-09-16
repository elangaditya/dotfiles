local mainMod = "SUPER"

-- vim_binds.lua
-- Vim-style navigation and window management configuration for Hyprland 


---------------------------
---- WINDOW MANAGEMENT ----
---------------------------

-- Change Focus (Vim Style)
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

-- Move Active Window (Vim Style)
hl.bind(mainMod .. " + CONTROL + SHIFT + K", hl.dsp.window.move({ direction = "u" }))
hl.bind(mainMod .. " + CONTROL + SHIFT + L", hl.dsp.window.move({ direction = "r" }))
hl.bind(mainMod .. " + CONTROL + SHIFT + H", hl.dsp.window.move({ direction = "l" }))
hl.bind(mainMod .. " + CONTROL + SHIFT + J", hl.dsp.window.move({ direction = "d" }))

-- Move to Adjacent Workspaces (Vim Style)
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.focus({ workspace = "m+1" }))
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.focus({ workspace = "m-1" }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.focus({ workspace = "emptym" }))

-- Move Window to Adjacent Workspaces (Vim Style)
hl.bind(mainMod .. " + CONTROL + L", hl.dsp.window.move({ workspace = "m+1" }))
hl.bind(mainMod .. " + CONTROL + H", hl.dsp.window.move({ workspace = "m-1" }))
