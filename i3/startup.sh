#!/bin/bash
# =============================
# Startup apps + workspace layout
# =============================

# Give time for i3 to start
sleep 2

# Workspace 1: terminal on primary
i3-msg "workspace 1; exec i3-sensible-terminal"

sleep 1


# Workspace 2: browser on primary
i3-msg "workspace 2; exec brave-browser"

sleep 5

# Workspace 3: Discord + Spotify on secondary, vertical monitor layout
i3-msg "workspace 3"

# Ensure vertical stacking (top/bottom)
i3-msg "layout splitv"

# Open Discord (top)
i3-msg "exec discord"
# Open Spotify (bottom)
i3-msg "exec spotify"

sleep 8

# Move Discord to top
i3-msg '[class="discord"] focus'
sleep 0.5
i3-msg 'move up'

# Resize Discord
i3-msg 'resize set height 55 ppt'

