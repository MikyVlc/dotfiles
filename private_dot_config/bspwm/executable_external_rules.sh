#!/bin/sh

wid=$1
class=$2
instance=$3
consequences=$4

case "$class" in
    MEGAsync)
        name=$(xprop -id "$wid" _NET_WM_NAME | cut -d\" -f2)
        if [ "$name" = "MEGAsync" ] || [ -z "$name" ]; then
            # popup sin título -> floating
            echo "state=floating"
        else
            # cualquier otra ventana de MEGAsync -> tiled
            echo "state=tiled follow=on"
        fi
        ;;
esac
