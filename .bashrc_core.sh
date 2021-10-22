
# -------------------------------------
# configuration
# -------------------------------------

# ripgrep as the default source for fzf
export FZF_DEFAULT_COMMAND='rg --files'

## virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/pyp
source /home/james/.local/bin/virtualenvwrapper.sh

# -------------------------------------
# shortcuts
# -------------------------------------

## restart of apache
alias apres='sudo systemctl restart apache2'

# launch tmux
alias t='tmux'

# source of bashrc
alias so='source .bashrc'

# run python
alias py='python3'

# change into python virtualenvs
alias wo='workon'
alias de='deactivate'

# django shortcuts
alias pym='python3 manage.py'
alias sv='python3 manage.py runserver 0.0.0.0:8000'
alias to='touch ./config/wsgi.py'

# edit cp
alias cpv='cd /home/james/cp && vim'

# run cp server
alias cps='cd /home/james/cp && workon cp && sv'
