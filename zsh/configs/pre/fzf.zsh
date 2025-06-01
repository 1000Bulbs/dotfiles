# Homebrew fzf integration: completion + key‑bindings + sane defaults
if command -v fzf &>/dev/null; then
  FZF_HOME="$(brew --prefix fzf)/shell"

  # Completion — put dir on $fpath; compinit (later) will pick it up
  [[ -r $FZF_HOME/completion.zsh ]] && fpath=($FZF_HOME $fpath)

  # Key‑bindings — must be sourced now
  [[ -r $FZF_HOME/key-bindings.zsh ]] && source $FZF_HOME/key-bindings.zsh

  # Sensible defaults
  export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
  export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border --prompt="❯ "'
fi
