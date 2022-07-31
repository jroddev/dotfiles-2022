#!/bin/zsh

alias vim='nvim'
alias vi='vim'

alias grep='rg'
alias gg='git grep'

vimgitgrep(){ vim $(git grep -l $1); }
alias vg='vimgitgrep'

alias gitas='git add .; git status'
alias gitc='git commit -m'
alias gitreset='git reset --hard HEAD'
alias gitclean='git clean -f -d -x'

alias d='docker'
alias dc='docker-compose'

if [[ "$OSTYPE" =~ ^darwin ]]; then
    # OSX specific Alias
    alias ll='ls -lahG'
elif [[ "$OSTYPE" =~ ^linux ]]; then
    # Linux Specific Alias
    alias ll='ls -lah --color=auto'
    alias pbcopy='xclip -selection clipboard'
    alias pbpaste='xclip -selection clipboard -o'
    alias open='xdg-open'
fi

