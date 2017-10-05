export GOPATH=$HOME/code/go

# Currently this path is appended to dynamically when picking a ruby version
# zshenv has already started PATH with rbenv so append only here
export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/usr/local/share/npm/bin:$GOPATH/bin

# Setup terminal, and turn on colors
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

export LESS='--ignore-case --raw-control-chars'
export PAGER='less'
export EDITOR='vim'

# Virtual Environment Stuff
if [[ -f /usr/local/bin/virtualenvwrapper.sh ]]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source /usr/local/bin/virtualenvwrapper.sh
fi

if [[ -f $(brew --prefix nvm)/nvm.sh ]]; then
    export NVM_DIR=$HOME/.nvm
    source $(brew --prefix nvm)/nvm.sh
fi

export GROOVY_HOME=/usr/local/opt/groovy/libexec

