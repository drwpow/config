export ZSH=$HOME/.oh-my-zsh
export GOPATH=$HOME/go

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
plugins=(aws brew git node yarn z zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Non-Oh My Zsh-Plugins
path+=("/usr/local/bin")
path+=("~/.nodenv/bin")
export PATH

# Aliases
alias code='code-insiders'
alias du='docker-compose up -d'
alias gad='pbpaste | git apply -v'
alias gci='git commit -v'
alias gl='git pull --rebase'
alias gpf='git push --force --force-with-lease'
alias gpl='git push --force --force-with-lease'
alias gs='git status'

# Nodev
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi
