#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
# polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown
# polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m
    if [ $m == 'DP-2' ]; then
      polybar --reload bar1 2>&1 | tee -a /tmp/polybar1.log & disown 
    elif [ $m == 'DP-4' ]; then
      polybar --reload bar2 2>&1 | tee -a /tmp/polybar1.log & disown 
    fi
  done
else
  polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown
  polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown
fi
echo "Bars launched..."
