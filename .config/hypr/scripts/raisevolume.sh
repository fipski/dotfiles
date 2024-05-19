#!/usr/bin/env bash
[[ $(pamixer --get-volume) -lt 150 ]] && pactl set-sink-volume @DEFAULT_SINK@ +5% && pactl set-sink-mute @DEFAULT_SINK@ 0
