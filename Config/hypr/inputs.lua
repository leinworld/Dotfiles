hl.gesture({
   fingers = 3,
   direction = "horizontal",
   action = "workspace"
})

hl.gesture({
    fingers = 3,
    direction = "up",
    action = function()
        --hl.exec_cmd("nwg-drawer")
        hl.exec_cmd("rofi -show run")
    end
})

hl.config({
	input = {
		touchpad = {
			natural_scroll = true
		},
		follow_mouse = 2
	}
})

hl.device({
	name = "apple-inc.-apple-internal-keyboard-/-trackpad",
	kb_options = "ctrl:swapcaps",
})
