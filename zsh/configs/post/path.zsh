# Add asdf shims to the PATH
ASDF_SHIMS="${ASDF_DATA_DIR:-$HOME/.asdf}/shims"

if [[ -d $ASDF_SHIMS ]]; then
  path=("$ASDF_SHIMS" $path)
fi

# make elements unique, export PATH automatically
typeset -gU path
