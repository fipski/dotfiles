#!/usr/bin/env zsh
for i in $(pactl -f json list short sources | jq -r '.[].index');
  do pactl set-source-mute $i toggle;
done
