export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="steeef"
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

HIST_STAMPS="yyyy/mm/dd"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/local/bin:/usr/local/git/bin

export LANG=ja_JP.UTF-8

export EDITOR='vim'

setopt list_packed

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt extended_history
setopt inc_append_history
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt hist_no_store
function history-all { history -E 1 } 
setopt hist_ignore_dups
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward
bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward

export PAGER=less

umask 022

alias la='ls -a'
alias ll='ls -laF'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'

alias sudo='sudo '

alias -g L='| less'
alias -g G='| grep'

if which pbcopy >/dev/null 2>&1 ; then
# Mac
    alias -g C='| pbcopy'
elif which xsel >/dev/null 2>&1 ; then
# Linux
    alias -g C='| xsel --input --clipboard'
elif which putclip >/dev/null 2>&1 ; then
# Cygwin
    alias -g C='| putclip'
fi

# vim:set ft=zsh:
eval "$(rbenv init -)"
