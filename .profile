alias ls='ls -G'
alias pyc="find . -name '*.pyc' -print0 | xargs -0 rm"
alias web41="ssh varikin@web41.webfaction.com"

export EDITOR=vim
export MANPATH=/usr/local/git/man:$MANPATH
export PATH=$PATH:/usr/local/git/bin:/usr/local/mysql/bin
export PS1='\[\033[01;32m\]\u@\h \[\033[01;37m\]\W \$ \[\033[00m\]'
export WORKON_HOME=$HOME/code/venvs
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Getting rid of the impossible blue!
export LSCOLORS=fxfxcxdxbxhghdabagacad

source /usr/local/bin/virtualenvwrapper.sh
