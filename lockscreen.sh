#!/bin/bash

img=/tmp/wallpaper.png

scrot -o $img
convert $img -scale 10% -scale 1000% $img

i3lock -i $img
