# Dotfiles

A set of configuration files to enhance the terminal experience.

## Requirements

Setup your [laptop](https://github.com/1000Bulbs/laptop) before installing these
configuration files.

## Install

Clone onto your laptop

```
git clone git://github.com/1000Bulbs/dotfiles.git ~/dotfiles
```

Install the dotfiles

```
env RCRC="$HOME/dotfiles/rcrc" rcup
```

Once you run the command above, you can run `rcup` without the `RCRC` env
variable being set.

## Update

Update the git repo and then run

```
rcup
```

## Customizations

You can add your own customizations. First, create your customizations directory

```
mkdir ~/dotfiles-local
```

then put your customizations in the `~/dotfiles-local` directory with a `.local`
extension

* `~/dotfiles-local/aliases.local`
* `~/dotfiles-local/git_template.local/*`
* `~/dotfiles-local/gitconfig.local`
* `~/dotfiles-local/psqlrc.local`
* `~/dotfiles-local/tmux.conf.local`
* `~/dotfiles-local/vimrc.local`
* `~/dotfiles-local/vimrc.bundles.local`
* `~/dotfiles-local/zshrc.local`
* `~/dotfiles-local/zsh/configs/*`

## What This Sets Up

[vim](https://www.vim.org/) configuration:

* [fzf](https://github.com/junegunn/fzf.vim) for fuzzy file/buffer/tag finding.
* [Rails.vim](https://github.com/tpope/vim-rails) for enhanced navigation of
  Rails file structure via `gf` and `:A` (alternate), `:Rextract` partials,
  `:Rinvert` migrations, etc.
* Run many kinds of tests [from vim]([https://github.com/janko-m/vim-test)
* Set `<leader>` to a single space.
* Switch between the last two files with space-space.
* Syntax highlighting for Markdown, HTML, JavaScript, Ruby, Go, Elixir, more.
* Use [Ag](https://github.com/ggreer/the_silver_searcher) instead of Grep when
  available.
* Map `<leader>ct` to re-index ctags.
* Use [vim-mkdir](https://github.com/pbrisbin/vim-mkdir) for automatically
  creating non-existing directories before writing the buffer.
* Use [vim-plug](https://github.com/junegunn/vim-plug) to manage plugins.

[tmux](https://github.com/tmux/tmux)
configuration:

* Improve color resolution.
* Remove administrative debris (session name, hostname, time) in status bar.
* Set prefix to `Ctrl+s`
* Soften status bar color from harsh green to light gray.

[git](https://git-scm.com/) configuration:

* Adds a `create-branch` alias to create feature branches.
* Adds a `delete-branch` alias to delete feature branches.
* Adds a `merge-branch` alias to merge feature branches into master.
* Adds an `up` alias to fetch and rebase `origin/master` into the feature
  branch. Use `git up -i` for interactive rebases.
* Adds `post-{checkout,commit,merge}` hooks to re-index your ctags.
* Adds `pre-commit` and `prepare-commit-msg` stubs that delegate to your local
  config.
* Adds `trust-bin` alias to append a project's `bin/` directory to `$PATH`.

[Ruby](https://www.ruby-lang.org/en/) configuration:

* Add trusted binstubs to the `PATH`.
* Load the ASDF version manager.

Shell aliases and scripts:

* `b` for `bundle`.
* `g` with no arguments is `git status` and with arguments acts like `git`.
* `migrate` for `bin/rails db:migrate db:rollback && bin/rails db:migrate db:test:prepare`.
* `mcd` to make a directory and change into it.
* `replace foo bar **/*.rb` to find and replace within a given list of files.
* `tat` to attach to tmux session named the same as the current directory.
* `v` for `$VISUAL`.
