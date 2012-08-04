# My handy dandy goto function
# TODO use a 
function goto {
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

# Setup completion for goto
# List the available projects.
function _goto_directories {
    _directories () {
        # NOTE: DO NOT use ls here because colorized versions spew control characters
        #       into the output list.
        # echo seems a little faster than find, even with -depth 3.
        (cd ~/code; for f in *; do echo $f; done) 2>/dev/null | command \sed 's|^\./||' | command \sort | (unset GREP_OPTIONS; command \egrep -v '^\*$') 
    }
    reply=( $(_directories) )
}

compctl -K _goto_directories goto 
alias goto="nocorrect goto" # Like to incorrectly autocorrect :(
