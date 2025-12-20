# Set a custom prompt to clearly indicate we're in a devcontainer
PROMPT='%F{green}[devcontainer]%f %~ %# '

# Setting history configs
HISTFILE="${WORKSPACE_FOLDER}/.devcontainer/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY

# Add aliases
alias ll='ls -lha'

autoload -Uz compinit
compinit

# Setting up keybinds
bindkey '^[[1;5D' backward-word  # Ctrl + Left Arrow
bindkey '^[[1;5C' forward-word   # Ctrl + Right Arrow
