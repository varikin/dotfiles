# Path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/local/opt/ruby/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/npm/bin:$HOME/.adt/sdk/tools:/$HOME/.adt/sdk/platform-tools

export EDITOR=/usr/local/bin/vim

# Oh-My-Zsh config
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="miloshadzic"
plugins=(ant extract gitfast pip brew gem django history-substring-search)
source $ZSH/oh-my-zsh.sh

# Git
alias gcd="git checkout develop"
alias gl="git pull -p"

# Python
_VENVW="/usr/local/bin/virtualenvwrapper.sh"
_VENVS="$HOME/.virtualenvs"
[[ -d $_VENVS ]] && [[ -s $_VENVW ]] && export WORKON_HOME=$_VENVS && source $_VENVW
alias pyc="find . -name '*.pyc' -print0 | xargs -0 rm"

# Java
export ANT_OPTS="-Xmx1g"

# Command Aliases
alias zrc='vim ~/.zshrc'
alias hosts='sudo vim /etc/hosts'

# Z
. `brew --prefix`/etc/profile.d/z.sh

# Disable the god damn auto correct. Yes, I did mean core, not code!
unsetopt correct_all

# Move word via alt-< and alt->
bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word

