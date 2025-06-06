autoload -Uz compinit && compinit

export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

zplug "zsh-users/zsh-syntax-highlighting"

zplug "zsh-users/zsh-history-substring-search"

zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "chrissicool/zsh-256color"
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' use-cache true
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh
zplug "plugins/tig", from:oh-my-zsh
zplug "plugins/terraform", from:oh-my-zsh
zplug "themes/steeef", from:oh-my-zsh

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load

export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

HIST_STAMPS="yyyy-mm-dd"

export PATH=$HOME/local/go/bin:$PATH

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

umask 0022

export DOCKER_BUILDKIT=1

alias la='ls -a'
alias ll='ls -laF'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias his='history -t"%F %T"'

alias mkdir='mkdir -p'

alias sudo='sudo '

alias -g L='| less'
alias -g G='| grep'
alias -g X='| xargs'

alias de='docker exec -it '
alias dr='docker run -it '
alias da='docker attach '
export COMPOSE_DOCKER_CLI_BUILD=1
export DOCKER_BUILDKIT=1

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

if [ -f $HOME/.env ]; then
    . $HOME/.env
fi
