# #!/bin/sh
LAST=""

while true; do
	[ -z "$LAST" ] && SPACE=" "
	NEXT="$(fuzzel -l 0 --dmenu -p "${LAST}${SPACE}")"
	[ -z "$NEXT" ] && exit 1
	[ "$NEXT" = "y" ] && wl-copy "$LAST" && exit 0
	LAST="$(echo "$LAST$NEXT" | bc -l | sed '/\./ s/\.\{0,1\}0\{1,\}$//')"
done
