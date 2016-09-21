export ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="agnoster"

# Plugins
plugins=(git osx postgres rbenv z)
source $ZSH/oh-my-zsh.sh

# Aliases
alias rk='bundle exec rake'
alias rs='bundle exec rails s -b 0.0.0.0'
