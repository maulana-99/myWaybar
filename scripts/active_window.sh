# ~/.config/waybar/scripts/active_window.sh
#!/bin/bash
hyprctl activewindow -j | jq -r '.title' | cut -c1-50
