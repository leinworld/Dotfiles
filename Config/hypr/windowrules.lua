hl.window_rule({
	match = { class = "^(mpv)$" },
	float = true,
	center = true
})

-- Ardour 본체 및 관련 플러그인 창을 모두 플로팅으로 띄우는 규칙
hl.window_rule({
    name = "float-ardour",
    match = { class = "^([Aa]rdour).*$" },
    float = true,
    center = true -- 창을 띄울 때 화면 중앙에 배치 (선택 사항)
})
