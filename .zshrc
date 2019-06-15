export ZSH=$HOME/.oh-my-zsh
export GOPATH=$HOME/go
export GO111MODULE=on

# Default User
DEFAULT_USER=$USER

# Theme
BULLETTRAIN_PROMPT_ORDER=(
  status
  dir
  nvm
  git
)
BULLETTRAIN_DIR_BG=red
BULLETTRAIN_DIR_FG=black
BULLETTRAIN_GIT_BG=green
BULLETTRAIN_GIT_COLORIZE_DIRTY=true
BULLETTRAIN_GIT_EXTENDED=false
BULLETTRAIN_GIT_FG=black
BULLETTRAIN_NVM_BG=black
BULLETTRAIN_NVM_FG=green
BULLETTRAIN_NVM_SHOW=true
#BULLETTRAIN_PROMPT_CHAR="➼"
BULLETTRAIN_PROMPT_CHAR=""
BULLETTRAIN_PROMPT_SEPARATE_LINE=false
ZSH_THEME="bullet-train"

# Plugins
plugins=(aws brew git golang ruby node yarn z zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Aliases
alias gf='git fetch'
alias gl='git pull --rebase'
alias gpf='git push --force --force-with-lease'
alias grc='git rebase --continue'
alias grm='git rebase -i origin/master'
alias gs='git status'

# nodenv
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi
path+=(~/.nodenv/bin)
