source ~/.config/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle jeffreytse/zsh-vi-mode
antigen bundle marlonrichert/zsh-autocomplete@main

antigen theme spaceship-prompt/spaceship-prompt

antigen apply

source ~/.zsh_exports
source ~/.zsh_aliases
source ~/.zsh_functions
