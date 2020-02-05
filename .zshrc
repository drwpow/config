# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

prompt_emoji() {
  prompt_segment black white "✨"
}
BULLETTRAIN_PROMPT_ORDER=(emoji status dir nvm git)
BULLETTRAIN_PROMPT_ADD_NEWLINE=false
BULLETTRAIN_PROMPT_SEPARATE_LINE=false
BULLETTRAIN_PROMPT_CHAR=""
BULLETTRAIN_DIR_BG=magenta
BULLETTRAIN_DIR_FG=black
BULLETTRAIN_GIT_BG=green
BULLETTRAIN_GIT_COLORIZE_DIRTY=true
BULLETTRAIN_GIT_EXTENDED=false
BULLETTRAIN_GIT_FG=black
BULLETTRAIN_NVM_BG=black
BULLETTRAIN_NVM_FG=green
BULLETTRAIN_NVM_SHOW=true

ZSH_THEME="bullet-train"

# Plugins
plugins=(git node z zsh-autosuggestions zsh-completions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Default User
DEFAULT_USER=$USER

# nodenv
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi
path+=(~/.nodenv/bin)

# Git
export GIT_TERMINAL_PROMPT=1

# Go
export GOPATH=$HOME/Sites/go
export PATH=$PATH:$GOPATH/bin

# Aliases
alias gcb='git checkout -b '
alias gcm='git checkout master'
alias gf='git fetch'
alias gl='git pull --rebase'
alias gpf='git push --force --force-with-lease'
alias grc='git rebase --continue'
alias grh='git reset --hard HEAD'
alias grm='git rebase -i origin/master'
alias grs='git rebase --skip'
alias gs='git status'
