# My Dotfiles

Personal configuration files for my Linux setup.

## Setup

- **OS:** Debian Trixie
- **DE:** KDE Plasma 6 (Wayland)
- **Terminal:** [kitty](https://github.com/kovidgoyal/kitty) + [Catppuccin for kitty](https://github.com/catppuccin/kitty)
- **Shell:** [fish](https://github.com/fish-shell/fish-shell)
- **Editor:** [micro](https://github.com/micro-editor/micro) + [Catppuccin for micro](https://github.com/catppuccin/micro)
- **Fetch:** [hyfetch](https://github.com/hykilpikonna/hyfetch) & [fastfetch](https://github.com/fastfetch-cli/fastfetch)

## What's Here

- `fish/config.fish` - Custom prompt with pink/purple colors
- `fastfetch/config.jsonc` - Custom fastfetch output
- `.gitconfig` - Git config with GPG signing enabled
- `.gitignore` - Standard ignores

## Preview

![Terminal screenshot](images/terminal.png)
Hyfetch in Omnisexual colors with fish and fastfetch custom pink/purple theming.

## Installation

```fish
git clone https://github.com/TerminalTilt/dotfiles.git
cd dotfiles

# Copy fish config
cp fish/config.fish ~/.config/fish/config.fish

# Copy git config
cp .gitconfig ~/.gitconfig

# Copy fastfetch config
mkdir -p ~/.config/fastfetch
cp fastfetch/config.jsonc ~/.config/fastfetch/config.jsonc
```
## License
[GPL v3](LICENSE)
