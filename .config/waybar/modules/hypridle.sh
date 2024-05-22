#!/bin/sh

lock_pid=$(pidof hypridle)

# Toggle
if [[ -z "$lock_pid" && "$1" == "-t" ]]; then
  hypridle > /dev/null & disown
elif [[ "$1" == "-t" ]]; then
  kill $lock_pid
fi

lock_pid=$(pidof hypridle)

if [[ -z "$lock_pid" ]]; then
  tooltip="Idle Timers disabled"
  text=off
  percentage=0
  class=warning
else
  tooltip="Idle Timers enabled"
  text=on
  percentage=100
  class=
fi
echo -e "{\"text\":\""$text"\", \"tooltip\":\""$tooltip"\", \"percentage\":"$percentage", \"class\":\""$class"\"}"
