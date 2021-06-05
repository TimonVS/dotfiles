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
~/.dotfiles/setup-symlinks.sh
```

```sh
~/.dotfiles/setup-apps.sh
```

5. Install [oh-my-zsh](https://ohmyz.sh)

    - Symlink `.zshrc` again (force overwrite): `ln -sf ~/.dotfiles/.zshrc ~/.zshrc && source ~/.zshrc`

6. Turn on [Settings Sync](https://code.visualstudio.com/docs/editor/settings-sync) for VS Code to restore settings and extensions

7. Configure Alfred settings (use GUI)

- Activate Powerpack (license key is in 1Password)
- Sync with `.dotfiles` directory
- Enable Alfred clipboard (enable for plain text and images)
- Install macOS Sierra theme (http://www.packal.org/theme/macos-sierra)
- Disable Spotlight hotkey (System Preferences > Keyboard > Shortcuts > Spotlight > Show Spotlight search)
- Set Alfred hotkey to ⌘ + space

8. Install Dracula terminal theme

- Clone to `~/Projects` directory and open (import) `Dracula.terminal` after cloning.

```sh
git clone https://github.com/dracula/terminal-app.git ~/Projects/dracula-terminal-app && open ~/Projects/dracula-terminal-app/Dracula.terminal
```

- Open Terminal preferences and set Dracula as the default theme

9. Configure Finder view options (Finder > View > Show View Options)

- Sort By: Name
- Click "Use as Defaults"

10. Enable recommendations in Storage Management (Preferences > Storage Management)

11. Install apps from the Mac App Store:

- Unsplash Wallpapers (new wallpaper from Unsplash every day)
- Wipr (adblocker for Safari)
  - Enable extension in Safari
  - Enable automatic refresh
- Things 3 (todo app)

12. Optional (only when given a MacBook with a Dutch keyboard layout): set up Karabiner Elements to map <kbd>§</kbd> to <kbd>`</kbd>

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
