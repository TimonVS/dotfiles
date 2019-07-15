# Timon’s dotfiles

**Warning:** the settings in this repo are highly personal. You may fork the repository and change the settings to your liking but please review the code before using!

## Installation

1. Install XCode Command Line Developer tools for Git

```
xcode-select --install
```

2. [Install Homebrew](https://brew.sh/)

3. Clone this repo to hidden `.dotfiles` directory in your home directory

```
git clone git@github.com:TimonVS/dotfiles.git ~/.dotfiles
```

4. Run setup

```sh
~/.dotfiles/setup-symlinks.sh
```

```sh
~/.dotfiles/setup-macos.sh
```

```sh
~/.dotfiles/setup-apps.sh
```

5. Install zsh (**pre macOS Catalina only!**)

```sh
source ~/.dotfiles/setup-zsh.sh
```

6. Install [oh-my-zsh](https://ohmyz.sh)

7. Symlink VS Code settings manually:

```sh
ln -s -F ~/.dotfiles/VSCode/* ~/Library/Application\ Support/Code/User/
```
## Acknowledgements

Inspiration and code was taken from many sources, including:

- [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
- [pawelgrzybek/dotfiles](https://github.com/pawelgrzybek/dotfiles)
