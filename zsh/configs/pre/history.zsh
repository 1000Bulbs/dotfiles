# core settings
HISTFILE=$HOME/.zhistory
HISTSIZE=1000000
SAVEHIST=1000000

# options
setopt append_history inc_append_history       # write on exit & live
setopt share_history                           # merge across shells
setopt hist_ignore_all_dups hist_expire_dups_first hist_ignore_dups
setopt hist_reduce_blanks hist_verify

# arrow‑key substring search
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
