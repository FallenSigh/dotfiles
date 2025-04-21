#!/bin/bash

killall waybar

waybar -s ~/.config/waybar/style.css -c ~/.config/waybar/config.jsonc &
