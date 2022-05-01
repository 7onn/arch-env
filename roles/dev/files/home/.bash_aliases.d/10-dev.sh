# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'

  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

# Some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Starts a local HTTP server using Python in working dir
alias httpserver='python -m http.server'

# Usage: cat file.json | asjson
alias json_pp='python -mjson.tool'

alias k='kubectl'

alias kbr='setxkbmap -model abnt2 -layout br -variant abnt2 -option ctrl:nocaps'
alias kus='setxkbmap -layout us -option ctrl:nocaps'


myip(){
#  curl -s https://ipinfo.io/json | jq .ip | sed -e 's/\"//g' | pbcopy
  curl -s https://httpbin.org/ip | jq .origin | sed -e 's/\"//g' | pbcopy
}

# gcloud full authentication
alias glogin='gcloud auth login --update-adc --no-launch-browser --force'

# gcloud authenticated curl requests
alias gcurl='curl -H "Authorization: Bearer $(gcloud auth print-access-token)" -H "Content-Type: application/json"'

# Open manuals with Vim
alias man="man -P \"sh -c 'col -b | vim -c \\\"set ft=man nomod nolist\\\" -'\""

# Ensure Podman
alias docker='podman'

# Clean Git Branches
rmbranches(){
    git branch -D  $(git branch | grep -v "\(\*\|main\|master\)")
}

sshls(){
  for key in ~/.ssh/id_*; do ssh-keygen -l -f "${key}"; done | uniq
}

tameouvindo() {
  sudo lsof -iTCP -sTCP:LISTEN
}

onescreen() {
  bash -c '~/.screenlayout/1-screen.sh'
}

twoscreens() {
  bash -c '~/.screenlayout/2-screens.sh'
}

threescreens() {
  bash -c '~/.screenlayout/3-screens.sh'
}

gcproles() {
  gcloud iam roles list --filter "name~\"$1\"" --format 'table(name, description)'
}
