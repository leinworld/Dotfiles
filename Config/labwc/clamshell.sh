#!/bin/bash

INTERNAL="eDP-1"

if grep -q closed /proc/acpi/button/lid/LID0/state 2>/dev/null; then
	wlr-randr --output "$INTERNAL" --off
fi

acpi_listen | while read -r event; do
case "$event" in
	*button/lid*close*)
		wlr-randr --output "$INTERNAL" --off
		;;
	*button/lid*open*)
		wlr-randr --output "$INTERNAL" --on
		;;
esac
done
