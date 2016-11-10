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
plugins=(brew git node osx postgres rbenv thefuck z zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Non-Oh My Zsh-Plugins
path+=("$HOME/.yarn/bin")
path+=("$HOME/.themekit")
path+=("$(yarn global bin)")
export PATH

# Aliases
alias gc='git checkout'
alias gs='git status'
alias oops='fuck'
alias rc='bundle exec rails c'
alias rk='bundle exec rake'
alias rg='bundle exec rails g migration'
alias rs='bundle exec rails s -b 0.0.0.0'
alias v='vim'
alias \.='ofd'
alias w='webpack'
alias ws='webpack-dev-server'
alias y='yarn'
