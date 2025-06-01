# Homebrew paths for both Apple‑silicon and Intel macOS
case $(uname -m) in
  arm64) BREW_PREFIX=/opt/homebrew ;;
  *)     BREW_PREFIX=/usr/local    ;;
esac

# Prepend custom completion dir + brew site‑functions
fpath=(~/.zsh/completion $BREW_PREFIX/share/zsh/site-functions $fpath)

# Initialize compinit, but rebuild the dump file only when >24 h old        #
autoload -Uz compinit
ZCD=$HOME/.zcompdump

# If the dump file is **missing** OR **older than 24 h**, regenerate it.
if [[ ! -s $ZCD || -n $ZCD(N.mh+24) ]]; then
  # `-i` skips insecure‑dir check if you trust your fpath; drop it if unsure.
  compinit -i -d $ZCD
else
  # Up‑to‑date dump → load quickly, skip security check for speed.
  compinit -C -d $ZCD
fi
