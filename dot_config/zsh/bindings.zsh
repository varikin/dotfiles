# Core Keys and Modes

# The $terminfo key data is only correct when zle (Zsh Line Editor) is in
# application mode which isn't the default. So we set to application mode when
# zle is ready to read a new line and disable it when zle has finished reading
# a line. We don't want to stay in application mode when executing a command
# because not all commands work well in that mode.
#
# See https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html


# zle-line-init is called when zsh starts to read a new line
function zle-line-init() {
    if (( ${+terminfo[smkx]} )); then
        echoti smkx
    fi
}
zle -N zle-line-init

# zle-line-finish is called when zsh finishes reading a line
function zle-line-finish() {
    if (( ${+terminfo[rmkx]} )); then
        echoti rmkx
    fi
}
zle -N zle-line-finish

# Define a more user friendly keymap
typeset -g -A keys
keys=(
    backspace  "${terminfo[kbs]}"
    home       "${terminfo[khome]}"
    end        "${terminfo[kend]}"
    insert     "${terminfo[kich1]}"
    delete     "${terminfo[kdch1]}"
    up         "${terminfo[kcuu1]}"
    down       "${terminfo[kcud1]}"
    left       "${terminfo[kcub1]}"
    right      "${terminfo[kcuf1]}"
    pageup     "${terminfo[kpp]}"
    pagedown   "${terminfo[knp]}"
)


# Bindings

# Up & Down arrows to navigate history
autoload -Uz up-line-or-beginning-search
zle -N up-line-or-beginning-search
bindkey "${keys[up]}" up-line-or-beginning-search

autoload -Uz down-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "${keys[down]}" down-line-or-beginning-search

# Home & End of line
bindkey "${keys[home]}" beginning-of-line
bindkey "${keys[end]}" end-of-line

