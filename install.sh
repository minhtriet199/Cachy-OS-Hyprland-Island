#!/usr/bin/env bash
# Install Island (Quickshell desktop shell) for the current user. No sudo needed except for packages.
set -euo pipefail
here="$(cd "$(dirname "$0")" && pwd)"
echo "Packages needed (Arch / CachyOS):"
echo "  sudo pacman -S --needed quickshell hyprland cliphist wl-clipboard fd ripgrep cava playerctl brightnessctl kvantum qt6ct"
dest="$HOME/.config/quickshell/island"
[ -d "$dest" ] && mv "$dest" "$dest.bak-$(date +%Y%m%d-%H%M%S)"
mkdir -p "$dest" && cp -r "$here/island/." "$dest/"
mkdir -p ~/.config/Kvantum ~/.local/share/icons ~/.local/share/color-schemes ~/.config/qt6ct/colors ~/Pictures/Wallpapers
cp -r "$here/extras/kvantum/Island" ~/.config/Kvantum/
cp -r "$here/extras/icons/Island" ~/.local/share/icons/
cp "$here/extras/color-schemes/Island.colors" ~/.local/share/color-schemes/
cp "$here/extras/qt6ct/island.conf" ~/.config/qt6ct/colors/
cp "$here/extras/wallpapers/island-default.png" ~/Pictures/Wallpapers/
echo; echo "Done. Start it with:  qs -c island"
echo "Make it start with Hyprland: add  hl.exec_cmd(\"qs -c island\")  (Lua) or  exec-once = qs -c island  to your config."
