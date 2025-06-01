# Enable advanced globbing
setopt extendedglob

# Function autoloading
if [[ -d $HOME/.zsh/functions ]]; then
  # Prepend to fpath so zsh can locate your functions
  fpath=($HOME/.zsh/functions $fpath)

  # collect all plain (no-extension) files
  funcs=( $HOME/.zsh/functions/*~*.zwc~*.*(N-.) )

  if (( ${#funcs[@]} )); then
    # compile each one; this produces foo.zwc next to foo
    for f in "${funcs[@]}"; do
      zcompile "$f"
    done
  fi

  # Register each function for on‑demand loading
  for func_file in $HOME/.zsh/functions/*~*.zwc~*.*(N-.); do
    autoload -Uz "${func_file:t}"
  done
fi

# Config loader
_load_settings() {
  local _dir=$1
  [[ ! -d $_dir ]] && return 0

  # Load pre/* first
  for cfg in "$_dir"/pre/**/*.zsh~*.zwc(N-.); do source "$cfg"; done

  # Load everything except pre/, post/, and compiled .zwc
  for cfg in "$_dir"/**/*.zsh(N-.); do
    case $cfg in
      "$_dir"/(pre|post)/*) ;;
      *) source "$cfg" ;;
    esac
  done

  # Load post/* last
  for cfg in "$_dir"/post/**/*.zsh~*.zwc(N-.); do source "$cfg"; done
}

_load_settings $HOME/.zsh/configs

# Local config
[[ -f $HOME/.zshrc.local ]] && source $HOME/.zshrc.local

# Aliases
alias_dirs=( "$HOME"/.aliases )

[[ -d $HOME/.aliases.local ]] && alias_dirs+=( "$HOME"/.aliases.local )

for dir in "${alias_dirs[@]}"; do
  for file in "$dir"/*.aliases(N-.); do
    source "$file"
  done
done
