
shopt -s expand_aliases

# some aliases
alias dots="cd ~/.dotfiles && vim ."

# directory listing, group directories first
alias ll='clear && ls -alF --group-directories-first'

# clear the screen
alias c='clear'

# quick launch tmux
alias t='tmux'

# quick source bashrc
alias so='source ~/.bashrc'

# git aliases
alias g='git'
alias ga='git add'
alias gs='git status'
alias gb='git branch'
alias gc='git commit'
alias go='git checkout'
__git_complete go _git_checkout
alias gl='git log --oneline'
alias lg='lazygit'

# web server management
alias ss='sudo systemctl'
alias ssr='sudo systemctl restart'
alias sss='sudo systemctl status'
alias ng='cd /etc/nginx && vim'
alias sys='cd /etc/systemd/system && vim'

# virtual env access
alias act='source ./venv/bin/activate'
alias de='deactivate'

# get data
alias get-data='scp james@minhome.app:~/.backups/cla_daily.sql ~'

# run python
alias py='python3'

# django shortcuts
alias pym='python3 manage.py'
alias sv='python3 manage.py runserver 0.0.0.0:8000'
alias gun='gunicorn --config ./gunicorn_cl.conf.py config.wsgi'
alias to='touch ./config/wsgi.py'

# pytest show stdout
alias pyt='clear && pytest -rP'
