# Add bin directory to the PATH
BIN_DIR="$HOME/.bin"

if [[ -d $BIN_DIR ]]; then
  path=("$BIN_DIR" $path)
fi

# Add asdf shims to the PATH
ASDF_SHIMS="${ASDF_DATA_DIR:-$HOME/.asdf}/shims"

if [[ -d $ASDF_SHIMS ]]; then
  path=("$ASDF_SHIMS" $path)
fi

# make elements unique, export PATH automatically
typeset -gU path
