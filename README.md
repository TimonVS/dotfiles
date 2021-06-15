# Timon’s dotfiles

**Warning:** the settings in this repo are highly personal. You may fork the repository and change the settings to your liking but please review the code before using!

## Prerequisites

- Tested on: macOS Big Sur (11.x)

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

4. Configure macOS preferences

   ```sh
   ~/.dotfiles/setup-macos.sh
   ```

5. Install applications

   ```sh
   ~/.dotfiles/setup-apps.sh
   ```

6. Install [fnm](https://github.com/Schniz/fnm) to manage Node versions

    - Install latest LTS (Node 14 at the time of writing):

      ```sh
      fnm install lts/Fermium
      ```

7. Install [oh-my-zsh](https://ohmyz.sh)

   - Symlink `.zshrc`: 

      ```sh
      ln -sf ~/.dotfiles/.zshrc ~/.zshrc && source ~/.zshrc
      ```

8. Symlink Git config

   ```sh
   ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
   ```

9. Turn on [Settings Sync](https://code.visualstudio.com/docs/editor/settings-sync) for VS Code to restore settings and extensions

10. Configure Raycast

- Disable Spotlight keyboard shortcut: (Keyboard > Shortcuts > Spotlight)
- Configure Raycast shortcut to <kbd>⌘</kbd> + <kbd>space</kbd>

12. Install customized Dracula terminal theme

    - Install theme: `open ~/.dotfiles/Dracula.terminal`
    - Open Terminal preferences and set Dracula as the default theme

13. Configure Finder view options (Finder > View > Show View Options)

    - Sort By: Name
    - Click "Use as Defaults"

14. Enable recommendations in Storage Management (Preferences > Storage Management)

15. Install apps from the Mac App Store:

    - Unsplash Wallpapers (new wallpaper from Unsplash every day)
    - Wipr (adblocker for Safari)
      - Enable extension in Safari
      - Enable automatic refresh
    - Things 3 (todo app)

## Optional steps

### Configure tilde key on Dutch keyboard

Follow this step only when given a Dutch keyboard layout (vertical enter). Set up Karabiner Elements to map <kbd>§</kbd> to <kbd>`</kbd>

- Install Karabiner Elements: `brew install --cask karabiner-elements`
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
