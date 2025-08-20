# --- BEGIN aliases --- #
alias v='nvim'

alias gst='git status'

# --- END aliases --- #
fpath+=("$(brew --prefix)/share/zsh/site-functions")

# --- BEGIN pure prompt --- #
autoload -U promptinit; promptinit
prompt pure

# --- END pure prompt --- #
