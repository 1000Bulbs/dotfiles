# Automatically change into a directory just by typing its name
setopt autocd

# Every time you cd, push the old directory onto the stack (`dirs`)
setopt autopushd

# Make `pushd -` behave like `cd -`, swapping to the previous dir
setopt pushdminus

# Don’t print the directory stack after each pushd/popd (keeps prompt tidy)
setopt pushdsilent

# A bare `pushd` with no args goes to $HOME (parity with Bash)
setopt pushdtohome

# Allow `cd $var` when $var contains a path ("cd‑able" variables)
setopt cdablevars

# Limit the directory stack to the 5 most recent entries
DIRSTACKSIZE=5

# Leave an unmatched glob pattern as‑is instead of erroring out
unsetopt nomatch
