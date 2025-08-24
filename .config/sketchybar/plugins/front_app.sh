#!/bin/sh

# Some events send additional information specific to the event in the $INFO
# variable. E.g. the front_app_switched event sends the name of the newly
# focused application in the $INFO variable:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting

if [ "$SENDER" = "front_app_switched" ]; then
  FOCUSED_WORKSPACE=$(aerospace list-workspaces --focused)
  FOCUSED_WINDOW=$(aerospace list-windows --focused)
  sketchybar --set space.$FOCUSED_WORKSPACE label=$($CONFIG_DIR/plugins/icon_map_fn.sh "$INFO")
fi
