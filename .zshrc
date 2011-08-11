# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

export ZSH_THEME="cloud"

plugins=(git svn osx pip brew textmate)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Virtualenv
export WORKON_HOME=$HOME/.venvs 
source /usr/local/bin/virtualenvwrapper.sh

## Command Aliases
alias pyc="find . -name '*.pyc' -print0 | xargs -0 rm"
alias x=exit
alias c=clear
alias zrc='vim ~/.zshrc'
alias e='smartextract'
alias o='open'

goto () {
    if [[ $# == 0 ]]; then
        print usage: goto dir
        return
    fi

    if [ -d ~/code/$1 ]; then
        cd ~/code/$1
        if [ -f env ]; then
            source env
        fi
    else
        print \'$1\' doesn\'t exist
    fi
}
