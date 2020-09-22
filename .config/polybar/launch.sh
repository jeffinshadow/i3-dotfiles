#!/usr/bin/env sh

# script to start polybar on every i3 refresh

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -q shadbar &
polybar -q shadbar2 &
