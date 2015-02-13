export PATH=/usr/local/sbin:$PATH

# ----------------------------------------------------
#   Autojump
# ----------------------------------------------------

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# ----------------------------------------------------
#   Base64
# ----------------------------------------------------

base64() {
  if(openssl base64 -A -in $1 -out "$1.b64"); then
    echo "Successfully saved $1.b64"
  fi
}

# ----------------------------------------------------
#   Git
# ----------------------------------------------------

alias gs='git status'

# ----------------------------------------------------
#   MIME
# ----------------------------------------------------

alias mime='file --mime-type -b'

# ----------------------------------------------------
#   Powder
# ----------------------------------------------------

# ----- Aliases ----- #

pow() {
  if [ $1 == 'restart' ]; then
    if [ ! -f tmp/restart.txt ]; then
      echo '' > tmp/restart.txt
    fi;
    touch tmp/restart.txt
  fi;
}

# ----------------------------------------------------
#   Prompt
# ----------------------------------------------------

prompt_git() {
  local s='';
  local branchName='';

  if [ $(git rev-parse --is-inside-work-tree &>/dev/null; echo "${?}") == '0' ]; then
    if [ "$(git rev-parse --is-inside-git-dir 2> /dev/null)" == 'false' ]; then
      git update-index --really-refresh -q &>/dev/null;
      if ! $(git diff --quiet --ignore-submodules --cached); then
        s+='+';
      fi;
      if ! $(git diff-files --quiet --ignore-submodules --); then
        s+='!';
      fi;
      if [ -n "$(git ls-files --others --exclude-standard)" ]; then
        s+='?';
      fi;
      if $(git rev-parse --verify refs/stash &>/dev/null); then
        s+='$';
      fi;

    fi;

    branchName="$(git symbolic-ref --quiet --short HEAD 2> /dev/null || \
      git rev-parse --short HEAD 2> /dev/null || \
      echo '(unknown)')";

    [ -n "${s}" ] && s=" [${s}]";

    echo -e "${1}[${branchName}]${blue}${s}";
  else
    return;
  fi;
}

if tput setaf 1 &> /dev/null; then
  tput sgr0; # reset colors
  bold=$(tput bold);
  reset=$(tput sgr0);
  # Solarized colors, taken from http://git.io/solarized-colors.
  black=$(tput setaf 0);
  blue=$(tput setaf 33);
  cyan=$(tput setaf 37);
  green=$(tput setaf 64);
  orange=$(tput setaf 166);
  purple=$(tput setaf 125);
  red=$(tput setaf 124);
  violet=$(tput setaf 61);
  white=$(tput setaf 15);
  yellow=$(tput setaf 136);
else
  bold='';
  reset="\e[0m";
  black="\e[1;30m";
  blue="\e[1;34m";
  cyan="\e[1;36m";
  green="\e[1;32m";
  orange="\e[1;33m";
  purple="\e[1;35m";
  red="\e[1;31m";
  violet="\e[1;35m";
  white="\e[1;37m";
  yellow="\e[1;33m";
fi;

# Highlight the user name when logged in as root.
if [[ "${USER}" == "root" ]]; then
  userStyle="${red}";
else
  userStyle="${orange}";
fi;

# Highlight the hostname when connected via SSH.
if [[ "${SSH_TTY}" ]]; then
  hostStyle="${bold}${red}";
else
  hostStyle="${yellow}";
fi;

# Set the terminal title to the current working directory.
PS1="\[${orange}\]\w"; # working directory
PS1+="\$(prompt_git \" ${green}\")"; # Git repository details
PS1+="\n";
PS1+="\[${white}\]☞ \[${reset}\]"; # `$` (and reset color)
export PS1;

PS2="\[${yellow}\]→ \[${reset}\]";
export PS2;

# ----------------------------------------------------
#   Rbenv
# ----------------------------------------------------

eval "$(rbenv init -)"

# ----------------------------------------------------
#   Ruby
# ----------------------------------------------------

alias be='bundle exec'
alias bms='bundle exec middleman s'
alias br='bundle exec rake'
alias brs='bundle exec rails s'
