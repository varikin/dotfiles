function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '👾 ' && return
    echo '🚀 '
}

function parse_git_branch() {
  (git symbolic-ref -q HEAD || git name-rev --name-only --no-undefined --always HEAD) 2> /dev/null
}

GIT_PROMPT_SYMBOL="%{$fg[blue]%}±"
GIT_PROMPT_PREFIX="%{$fg[green]%} [%{$reset_color%}"
GIT_PROMPT_SUFFIX="%{$fg[green]%}]%{$reset_color%}"
GIT_PROMPT_AHEAD="%{$fg[red]%}ANUM%{$reset_color%}"
GIT_PROMPT_BEHIND="%{$fg[cyan]%}BNUM%{$reset_color%}"
GIT_PROMPT_MERGING="%{$fg_bold[magenta]%}⚡︎%{$reset_color%}"
GIT_PROMPT_UNTRACKED="%{$fg_bold[red]%}u%{$reset_color%}"
GIT_PROMPT_MODIFIED="%{$fg_bold[yellow]%}d%{$reset_color%}"
GIT_PROMPT_STAGED="%{$fg_bold[green]%}s%{$reset_color%}"


# Show different symbols as appropriate for various Git repository states
function parse_git_state() {
 
  # Compose this value via multiple conditional appends.
  local GIT_STATE=""
 
  local GIT_DIR="$(git rev-parse --git-dir 2> /dev/null)"
  if [ -n $GIT_DIR ] && test -r $GIT_DIR/MERGE_HEAD; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_MERGING
  fi
 
  if [[ -n $GIT_STATE ]]; then
    echo "$GIT_PROMPT_PREFIX$GIT_STATE$GIT_PROMPT_SUFFIX"
  fi
}

# If inside a Git repository, print its branch and state
function git_prompt_string() {
  local git_where="$(parse_git_branch)"
  [ -n "$git_where" ] && echo "%{$fg[green]%}[${git_where#(refs/heads/|tags/)}$(parse_git_state)]"
}

function current_pwd {
  echo $(pwd | sed -e "s,^$HOME,~,")
}

# Enable colors in prompt
autoload -U colors && colors

PROMPT='${PR_BOLD_CYAN}$(current_pwd)%{$reset_color%}$(git_prompt_string)%{$reset_color%} $(prompt_char) '

# Auto-correct prompt, disabled
#export SPROMPT="Correct $fg[red]%R$reset_color to $fg[green]%r$reset_color [(y)es (n)o (a)bort (e)dit]? "
unsetopt correct
unsetopt correct_all
