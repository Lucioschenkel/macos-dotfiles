# --- Source variables --- #
source ~/.zshenv

# --- History --- #
HISTFILE=$HOME/.history
HISTSIZE=10000000
SAVEHIST=10000000

setop HIST_IGNORE_SPACE # Don't save command to history when prefixed by a space
setop HIST_IGNORE_DUPS # Share history between sessions

# Search history with up and down keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# --- Editing --- #
set -o vi # Use vim keybindings

# --- Aliases --- #

# Neovim
alias v="nvim"

# Git
alias gst="git status"
alias gl="git log"
alias gd="git diff"

# Kubernetes
alias k="kubectl"
alias kgp="kubectl get pods"
alias kc="kubectx"
alias kns="kubens"

# --- zsh plugins and prompt --- #
fpath+=("$(brew --prefix)/share/zsh/site-functions")

source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load pure prompt --- #
autoload -U promptinit; promptinit
prompt pure
