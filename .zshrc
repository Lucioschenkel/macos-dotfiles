# --- BEGIN aliases --- #
alias v='nvim'

# --- END aliases --- #
fpath+=("$(brew --prefix)/share/zsh/site-functions")

# --- BEGIN pure prompt --- #
autoload -U promptinit; promptinit
prompt pure

# --- END pure prompt --- #
