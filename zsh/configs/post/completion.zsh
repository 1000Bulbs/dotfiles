# arm64 or x86_64
arch="$(uname -m)"

# load our own completion functions
if [ "$arch" = "arm64" ]; then
  fpath=(~/.zsh/completion /opt/homebrew/share/zsh/site-functions $fpath)
else
  fpath=(~/.zsh/completion /usr/local/share/zsh/site-functions $fpath)
fi

# completion; use cache if updated within 24h
autoload -Uz compinit
if [[ -n $HOME/.zcompdump(#qN.mh+24) ]]; then
  compinit -d $HOME/.zcompdump;
else
  compinit -C;
fi;

# disable zsh bundled function mtools command mcd
# which causes a conflict.
compdef -d mcd
