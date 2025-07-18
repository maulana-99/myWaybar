#!/bin/bash
updates=$(nix flake update --dry-run 2>&1 | grep '→' | wc -l)
echo "$updates"
