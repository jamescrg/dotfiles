# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='clear && ls -alF --group-directories-first'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


# some aliases

# server management
alias ss='sudo systemctl'
alias ssr='sudo systemctl restart'
alias ng='cd /etc/nginx && vim'


# quick access to notes
alias w='cd ~/w/notes && vim notes.ol.md'
alias bk='cd ~/w/bk && vim'

# minimal vim setup
alias minvim="vim -u ~/.vim/essential.vim"

# quick access to work on projects
alias cla='cd && cd ~/cla && source ~/.venvs/cla/bin/activate'
alias chf='cd && cd ~/chf && source ~/.venvs/chf/bin/activate'
alias mh='cd && cd ~/mh && source ~/.venvs/mh/bin/activate'
alias jo='cd && cd ~/jo && source ~/.venvs/jo/bin/activate'
alias mp='cd && cd ~/mp && source ~/.venvs/mp/bin/activate'

# quick launch tmux
alias tmux="TERM=screen-256color-bce tmux"
alias t='tmux'

# quick source bashrc
alias so='source ~/.bashrc'

# run python
alias py='python3'

# change into python virtualenvs
alias wk='workon'
alias de='deactivate'

# deploy a site
alias deploy='ssh james@minhome.app python3 deploy.py'

# refresh local data
alias cla_refresh='cd ~/.backups && python3 import.py'

# django shortcuts
alias pym='python3 manage.py'
alias sv='python3 manage.py runserver 0.0.0.0:8000 && tmux rename-window runserver'
alias gun='gunicorn --config ./gunicorn_cl.conf.py config.wsgi'
alias db='tmux rename-window psql && psql'
alias to='touch ./config/wsgi.py'

# git aliases
alias ga='git add .'
alias gb='git branch'
alias gc='git commit -m'
alias gac='git add . && git commit -m'
alias gl='git log'
alias gs='git status'

# pytest show stdout
alias pyt='clear && pytest -rP'

# run main
alias main='clear && python3 main.py'

## .bin directory on path
export PATH="~/.bin:$PATH"

## virtualenv directory added to pay
# export PATH="/home/james/.local/bin/virtualenv:$PATH"
export PATH="/home/james/.local/bin:$PATH"
# export PYTHONPATH="/home/james/.local/bin/virtualenv:$PATH"

## virtualenvwrapper
# export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/pyp
# source /home/james/.local/bin/virtualenvwrapper.sh

# Setting ripgrep as the default source for fzf
alias rg="rg -g '!{**/migrations/*,**/.git/*}' --hidden --follow"
export FZF_DEFAULT_COMMAND='rg --files'


export PATH="$PATH:/opt/nvim-linux64/bin"

 
source ~/.bashrc_local

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion