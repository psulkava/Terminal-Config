. /Users/psulkava/Library/Python/3.8/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh

autoload -Uz compinit && compinit

export NODE_EXTRA_CA_CERTS=/etc/ssl/certs/MITRE-chain.pem
export NVM_DIR=~/.nvm
[ -s "$(brew --prefix nvm)/nvm.sh" ] && . "$(brew --prefix nvm)/nvm.sh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"


# Aliases
alias vim="nvim"
alias rsync="rsync -avzC"
alias shipit="~/Scripts/shipit.sh"
alias runit="~/Scripts/runit.sh"
alias cat="bat"
alias ls="exa --git"
alias gst="git status"
alias grp="grep -r"
alias docker="podman"

if type brew &>/dev/null; then
     FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

     autoload -Uz compinit
     compinit
fi
