# Path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/local/share/python:/usr/local/go/bin:$HOME/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="miloshadzic"
plugins=(ant colorize extract git osx pip brew rvm ruby gem django history-substring-search)
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

alias sassy='cd ~/code/core/web;sass --update base/console/sass:base/console/'

# Z
. `brew --prefix`/etc/profile.d/z.sh

# Disable the god damn auto correct. Yes, I did mean core, not code!
unsetopt correct_all

# Move word via alt-< and alt->
bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word

export EDITOR=/usr/local/bin/vim
