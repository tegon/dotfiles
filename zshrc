# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set empty theme to use pure ZSH
ZSH_THEME=""

# Load z function
source $HOME/z.sh

# Which plugins would you like to load? Plugins can be found in:
# #   ~/.oh-my-zsh/plugins/*
# #
# # Custom plugins may be added to:
# #   ~/.oh-my-zsh/custom/plugins/
# #
# # Example format:
# #   plugins=(rails git textmate ruby)
plugins=(git z zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# pure ZSH
autoload -U promptinit; promptinit
prompt pure

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases
