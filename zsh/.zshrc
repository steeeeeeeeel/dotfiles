# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=50000
SAVEHIST=50000

setopt extendedglob nomatch
unsetopt autocd beep
bindkey -v

alias -- ls='ls --color -F'
alias -- gcm='git commit -m'
alias -- gca='git commit -am'

# The following lines were added by compinstall
zstyle :compinstall filename '/home/steel/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit
prompt redhat

eval "$(zoxide init --cmd cd zsh)"
