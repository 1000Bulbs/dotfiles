#!/usr/bin/env zsh

# Enable color constants ($fg, $bg, $reset_color, etc.)
(( $+functions[colors] )) || autoload -Uz colors
colors

# BSD ls colors (macOS)
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

case "$(uname -s)" in
  Darwin) alias ls='ls -G' ;;   # -G is BSD colour flag
  Linux)  command -v ls --color &>/dev/null && alias ls='ls --color=auto' ;;
esac
