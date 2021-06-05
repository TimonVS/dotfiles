# Timon’s dotfiles

**Warning:** the settings in this repo are highly personal. You may fork the repository and change the settings to your liking but please review the code before using!

## Prerequisites

- macOS Catalina (10.15) or later

## Installation

1. Install XCode Command Line Developer tools for Git

```
xcode-select --install
```

2. [Install Homebrew](https://brew.sh/)

   - Run `brew doctor` to make sure permissions are right
   - Give your user ownership over Homebrew directories: `sudo chown -R $(whoami) $(brew --prefix)/*`

3. Clone this repo to hidden `.dotfiles` directory in your home directory

```
git clone https://github.com/TimonVS/dotfiles.git ~/.dotfiles
```

4. Run setup

```sh
~/.dotfiles/setup-macos.sh
```

```sh
~/.dotfiles/setup-apps.sh
```

5. Install [oh-my-zsh](https://ohmyz.sh)

   - Symlink `.zshrc` (force overwrite): `ln -sf ~/.dotfiles/.zshrc ~/.zshrc && source ~/.zshrc`

6. Symlink Git config

```sh
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```

7. Turn on [Settings Sync](https://code.visualstudio.com/docs/editor/settings-sync) for VS Code to restore settings and extensions

8. Configure Raycast

- Disable Spotlight keyboard shortcut: (Keyboard > Shortcuts > Spotlight)
- Configure Raycast shortcut to <kbd>⌘</kbd> + <kbd>space</kbd>

9. Install customized Dracula terminal theme

- Install theme: `open ~/.dotfiles/Dracula.terminal`
- Open Terminal preferences and set Dracula as the default theme

10. Configure Finder view options (Finder > View > Show View Options)

- Sort By: Name
- Click "Use as Defaults"

11. Enable recommendations in Storage Management (Preferences > Storage Management)

12. Install apps from the Mac App Store:

- Unsplash Wallpapers (new wallpaper from Unsplash every day)
- Wipr (adblocker for Safari)
  - Enable extension in Safari
  - Enable automatic refresh
- Things 3 (todo app)

13. Optional (only when given a MacBook with a Dutch keyboard layout): set up Karabiner Elements to map <kbd>§</kbd> to <kbd>`</kbd>

- Open Karabiner Elements > Simple Modifications
- Select `Apple Internal Keyboard / Trackpad` from the dropdown
- Add a new item:
  - From key: `non_us_backslash`
  - To key `grave_accent_and_tilde`
- Go to Misc and disable "Show icon in menubar"

## Acknowledgements

Inspiration and code was taken from many sources, including:

- [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
- [pawelgrzybek/dotfiles](https://github.com/pawelgrzybek/dotfiles)
