# Set default editors (VISUAL → interactive, EDITOR → fallback)
if command -v nvim &>/dev/null; then
  export VISUAL="$(command -v nvim)"
else
  export VISUAL="$(command -v vim)"
fi

export EDITOR="$VISUAL"
