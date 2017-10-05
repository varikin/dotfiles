source ~/.zsh/checks.zsh
source ~/.zsh/colors.zsh
source ~/.zsh/setopt.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/history.zsh
#source ~/.zsh/history/zsh-history-substring-search.zsh
source ~/.zsh/bifrost.zsh
source ~/.zsh/proxy.zsh


# Todo
# * Better history


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/z00261j/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/z00261j/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/z00261j/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/z00261j/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export DRONE_SERVER=https://drone5.target.com

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
