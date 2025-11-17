alias vim="nvim"
alias ls="eza"
alias kk="kubectl"

alias pip='noglob pip'
alias pip3='noglob pip3'

alias gst="git status"

alias gap="git add -p"
alias gb="git branch"
alias gbd="git branch -D"
alias gg="git branch -vv | rg ': gone\]'"
alias gc="git commit"
alias gca="git commit --amend"
alias gco="git checkout"
alias gd="git diff"
alias gf="git fetch --all --prune"
alias glg="git log --graph --pretty=format:'%Cgreen[%h]%Creset %C(white)%d%Creset %Cblue%ad by %an%Creset: %s' --date=relative"
alias gll="git log --pretty=format:'%Cgreen[%H]%Creset %C(white)%d%Creset %Cblue%ad by %an%Creset: %s' --date=relative"
alias gp="git pull"
alias gpsh="git push -u"
alias gs="git switch"
alias gsc="git switch -c"




alias grum="git pull --rebase upstream master"
alias grom="git pull --rebase origin main"
alias gros="git pull --rebase origin master"

alias pr="gh pr create --fill"
