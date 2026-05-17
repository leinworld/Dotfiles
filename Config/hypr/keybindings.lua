local mainMod = "SUPER"
local terminal = "kitty"
local fileManager = "thunar"
local menu = "hyprlauncher"
local C = "CTRL"

for i = 1, 4 do
	hl.bind(mainMod .. " + " .. i, hl.dsp.focus({ workspace = i}))
end

hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))


-- Window keys
hl.bind(mainMod .. " + " .. C .. " + H", function()
	hl.dispatch(hl.dsp.window.move({ workspace = "m-1" }))
end)

hl.bind(mainMod .. " + " .. C .. " + L", function()
	hl.dispatch(hl.dsp.window.move({ workspace = "m+1" }))
end)

hl.bind(mainMod .. " + H", function()
	hl.dispatch(hl.dsp.focus({ direction = "l"}))
end)

hl.bind(mainMod .. " + J", function()
	hl.dispatch(hl.dsp.focus({ direction = "d" }))
end)

hl.bind(mainMod .. " + K", function()
	hl.dispatch(hl.dsp.focus({ direction = "u" }))
end)

hl.bind(mainMod .. " + L", function()
	hl.dispatch(hl.dsp.focus({ direction = "r"}))
end)

