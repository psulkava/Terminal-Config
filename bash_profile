#!/bin/bash

export PATH="/usr/local/bin:$HOME/Library/Python/2.7/bin:$PATH"
export JAVA_HOME=`/usr/libexec/java_home`

export CURL_CA_BUNDLE=/usr/local/etc/openssl/certs/cacert.pem
export CLICOLOR=1
export LSCOLORS=exfxfeaeBxxehehbadacea

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
if [ -f /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
    source /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
fi

source ~/.bash_aliases

if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
export HOMEBREW_GITHUB_API_TOKEN=

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

source /usr/local/ibmcloud/autocomplete/bash_autocomplete
export PATH="/usr/local/opt/node@12/bin:$PATH"
export PATH="/usr/local/opt/influxdb@1/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="/usr/local/opt/openssl@1.0/bin:$PATH"
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
export PATH="/usr/local/opt/mongodb-community@4.2/bin:$PATH"
