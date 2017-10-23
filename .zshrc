export ZSH=$HOME/.oh-my-zsh

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
plugins=(aws brew git node osx thefuck yarn z zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Non-Oh My Zsh-Plugins
path+=("$HOME/.themekit")
path+=("/usr/local/bin")
path+=("~/.nodenv/bin")
export PATH

# Aliases
alias gad='pbpaste | git apply -v'
alias gc='git checkout'
alias gci='git commit -v'
alias gl='git pull --rebase'
alias gpf='git push --force --force-with-lease'
alias gpl='git push --force --force-with-lease'
alias gr='git rebase'
alias grc='git rebase --continue'
alias grs='git rebase --skip'
alias gs='git status'
alias n='node'
alias rc='bundle exec rails c'
alias rg='bundle exec rails g migration'
alias rk='noglob bundle exec rake'
alias rs='bundle exec rails s -b 0.0.0.0'
alias v='vim'
alias \.='ofd'
alias y='yarn'

# Nodev & Rbenv (must be last)
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
