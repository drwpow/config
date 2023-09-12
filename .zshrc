# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Bullet Train Settings (must come before ZSH_THEME)
prompt_emoji() {
  prompt_segment black white "𝖕"
}
BULLETTRAIN_PROMPT_ORDER=(emoji dir nvm git cmd_exec_time)
BULLETTRAIN_PROMPT_ADD_NEWLINE=false
BULLETTRAIN_PROMPT_SEPARATE_LINE=false
BULLETTRAIN_PROMPT_CHAR=""
BULLETTRAIN_EXEC_TIME_BG=239
BULLETTRAIN_EXEC_TIME_FG=black
BULLETTRAIN_EXEC_TIME_ELAPSED=0
BULLETTRAIN_DIR_BG=57
BULLETTRAIN_DIR_FG=black
BULLETTRAIN_GIT_BG=41
BULLETTRAIN_GIT_FG=236
BULLETTRAIN_GIT_CLEAN=""
BULLETTRAIN_GIT_DIRTY=" ⚠︎"
BULLETTRAIN_GIT_COLORIZE_DIRTY=true
BULLETTRAIN_GIT_COLORIZE_DIRTY_BG_COLOR=214
BULLETTRAIN_GIT_EXTENDED=false
BULLETTRAIN_NVM_BG=black
BULLETTRAIN_NVM_FG=41
BULLETTRAIN_NVM_SHOW=true

ZSH_THEME="bullet-train"

plugins=(git zsh-autosuggestions zsh-completions zsh-syntax-highlighting node z)

source $ZSH/oh-my-zsh.sh

# fnm
eval "$(fnm env --use-on-cd)"

# Git
export GIT_TERMINAL_PROMPT=1

# Go
export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH="/Users/drew/go"

# pnpm
export PNPM_HOME="/Users/drew/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# bun
[ -s "/Users/drew/.bun/_bun" ] && source "/Users/drew/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

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
