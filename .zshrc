# Path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="cloud"
plugins=(git osx pip brew rvm ruby rails3 gem rake django goto)
source $ZSH/oh-my-zsh.sh

# Virtualenv
[[ -d $HOME/.venvs ]] && export WORKON_HOME=$HOME/.venvs 
[[ -s /usr/local/bin/virtualenvwrapper.sh ]] && source /usr/local/bin/virtualenvwrapper.sh

# RVM
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm 

# Command Aliases
alias pyc="find . -name '*.pyc' -print0 | xargs -0 rm"
alias zrc='vim ~/.zshrc'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
