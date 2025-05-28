# Homebrew paths for both Apple‑silicon and Intel macOS
case "$(uname -m)" in
  arm64) BREW=/opt/homebrew ;;
  x86_64) BREW=/usr/local ;;
  *) BREW=/usr/local ;;    # fallback for Rosetta or unknown arch
esac

# Exit quietly if Homebrew isn’t installed yet
[[ -x $BREW/bin/brew ]] || return

# Let brew tell us the correct env vars (prefix, cellar, path, man, info)
eval "$($BREW/bin/brew shellenv)"

# Opt‑out of analytics by default; user can override in ~/.zshrc.local
: ${HOMEBREW_NO_ANALYTICS:=1}
export HOMEBREW_NO_ANALYTICS
