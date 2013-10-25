[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="/usr/local/bin:/usr/local/share/python:/usr/local/Cellar/imagemagick/6.8.0-10/bin:$PATH"

export LC_CTYPE=ru_RU.UTF-8

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export GEM_HOME="$(brew --prefix)/Cellar/gems/1.9.1"

# Setup virtualenvwrapper and use pip with it
export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUALENV_BASE=$WORKON_HOME
source /usr/local/share/python/virtualenvwrapper.sh

export PYTHONSTARTUP=~/.dotfiles/pythonrc

source ~/.dotfiles/git-completion.sh
PS1='[\u@\h \W]\$ '

alias brdiff='git log --format=format:"%Cblue%h%Creset %Cgreen%an%Creset %s" --no-merges --reverse'
alias gl='git log --format="%Cblue%h %Creset%ci %Cred%s" --no-merges'
alias cdd='cd $(python -c "import django, os.path; print os.path.dirname(django.__file__)")'
alias pyclean="find . -type f -name '*.py[co]' -delete"
alias swpclean="find . -type f -name '*.swp' -delete"
alias vd='vim $(git diff --name-only | sort -u)'
alias vnow='vim `date "+%Y%m%d_%H%M"`'
alias ll='ls -alF'
alias la='ls -A'
