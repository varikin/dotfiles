export EDITOR=/usr/local/bin/nvim
export GOPATH=$HOME/code/go
export PATH=$GOPATH/bin:/usr/local/sbin:$PATH

export GROOVY_HOME=/usr/local/opt/groovy/libexec
export GRADLE_HOME=/usr/local/opt/gradle/libexec

# Python
if [[ -f /usr/local/bin/virtualenvwrapper.sh ]]; then
	export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
	source /usr/local/bin/virtualenvwrapper.sh
fi

# Node/NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

