# Dotfiles

A set of configuration files and scripts for setting up a 1000Bulbs development environment on macOS.

## Requirements

Before installing these configuration files, set up your laptop using the [laptop](https://github.com/1000bulbs/laptop) script.

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

## Update

To update your dotfiles:

```sh
cd ~/dotfiles
git pull origin master
rcup
```

## Customizations

Add your own customizations

```sh
mkdir ~/dotfiles-local
```

Put your customizations in the `~/dotfiles-local` directory with a `.local`
extension

* `~/dotfiles-local/aliases.local/*.aliases`
* `~/dotfiles-local/config/git/git_template.local/*`
* `~/dotfiles-local/config/git/config.local`
* `~/dotfiles-local/zshrc.local`

These files will be automatically sourced during setup.

## What This Sets Up

This dotfiles repo sets up and configures:

### Shell Environment

* zsh configuration via zshrc
* zsh pre and post startup configs:
* color, keybindings, options, history, path, and more
* zsh completions (_rg)
* Prompt optimizations and history settings
* hushlogin to silence login messages
* Local function autocompilation support

### Git Configuration

* Custom git config, gitignore, and gitmessage
* Git hooks and templates (commit-msg, pre-commit, etc.)
* Supports overrides via config.local and git_template.local

### Development Tooling

* RubyGems configuration via .gemrc
* RSpec default settings via .rspec
* ASDF version manager settings via .asdfrc

### Helper Scripts

Located in the bin/ directory, these include:

* kill_port: kill processes bound to a port
* whats_on_port: check which process is using a port

### Homebrew

* Integration via homebrew.zsh to ensure packages and taps are ready

### Package Management

* Designed to work with rcm for dotfile management
* Modular structure allows safe extension and version control of environment config

### Structure Overview

Key directories:

* zsh/ – Zsh-related configuration
* config/git/ – Git templates and config
* bin/ – Useful command-line scripts
* ssh/config – SSH client settings
