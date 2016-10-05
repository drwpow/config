export ZSH=$HOME/.oh-my-zsh

# Theme
BULLETTRAIN_PROMPT_ORDER=(
  status
  custom
  context
  dir
  perl
  ruby
  virtualenv
  nvm
  go
  git
  hg
  cmd_exec_time
)
BULLETTRAIN_DIR_BG=black
BULLETTRAIN_DIR_FG=cyan
BULLETTRAIN_GIT_BG=green
BULLETTRAIN_GIT_COLORIZE_DIRTY=true
BULLETTRAIN_GIT_EXTENDED=false
BULLETTRAIN_GIT_FG=white
BULLETTRAIN_PROMPT_CHAR=false
BULLETTRAIN_PROMPT_SEPARATE_LINE=false
ZSH_THEME="bullet-train"

# Plugins
plugins=(brew git node osx postgres rbenv z zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Aliases
alias gc='git checkout'
alias gs='git status'
alias rc='bundle exec rails c'
alias rk='bundle exec rake'
alias rs='bundle exec rails s -b 0.0.0.0'
alias vi='vim'
alias \.='ofd'
