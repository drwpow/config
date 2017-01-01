export ZSH=$HOME/.oh-my-zsh

# Theme
BULLETTRAIN_PROMPT_ORDER=(
  status
  context
  dir
  nvm
  custom
  virtualenv
  go
  git
  hg
  cmd_exec_time
)
BULLETTRAIN_DIR_BG=cyan
BULLETTRAIN_DIR_FG=black
BULLETTRAIN_GIT_BG=green
BULLETTRAIN_GIT_COLORIZE_DIRTY=true
BULLETTRAIN_GIT_EXTENDED=false
BULLETTRAIN_GIT_FG=black
BULLETTRAIN_NVM_BG=black
BULLETTRAIN_NVM_FG=green
BULLETTRAIN_NVM_SHOW=true
BULLETTRAIN_PROMPT_CHAR="➼"
#BULLETTRAIN_PROMPT_SEPARATE_LINE=false
ZSH_THEME="bullet-train"

# Plugins
plugins=(brew git node osx thefuck yarn z zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Non-Oh My Zsh-Plugins
path+=("$HOME/.themekit")
path+=("/usr/local/bin")
path+=("~/.nodenv/bin")
export PATH

# Aliases
alias gc='git checkout'
alias gs='git status'
alias oops='fuck'
alias rc='bundle exec rails c'
alias rk='noglob bundle exec rake'
alias rg='bundle exec rails g migration'
alias rs='bundle exec rails s -b 0.0.0.0'
alias v='vim'
alias \.='ofd'
alias w='webpack'
alias ws='webpack-dev-server'
alias y='yarn'

# Nodev & Rbenv (must be last)
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
