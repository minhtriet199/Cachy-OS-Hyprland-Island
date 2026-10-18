#!/usr/bin/env bash
# Install Isla (Quickshell desktop shell) for the current user. No sudo needed except for packages.
set -euo pipefail
here="$(cd "$(dirname "$0")" && pwd)"
echo "Packages needed (Arch / CachyOS):"
echo "  sudo pacman -S --needed quickshell hyprland cliphist wl-clipboard fd ripgrep cava playerctl brightnessctl kvantum qt6ct"
dest="$HOME/.config/quickshell/isla"
[ -d "$dest" ] && mv "$dest" "$dest.bak-$(date +%Y%m%d-%H%M%S)"
mkdir -p "$dest" && cp -r "$here/isla/." "$dest/"
mkdir -p ~/.config/Kvantum ~/.local/share/icons ~/.local/share/color-schemes ~/.config/qt6ct/colors ~/Pictures/Wallpapers
cp -r "$here/extras/kvantum/Isla" ~/.config/Kvantum/
cp -r "$here/extras/icons/Isla" ~/.local/share/icons/
cp "$here/extras/color-schemes/Isla.colors" ~/.local/share/color-schemes/
cp "$here/extras/qt6ct/isla.conf" ~/.config/qt6ct/colors/
cp "$here/extras/wallpapers/isla-default.png" ~/Pictures/Wallpapers/
echo; echo "Done. Start it with:  qs -c isla"
echo "Make it start with Hyprland: add  hl.exec_cmd(\"qs -c isla\")  (Lua) or  exec-once = qs -c isla  to your config."
