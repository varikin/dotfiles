# -----------------------------------------------
# zsh dummy .zshrc
# -----------------------------------------------

# -----------------------------------------------
# Set up the Environment
# -----------------------------------------------

TERM=screen
EDITOR=vim
PAGER=less
RSYNC_RSH=/usr/bin/ssh
FIGNORE='.o:.out:~'
DISPLAY=:0.0
LS_COLORS='no=00:fi=00:di=00;36:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.bz2=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.sit=01;31:*.hqx=01;31:*.jpg=01;35:*.png=01;35:*.gif=01;35:*.bmp=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mpg=01;35:*.avi=01;35:*.mov=01;35:*.app=01;33:*.c=00;33:*.php=00;33:*.pl=00;33:*.cgi=00;33:'
COLORTERM=yes
PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin
HISTFILE=~/.zshhistory
HISTSIZE=3000
SAVEHIST=3000

export TERM EDITOR PAGER RSYNC_RSH CVSROOT FIGNORE DISPLAY LS_COLORS NNTPSERVER COLORTERM PATH HISTFILE HISTSIZE SAVEHIST

# Virtualevn setup
export WORKON_HOME=$HOME/.venvs
source /usr/local/bin/virtualenvwrapper.sh

#Postgres
alias pg_ctl='pg_ctl -D /usr/local/var/postgres -l /usr/local/log/postgres.log'

# -----------------------------------------------
# Load custom zsh functions
# -----------------------------------------------
fpath=($fpath $HOME/.zsh/func)
typeset -U fpath

# -----------------------------------------------
# Load zsh modules
# -----------------------------------------------

# compinit initializes various advanced completions for zsh
autoload -U compinit && compinit 
# zmv is a batch file rename tool; e.g. zmv '(*).text' '$1.txt'
autoload zmv
# prompt themes
autoload -U promptinit

# -----------------------------------------------
# Set the prompt theme
# -----------------------------------------------
setopt PROMPT_SUBST 
promptinit
prompt adam2

# -----------------------------------------------
# Set up zsh autocompletions
# -----------------------------------------------

# case-insensitive tab completion for filenames (useful on Mac OS X)
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# General completion technique
zstyle ':completion:*' completer _complete _correct _approximate _prefix
zstyle ':completion:*' completer _complete _prefix
zstyle ':completion::prefix-1:*' completer _complete
zstyle ':completion:incremental:*' completer _complete _correct
zstyle ':completion:predict:*' completer _complete

# Completion caching
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path ~/.zsh/cache/$HOST

# Expand partial paths
zstyle ':completion:*' expand 'yes'
zstyle ':completion:*' squeeze-slashes 'yes'

# Don't complete backup files as executables
zstyle ':completion:*:complete:-command-::commands' ignored-patterns '*\~'

# Separate matches into groups
zstyle ':completion:*:matches' group 'yes'

# Describe each match group.
zstyle ':completion:*:descriptions' format "%B---- %d%b"

# Messages/warnings format
zstyle ':completion:*:messages' format '%B%U---- %d%u%b' 
zstyle ':completion:*:warnings' format '%B%U---- no match for: %d%u%b'
 
# Describe options in full
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'

zstyle ':completion:*:history-words' stop yes
zstyle ':completion:*:history-words' remove-all-dups yes
zstyle ':completion:*:history-words' list false
zstyle ':completion:*:history-words' menu yes

bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

# -----------------------------------------------
# Set up completion for hostnames
# -----------------------------------------------

if [[ "$ZSH_VERSION_TYPE" == 'new' ]]; then
  : ${(A)_etc_hosts:=${(s: :)${(ps:\t:)${${(f)~~"$(</etc/hosts)"}%%\#*}##[:blank:]#[^[:blank:]]#}}}
else
  # Older versions don't like the above cruft
  _etc_hosts=()
fi

hosts=(
	"$_etc_hosts[@]"
	localhost
	#Add favourite hosts here, and zsh will autocomplete them
)

zstyle ':completion:*' hosts $hosts

# -----------------------------------------------
# Set zsh options
# -----------------------------------------------

setopt \
	no_beep \
	correct \
	auto_list \
	complete_in_word \
	auto_pushd \
	complete_aliases \
	extended_glob \
	zle

# -----------------------------------------------
# Shell Aliases
# -----------------------------------------------

# Use MacVim if possible
if [[ -f /Applications/MacVim.app/Contents/MacOS/Vim ]]; then
    alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
fi

## Command Aliases
alias ls='ls -G'
alias pyc="find . -name '*.pyc' -print0 | xargs -0 rm"
alias x=exit
alias c=clear
alias vi='vim'
alias zrc='vim ~/.zshrc'
alias e='smartextract'
alias o='open'

## Pipe Aliases (Global)
alias -g L='|less'
alias -g G='|grep'
alias -g T='|tail'
alias -g H='|head'
alias -g W='|wc -l'
alias -g S='|sort'
alias -g A="|awk '{print $1}'"

## Shell Aliases

## Special Root Aliases
[ $UID = 0 ] && \
	alias m='make' && \
	alias mi='make install' && \
	alias rm='rm -i' && \
	alias mv='mv -i' && \
	alias cp='cp -i'

# -----------------------------------------------
#  User-defined Functions
# -----------------------------------------------

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

# Usage: smartextract <file>
# Description: extracts archived files / mounts disk images
# Note: .dmg/hdiutil is Mac OS X-specific.
smartextract () {
    if [ -f $1 ]; then
        case $1 in
            *.tar.bz2)  tar -jxvf $1        ;;
            *.tar.gz)   tar -zxvf $1        ;;
            *.bz2)      bunzip2 $1          ;;
            *.dmg)      hdiutil mount $1    ;;
            *.gz)       gunzip $1           ;;
            *.tar)      tar -xvf $1         ;;
            *.tbz2)     tar -jxvf $1        ;;
            *.tgz)      tar -zxvf $1        ;;
            *.zip)      unzip $1            ;;
            *.Z)        uncompress $1       ;;
            *)          echo "'$1' cannot be extracted/mounted via smartextract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}


export CLICOLOR=1
export LSCOLORS=CxFxExDxBxegedabagacad

# -----------------------------------------------
#  END
# -----------------------------------------------
