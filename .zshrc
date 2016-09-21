export ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="agnoster"

# Plugins
plugins=(brew git node osx postgres rbenv z)
source $ZSH/oh-my-zsh.sh
source $ZSH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases
alias gc='git checkout'
alias gs='git status'
alias rk='rake'
alias rs='rails s -b 0.0.0.0'
alias vi='vim'
