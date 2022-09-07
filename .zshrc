# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Bullet Train Settings (must come before ZSH_THEME)
prompt_emoji() {
  prompt_segment black white "🏄‍♂️ "
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

plugins=(git zsh-autosuggestions zsh-completions zsh-syntax-highlighting z)

source $ZSH/oh-my-zsh.sh

# fnm
eval "$(fnm env --use-on-cd)"

# Git
export GIT_TERMINAL_PROMPT=1

# pnpm
export PNPM_HOME="/Users/drew/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Aliases
alias code='code-insiders'
alias gcb='git checkout -b '
alias gcm='git checkout main'
alias gf='git fetch'
alias gl='git pull --rebase'
alias gpf='git push --force --force-with-lease'
alias gpo='git remote prune origin'
alias grc='git rebase --continue'
alias grh='git reset --hard HEAD'
alias grm='git rebase -i origin/main'
alias grs='git rebase --skip'
alias gs='git status'
