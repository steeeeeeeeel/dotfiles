# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=50000
SAVEHIST=50000

setopt extendedglob nomatch
unsetopt autocd beep
bindkey -v

export EDITOR=nvim

# functions
function gdebug () {
    eval "$(GIT_TRACE=1 GIT_TRACE_PACKET=1 GIT_TRACE_PERFORMANCE=1 GIT_CURL_VERBOSE=1 $1 $2)"
}

function webm2gif() {
    ffmpeg -y -i "$1" -vf palettegen _tmp_palette.png
    ffmpeg -y -i "$1" -i _tmp_palette.png -filter_complex paletteuse -r 10 "${1%.webm}.gif"
    rm _tmp_palette.png
}

# Alises
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'

alias ls='ls --color -F'
alias grep='grep --color'

alias gs='git status ./'
alias gd='git diff'
alias ga='git add'
alias gcm='git commit -m'
alias gca='git commit -am'
alias gti='git'

alias vi='nvim'
alias vim='nvim'

alias q='exit'
alias :q='exit'
alias quit='exit'

alias btw='neofetch'
alias iforgot='cat ~/.config/zsh/iforgot.txt'
alias vimtricks='cat ~/.config/nvim/vimtricks.txt'

# The following lines were added by compinstall
zstyle :compinstall filename '/home/steel/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit
prompt redhat

eval "$(zoxide init --cmd cd zsh)"
