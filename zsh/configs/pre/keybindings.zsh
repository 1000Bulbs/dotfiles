# Free up Ctrl‑Q / Ctrl‑S by disabling XON/XOFF flow control
stty -ixon

# Enable vi editing mode (Esc to enter command mode)
bindkey -v

#    Ctrl‑A  → move to beginning of line
bindkey "^A" beginning-of-line

#    Ctrl‑E  → move to end of line
bindkey "^E" end-of-line

#    Ctrl‑K  → kill from cursor to end of line
bindkey "^K" kill-line

#    Ctrl‑R  → incremental reverse search (real‑time, like Bash)
bindkey "^R" history-incremental-search-backward

#    Ctrl‑P  → previous history entry that starts with current prefix
bindkey "^P" history-search-backward

#    Ctrl‑Y  → run the line but keep it in the buffer for quick edits
bindkey "^Y" accept-and-hold

#    Ctrl‑N  → insert last argument/word from previous command
bindkey "^N" insert-last-word

#    Ctrl‑Q  → push line to history and open $EDITOR for multi‑line edit
bindkey "^Q" push-line-or-edit
