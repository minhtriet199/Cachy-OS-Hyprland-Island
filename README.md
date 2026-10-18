# Island — a cozy desktop for Hyprland

A [Quickshell](https://quickshell.outfoxxed.me/) desktop shell for **CachyOS + Hyprland**, styled after
*Animal Crossing: New Horizons*: candy-sticker pills, a 3D phone that rises from the bottom, and an island theme.

## Features
- **Top bar** — island/workspaces, weather, music (spinning cover, cover-coloured visualizer), clock & calendar,
  CPU/RAM/GPU with temperatures, tray apps, colour picker, notifications, EN/VI input, live Wi-Fi/Bluetooth/sound icons, battery, power.
- **Phone** (Super+Space) — home launcher with in-place search (apps, Island pages, files, text inside files, Google),
  Quick panel, Islands (drag to swap workspaces, close with confirm), Clipboard, Profile, full Settings
  (Wi-Fi with per-network DNS/IP, Bluetooth, Sound mixer, Power, Displays, Keyboard shortcuts, Screen time, System, Wallpapers).
  Works upright or sideways (↻), small or big (⛶ / Ctrl+F), keyboard navigable (F1).
- **Dock** — auto-hide, live window previews, running indicators.
- **Notifications** — up to 3 bubbles with a queue, bell dropdown.
- **Lock screen** — PAM unlock, Animal Crossing circle-iris transition with a choice of icon and colour.
- **Extras** — Kvantum "Isla" theme, candy folder icon set, Isla KDE colour scheme for Dolphin and Qt apps.

## Install
```
git clone https://github.com/minhtriet199/Cachy-OS-Hyprland-Island.git
cd Cachy-OS-Hyprland-Island && ./install.sh
qs -c isla
```

(The Quickshell config folder is named `isla`, so it is started with `qs -c isla`.)
Built for a Lua-config Hyprland (0.56+); some helpers (screen settings, keybind editor) expect the scripts in the author's dotfiles.
