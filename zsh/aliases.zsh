alias cello='say -v cellos "dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum dum"'

alias ll='ls -la'

alias ga='git add'
alias gap='git add -p'
alias gp='git push'
alias gl='git log'
alias gst='git status'
alias gd='git diff'
alias gb='git branch'
alias gco='git checkout'
alias gcm='git checkout master'
alias gpu='git pull -p'
alias gm='git commit'

# This worked when using Jira. Not using jira anymore...
alias jbr='python ~/Dropbox/jira_to_branch.py'

# Docker for Mac!
alias de='eval $(docker-machine env)'

# Spinnaker
alias spin='DOCKER_IP=`docker-machine ip default` docker-compose'
alias spindev='DOCKER_IP=`docker-machine ip default` docker-compose -f docker-compose.yml -f docker-compose.override.yml -f docker-compose.dev.yml'
alias spinremote='DOCKER_IP=`docker-machine ip spinnakerremote` docker-compose -f docker-compose.yml -f docker-compose.remote.yml'
alias spincache='GRADLE_USER_HOME=cache ./gradlew compileGroovy clean -x test --refresh-dependencies'
