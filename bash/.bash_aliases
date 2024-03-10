

# some aliases
alias dots="cd ~/.dotfiles && vim ."

# webserver management
alias ss='sudo systemctl'
alias ssr='sudo systemctl restart'
alias ng='cd /etc/nginx && vim'

# quick access to notes
alias w='cd ~/w/notes && vim notes.ol.md'
alias bk='cd ~/w/bk && vim'

# quick access to work on projects
alias cla='cd && cd ~/cla && source ~/.venvs/cla/bin/activate'
alias chf='cd && cd ~/chf && source ~/.venvs/chf/bin/activate'
alias mh='cd && cd ~/mh && source ~/.venvs/mh/bin/activate'
alias jo='cd && cd ~/jo && source ~/.venvs/jo/bin/activate'
alias mp='cd && cd ~/mp && source ~/.venvs/mp/bin/activate'

# quick launch tmux
# alias tmux="TERM=screen-256color-bce tmux"
alias t='tmux'

# quick source bashrc
alias so='source ~/.bashrc'

# run python
alias py='python3'

# deploy a site
alias deploy='ssh james@minhome.app python3 deploy.py'

# django shortcuts
alias pym='python3 manage.py'
alias sv='python3 manage.py runserver 0.0.0.0:8000'
alias gun='gunicorn --config ./gunicorn_cl.conf.py config.wsgi'
alias to='touch ./config/wsgi.py'

# git aliases
alias g='git'

# pytest show stdout
alias pyt='clear && pytest -rP'
