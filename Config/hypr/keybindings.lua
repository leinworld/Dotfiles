local mainMod = "SUPER"
local terminal = "kitty"
local fileManager = "thunar"
local browser = "microsoft-edge-stable"
local menu = "hyprlauncher"
local emoji = "hypremoji"
local C = "CTRL"
local TAB = "TAB"
local A = "ALT"

for i = 1, 4 do
	hl.bind(mainMod .. " + " .. i, hl.dsp.focus({ workspace = i}))
end

hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + PERIOD", hl.dsp.exec_cmd(emoji))

-- Window keys
hl.bind(mainMod .. " + " .. C .. " + H",hl.dsp.window.move({ workspace = "r-1" }))
hl.bind(mainMod .. " + " .. C .. " + L",hl.dsp.window.move({ workspace = "r+1" }))
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "l"}))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "d" }))
hl.bind(mainMod .. " + K",hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + L",hl.dsp.focus({ direction = "r"}))

hl.bind(mainMod .. " + " .. A .. " + H", hl.dsp.window.swap({ direction = "l"}))
hl.bind(mainMod .. " + " .. A .. " + J", hl.dsp.window.swap({ direction = "d" }))
hl.bind(mainMod .. " + " .. A .. " + K",hl.dsp.window.swap({ direction = "u" }))
hl.bind(mainMod .. " + " .. A .. " + L",hl.dsp.window.swap({ direction = "r"}))

hl.bind(mainMod .. " + " .. TAB, hl.dsp.window.cycle_next({ next = true }))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + M", hl.dsp.window.fullscreen_state({ action = "toggle", internal = 1, client = 0 }))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
