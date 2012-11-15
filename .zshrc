# Path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/local/share/python:$HOME/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="cloud"
plugins=(git osx pip brew rvm ruby rails3 gem rake django goto)
source $ZSH/oh-my-zsh.sh

# Virtualenv
[[ -d $HOME/.venvs ]] && export WORKON_HOME=$HOME/.venvs 
[[ -s /usr/local/share/python/virtualenvwrapper.sh ]] && source /usr/local/share/python/virtualenvwrapper.sh

# RVM
_RVM=$HOME/.rvm/scripts/rvm
[[ -s $_RVM ]] && source $_RVM

# Command Aliases
alias pyc="find . -name '*.pyc' -print0 | xargs -0 rm"
alias zrc='vim ~/.zshrc'
alias hosts='sudo vim /etc/hosts'

sm_color_red="$(  tput setaf 1)"
sm_color_reset="$(tput sgr0   )"
exec 2>>( awk '{print "'"$sm_color_red"'"$0"'"$sm_color_reset"'"}' >&2 & )
