# Path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="cloud"
plugins=(git osx pip brew rvm ruby rails3 gem rake django)
source $ZSH/oh-my-zsh.sh

# Virtualenv
[[ -d $HOME/.venvs ]] && export WORKON_HOME=$HOME/.venvs 
[[ -s /usr/local/bin/virtualenvwrapper.sh ]] && source /usr/local/bin/virtualenvwrapper.sh

# RVM
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm 

# Command Aliases
alias pyc="find . -name '*.pyc' -print0 | xargs -0 rm"
alias zrc='vim ~/.zshrc'


# My handy dandy goto function
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
