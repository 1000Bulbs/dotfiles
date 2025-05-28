# Ruby build work‑arounds
export DLDFLAGS="-Wl,-undefined,dynamic_lookup"
export OPENSSL_CFLAGS="-Wno-error=implicit-function-declaration"
export CFLAGS="-Wno-error=implicit-function-declaration"

# asdf completions
if command -v asdf &>/dev/null; then
  ASDF_DIR="${ASDF_DATA_DIR:-$HOME/.asdf}"
  COMPLETIONS_DIR="$ASDF_DIR/completions"

  # Generate the completion file once
  if [[ ! -f $COMPLETIONS_DIR/_asdf ]]; then
    mkdir -p "$COMPLETIONS_DIR"
    asdf completion zsh > "$COMPLETIONS_DIR/_asdf"
  fi

  # Prepend completions dir to fpath (unique array avoids duplicates)
  fpath=("$COMPLETIONS_DIR" $fpath)
  typeset -U fpath
fi
