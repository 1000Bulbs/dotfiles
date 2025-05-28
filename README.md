# Dotfiles

A set of configuration files for your laptop.

## Requirements

Setup your [laptop](https://github.com/1000bulbs/laptop)
before installing these configuration files.

## Install

Install the `dotfiles` in your home directory.

### Clone the repo

```sh
git clone https://github.com/1000bulbs/dotfiles ~/dotfiles
```

### Install the dotfiles

```sh
env RCRC="$HOME/dotfiles/rcrc" rcup
```

Once you run the command above, you can run `rcup` without the `RCRC` env
variable being set.

### Compile zsh functions

Compile every plain file in ~/.zsh/functions, skipping any \*.zwc already there

```sh
zcompile ~/.zsh/functions/*~*.zwc(.N)
```

### Compile zsh configs

```sh
zcompile ~/.zsh/configs/\*_/_~\*.zwc(.N)
```
