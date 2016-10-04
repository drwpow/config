export ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="powers"

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
