# omz
ZSH_THEME=agnoster
export ZSH="$HOME/.oh-my-zsh"
zstyle ':omz:update' mode auto
plugins=(command-execution-timer git node z brew fast-syntax-highlighting z)
source $ZSH/oh-my-zsh.sh
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)𝖕"
  fi
}

# aws/gcloud
export PATH="$HOME/.local/bin:$PATH"

# Aliases
alias gca='git commit --amend'
alias gg='git status'
alias gf='git fetch'
alias gl='git pull --rebase'
alias gpf='git push --force --force-with-lease'
alias grc='git rebase --continue'
alias grh='git reset --hard HEAD'
alias grm='git rebase -i origin/main'
alias grs='git rebase --skip'
alias gs='git switch'
alias gsm='git switch main'
alias howlong='echo $COMMAND_EXECUTION_TIMER_DURATION_SECONDS'
alias howslow='echo $COMMAND_EXECUTION_TIMER_DURATION_SECONDS'
