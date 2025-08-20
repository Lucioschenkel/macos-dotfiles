# --- BEGIN aliases --- #
alias v='nvim'

alias gst='git status'

# --- END aliases --- #

# --- BEGIN zsh --- #
fpath+=("$(brew --prefix)/share/zsh/site-functions")

source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Use vim keybindings
set -o vi

# --- END zsh --- #

# --- BEGIN pure prompt --- #
autoload -U promptinit; promptinit
prompt pure

# --- END pure prompt --- #
