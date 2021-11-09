# arm64 or x86_64
arch="$(uname -m)"

if [ "$arch" = "arm64" ]; then
  BREW="/opt/homebrew"
else
  BREW="/usr/local"
fi

export PATH="$BREW/bin:$PATH"

# To opt in to Homebrew analytics, `unset` this in ~/.zshrc.local .
# Learn more about what you are opting in to at
# https://docs.brew.sh/Analytics
export HOMEBREW_NO_ANALYTICS=1
