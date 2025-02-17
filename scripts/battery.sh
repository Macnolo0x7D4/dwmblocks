#!/bin/sh

for battery in /sys/class/power_supply/BAT?*; do
	[ -n "${capacity+x}" ] && printf " "

	case "$(cat "$battery/status" 2>&1)" in
		"Full") status="⚡ " ;;
		"Discharging") status="🔋 " ;;
		"Charging") status="🔌 " ;;
		"Not charging") status="🛑 " ;;
		"Unknown") status="♻️ " ;;
		*) exit 1 ;;
	esac

	capacity="$(cat "$battery/capacity" 2>&1)"

	[ "$status" = "🔋" ] && [ "$capacity" -le 25 ] && warn="❗"

	printf "%s%s%d%%" "$status" "$warn" "$capacity"; unset warn
done && printf "\\n"
