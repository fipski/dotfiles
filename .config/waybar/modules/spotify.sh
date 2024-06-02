#!/bin/sh

class=$(playerctl metadata --player=spotify --format '{{lc(status)}}')
icon=""
info=""
if [[ $class == "playing" || $class == "paused" ]]; then
  artist=$(playerctl metadata --player=spotify --format '{{artist}}')
  title=$(playerctl metadata --player=spotify --format '{{title}}')
  if [[ -z "$artist" ]]; then
    info="$title"
  else
    info="${artist} - ${title}"
  fi
  if [[ ${#info} > 40 ]]; then
    info=$(echo $info | cut -c1-40)"..."
  fi
  text=$info" "$icon
elif [[ $class == "stopped" ]]; then
  text=""
fi

echo -e "{\"text\":\""$text"\", \"class\":\""$class"\"}"
