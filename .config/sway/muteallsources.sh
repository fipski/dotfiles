#!/bin/zsh
for i in $(pactl list short sources | cut -d $'\t' -f1);
do
    pactl set-source-mute $i toggle;
done
