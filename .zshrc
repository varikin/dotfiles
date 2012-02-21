# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

export ZSH_THEME="cloud"

plugins=(git svn osx pip brew textmate ruby rvm rails3)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Virtualenv
[[ -d $HOME/.venvs ]] && export WORKON_HOME=$HOME/.venvs 
[[ -s /usr/local/bin/virtualenvwrapper.sh ]] && source /usr/local/bin/virtualenvwrapper.sh

# RVM
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm 

## Command Aliases
alias pyc="find . -name '*.pyc' -print0 | xargs -0 rm"
alias zrc='vim ~/.zshrc'

goto () {
    if [[ $# == 0 ]]; then
        print usage: goto dir
        return
    fi

    if [ -d ~/code/$1 ]; then
        cd ~/code/$1
        if [ -d $WORKON_HOME/$1 ]; then
            workon $1
        fi
        if [ -f env ]; then
            source env
        fi
    else
        print \'$1\' doesn\'t exist
    fi
}
