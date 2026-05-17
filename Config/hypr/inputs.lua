hl.gesture({
   fingers = 3,
   direction = "horizontal",
   action = "workspace"
})

hl.gesture({
    fingers = 3,
    direction = "up",
    action = function()
        hl.exec_cmd("nwg-drawer")
    end
})

hl.config({
	input = {
		touchpad = {
			natural_scroll = true
		},
		kb_options = "ctrl:swapcaps",
		follow_mouse = 2
	}
})

