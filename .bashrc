# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
PATH=$PATH:$HOME/bin

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

export SVN_EDITOR=vim

alias la='ls -a'
alias ll='ls -laF'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias his='history'

# vim swap remove
alias swrm='rm ~/.vim/swap/*'
