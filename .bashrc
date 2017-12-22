# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
PATH=$PATH:$HOME/local/bin

export PATH
export LC_CTYPE=ja_JP.utf8

PS1="\n\[\033[38;05;135m\]\u \[\033[0m\]at\[\033[0m\] \[\033[38;05;202m\]\H \[\033[0m\]in \[\033[38;05;82m\]\w\[\033[38;05;14m\]\$(__git_ps1)\n\[\033[00m\]\$ "

if [ -f $HOME/local/git-completion.bash ]; then
    source $HOME/local/git-completion.bash
fi
if [ -f $HOME/local/git-prompt.sh ]; then
    source $HOME/local/git-prompt.sh
fi
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

umask 022

export EDITOR='vim'

export PAGER=less

alias la='ls -a'
alias ll='ls -laF'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'

alias sudo='sudo '

alias mysqldump='mysqldump --skip-dump-date --complete-insert --extended-insert=FALSE'

alias his='history'
alias cc='redis-cli keys laravel:* | xargs redis-cli del'

# vim swap remove
alias swrm='rm ~/.vim/swap/*'

if [ -f $HOME/.bashrc.local ]; then
    . $HOME/.bashrc.local
fi
