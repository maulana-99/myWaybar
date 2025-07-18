#!/bin/bash
hyprctl clients -j | jq -r '.[].title' | paste -sd ' | ' -
